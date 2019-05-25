/**
 * 
 */
package com.thinkgem.javamg.modules.mact.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.thinkgem.javamg.common.config.Global;
import com.thinkgem.javamg.common.persistence.Page;
import com.thinkgem.javamg.common.web.BaseController;
import com.thinkgem.javamg.common.utils.StringUtils;
import com.thinkgem.javamg.modules.mact.entity.MactUser;
import com.thinkgem.javamg.modules.mact.service.MactUserService;

import java.io.*;

/**
 * mact用户Controller
 * @author lj
 * @version 2019-05-12
 */
@Controller
@RequestMapping(value = "${adminPath}/mact/mactUser")
public class MactUserController extends BaseController {

	@Autowired
	private MactUserService mactUserService;
	
	@ModelAttribute
	public MactUser get(@RequestParam(required=false) String id) {
		MactUser entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = mactUserService.get(id);
		}
		if (entity == null){
			entity = new MactUser();
		}
		return entity;
	}
	
	@RequiresPermissions("mact:mactUser:view")
	@RequestMapping(value = {"list", ""})
	public String list(MactUser mactUser, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<MactUser> page = mactUserService.findPage(new Page<MactUser>(request, response), mactUser); 
		model.addAttribute("page", page);
		return "modules/mact/mactUserList";
	}

	@RequiresPermissions("mact:mactUser:view")
	@RequestMapping(value = "form")
	public String form(MactUser mactUser, Model model) {
		model.addAttribute("mactUser", mactUser);
		return "modules/mact/mactUserForm";
	}

	@RequiresPermissions("mact:mactUser:edit")
	@RequestMapping(value = "save")
	public String save(MactUser mactUser, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, mactUser)){
			return form(mactUser, model);
		}
		mactUserService.save(mactUser);
		addMessage(redirectAttributes, "保存mact用户成功");
		return "redirect:"+Global.getAdminPath()+"/mact/mactUser/?repage";
	}
	
	@RequiresPermissions("mact:mactUser:edit")
	@RequestMapping(value = "delete")
	public String delete(MactUser mactUser, RedirectAttributes redirectAttributes) {
		mactUserService.delete(mactUser);
		addMessage(redirectAttributes, "删除mact用户成功");
		return "redirect:"+Global.getAdminPath()+"/mact/mactUser/?repage";
	}


	/**
	 * 文件下载
	 * @param mactUser
	 * @param request
	 * @param response
	 * @throws IOException
	 */
	@RequestMapping(value = "downloadFile")
	public void downloadFile(MactUser mactUser,HttpServletRequest request,HttpServletResponse response) throws IOException {
		String fileName = mactUser.getFileName();
		//3.设置content-disposition响应头控制浏览器以下载的形式打开文件
		response.setHeader("content-disposition", "attachment;filename="+fileName);
		//4.获取要下载的文件输入流
		InputStream in=null;
		OutputStream out=null;
		try {//获取要下载的文件的绝对路径
			in=new FileInputStream(mactUser.getFilePath());
			int len = 0;
			//5.创建数据缓冲区
			byte[] buffer = new byte[1024];
			//6.通过response对象获取OutputStream流
			out = response.getOutputStream();
			//7.将FileInputStream流写入到buffer缓冲区
			while ((len = in.read(buffer)) > 0) {//in.read(byte[] b)最多读入b.length个字节 在碰到流的结尾时 返回-1
				//8.使用OutputStream将缓冲区的数据输出到客户端浏览器
				out.write(buffer,0,len);
			}
		}catch (FileNotFoundException e) {
			e.printStackTrace();
		}finally{
			in.close();
			out.close();
		}
	}
}