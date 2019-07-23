/**
 * 
 */
package com.thinkgem.javamg.modules.mact.web.userphq9;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.thinkgem.javamg.modules.mact.entity.phq9.MactPhq9;
import com.thinkgem.javamg.modules.mact.service.phq9.MactPhq9Service;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.thinkgem.javamg.common.config.Global;
import com.thinkgem.javamg.common.persistence.Page;
import com.thinkgem.javamg.common.web.BaseController;
import com.thinkgem.javamg.common.utils.StringUtils;
import com.thinkgem.javamg.modules.mact.entity.userphq9.MactUserPhq9;
import com.thinkgem.javamg.modules.mact.service.userphq9.MactUserPhq9Service;

/**
 * userPhq9Controller
 * @author linj
 * @version 2019-07-22
 */
@Controller
@RequestMapping(value = "${adminPath}/mact/userphq9/mactUserPhq9")
public class MactUserPhq9Controller extends BaseController {

	@Autowired
	private MactUserPhq9Service mactUserPhq9Service;
	@Autowired
	private MactPhq9Service mactPhq9Service;
	
	@ModelAttribute
	public MactUserPhq9 get(@RequestParam(required=false) String id) {
		MactUserPhq9 entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = mactUserPhq9Service.get(id);
		}
		if (entity == null){
			entity = new MactUserPhq9();
		}
		return entity;
	}
	
	@RequiresPermissions("mact:userphq9:mactUserPhq9:view")
	@RequestMapping(value = {"list"})
	public String list(MactUserPhq9 mactUserPhq9, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<MactUserPhq9> page = mactUserPhq9Service.findPage(new Page<MactUserPhq9>(request, response), mactUserPhq9); 
		model.addAttribute("page", page);
		return "modules/mact/userphq9/mactUserPhq9List";
	}

	@RequiresPermissions("mact:userphq9:mactUserPhq9:view")
	@RequestMapping(value = "form")
	public String form(MactUserPhq9 mactUserPhq9, Model model) {
		model.addAttribute("mactUserPhq9", mactUserPhq9);
		return "modules/mact/userphq9/mactUserPhq9Form";
	}

	@RequiresPermissions("mact:userphq9:mactUserPhq9:edit")
	@RequestMapping(value = "save")
	public String save(MactUserPhq9 mactUserPhq9, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, mactUserPhq9)){
			return form(mactUserPhq9, model);
		}
		mactUserPhq9Service.save(mactUserPhq9);
		addMessage(redirectAttributes, "保存userPhq9成功");
		return "redirect:"+Global.getAdminPath()+"/mact/userphq9/mactUserPhq9/?repage";
	}

	/**
	 * 保存单条phq9值
	 * @param model
	 * @return
	 */
	/*@RequiresPermissions("mact:userphq9:mactUserPhq9:edit")*/
	@RequestMapping(value = "savePhq9")
	public ModelAndView savePhq9(String CurrentId, String phq9Id, String scores, String sort, Model model) {

//		mactUserPhq9Service.savePhq9(mactUserPhq9);
		MactPhq9 mactPhq9 = new MactPhq9();
		mactPhq9.setSort(sort);
		mactPhq9=mactPhq9Service.findPhq9One(mactPhq9);
		//model.addAttribute("phq9One",mactPhq9);
		return new ModelAndView("modules/sys/phqCheck.jsp","phq9One",mactPhq9);
	}

	@RequestMapping(value="/mad/showData_1.do")
	public ModelAndView showData_1(){
		String message = "这个是要传递的数据";
		/*其中第一个参数为url,第二个参数为要传递的数据的key,第三个参数为数据对象。在这里要注意的是:数据是默认被存放在request中的。*/
		return new ModelAndView("/WEB-INF/jsp/showData.jsp","message",message);
	}


	
	@RequiresPermissions("mact:userphq9:mactUserPhq9:edit")
	@RequestMapping(value = "delete")
	public String delete(MactUserPhq9 mactUserPhq9, RedirectAttributes redirectAttributes) {
		mactUserPhq9Service.delete(mactUserPhq9);
		addMessage(redirectAttributes, "删除userPhq9成功");
		return "redirect:"+Global.getAdminPath()+"/mact/userphq9/mactUserPhq9/?repage";
	}

}