/**
 *
 */
package com.thinkgem.javamg.modules.mact.mobile;


import com.thinkgem.javamg.common.utils.IdGen;
import com.thinkgem.javamg.common.web.BaseController;
import com.thinkgem.javamg.modules.mact.entity.MactUser;
import com.thinkgem.javamg.modules.mact.service.MactUserService;

import com.thinkgem.javamg.modules.sys.service.SystemService;

import org.restlet.resource.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * MactController
 *
 * @version 2019-05-09
 */
@Controller
@RequestMapping(value = "${adminPath}/mact/mobile")
public class MactMobileController extends BaseController {
    @Autowired
    private MactUserService mactUserService;
    @Autowired
    private SystemService systemService;

    private ThreadLocalThread threadLocalThread;

    private Map<String,String> map = null;


    public static ThreadLocal<String> threadLocal = new ThreadLocal<String>();

    @RequestMapping(value = "index")
    public String index( HttpServletRequest request, HttpServletResponse response, Model model) {

        return "modules/sys/sysLogin";
    }


    @RequestMapping(value = "save")
    public  String save(MactUser mactUser, Model model, RedirectAttributes redirectAttributes,HttpServletRequest request, HttpServletResponse response) {
       /* if (!beanValidator(model, mactUser)){
            return form(mactUser, model);
        }*/

      /*  // 验证表是否已经存在
        if (StringUtils.isBlank(user.getId()) && !genTableService.checkTableName(genTable.getName())){
            addMessage(model, "保存失败！" + genTable.getName() + " 表已经存在！");
            genTable.setName("");
            return form(genTable, model);
        }
        genTableService.save(genTable);
        */
        //将注册信息保存至mactUser表中
        SimpleDateFormat currentTime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
        mactUser.setLoginTime(currentTime.format(new Date()));
        mactUser.setStatus("1");
        mactUserService.save(mactUser);
        addMessage(redirectAttributes, "保存业务表'" + mactUser.getUserName() + "'成功");
        return "modules/sys/mactRadio";
    }

    @RequestMapping(value = "userCommit")
    public void userCommit(String CurrentId,HttpServletRequest request, HttpServletResponse response){
        map = new HashMap<String, String>();
        map.put("CurrentId",CurrentId);
    }

    /**
     * 文件上传
     * @param request
     * @param response
     * @return
     */
    @RequestMapping(value = "upload")
    public Result<MactUser> upload(String id,HttpServletRequest request, HttpServletResponse response) {
        MultipartFile mf=null;
        String savePath=null;
        String fileName = null;
        try {
            String ctxPath = "C://qycache";
            String bizPath = "mactUser";
            String nowday = new SimpleDateFormat("yyyyMMdd").format(new Date());
            File file = new File(ctxPath + File.separator + bizPath + File.separator + nowday);
            if (!file.exists()) {
                file.mkdirs();// 创建文件根目录
            }

            MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
            mf = multipartRequest.getFile("file");// 获取上传文件对象
            String orgName = mf.getOriginalFilename();// 获取文件名
            fileName = orgName.substring(0, orgName.lastIndexOf(".")) + "_" + System.currentTimeMillis() + orgName.substring(orgName.indexOf("."));
            savePath = file.getPath() + File.separator + fileName;
            File savefile = new File(savePath);
            FileCopyUtils.copy(mf.getBytes(), savefile);
            String dbpath = bizPath + File.separator + nowday + File.separator + fileName;
            if (dbpath.contains("\\")) {
                dbpath = dbpath.replace("\\", "/");
            }
        } catch (IOException e) {
            e.printStackTrace();
        }


        //将录音文件数据保存至mactUser数据表中

        MactUser mactUser=mactUserService.get(id);
        mactUser.setFilePath(savePath);
        SimpleDateFormat currentTime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
        mactUser.setRecordTime(currentTime.format(new Date()));
        if (!StringUtils.isEmpty(mactUser.getFileName())){
            mactUser.setFileName(fileName);
            mactUser.setId(IdGen.uuid());
            mactUserService.insert(mactUser);
        }else{
            mactUser.setFileName(fileName);
            mactUser.setRecordTime(currentTime.format(new Date()));
            mactUserService.updateFile(mactUser);
        }
        return null;
    }


}
