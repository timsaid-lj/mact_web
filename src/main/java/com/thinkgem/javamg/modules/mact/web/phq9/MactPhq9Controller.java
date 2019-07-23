/**
 * 
 */
package com.thinkgem.javamg.modules.mact.web.phq9;

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
import com.thinkgem.javamg.modules.mact.entity.phq9.MactPhq9;
import com.thinkgem.javamg.modules.mact.service.phq9.MactPhq9Service;

/**
 * phq9量表Controller
 * @author linj
 * @version 2019-07-22
 */
@Controller
@RequestMapping(value = "${adminPath}/mact/phq9/mactPhq9")
public class MactPhq9Controller extends BaseController {

	@Autowired
	private MactPhq9Service mactPhq9Service;
	
	@ModelAttribute
	public MactPhq9 get(@RequestParam(required=false) String id) {
		MactPhq9 entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = mactPhq9Service.get(id);
		}
		if (entity == null){
			entity = new MactPhq9();
		}
		return entity;
	}
	
	@RequiresPermissions("mact:phq9:mactPhq9:view")
	@RequestMapping(value = {"list", ""})
	public String list(MactPhq9 mactPhq9, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<MactPhq9> page = mactPhq9Service.findPage(new Page<MactPhq9>(request, response), mactPhq9); 
		model.addAttribute("page", page);
		return "modules/mact/phq9/mactPhq9List";
	}

	@RequiresPermissions("mact:phq9:mactPhq9:view")
	@RequestMapping(value = "form")
	public String form(MactPhq9 mactPhq9, Model model) {
		model.addAttribute("mactPhq9", mactPhq9);
		return "modules/mact/phq9/mactPhq9Form";
	}

	@RequiresPermissions("mact:phq9:mactPhq9:edit")
	@RequestMapping(value = "save")
	public String save(MactPhq9 mactPhq9, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, mactPhq9)){
			return form(mactPhq9, model);
		}
		mactPhq9Service.save(mactPhq9);
		addMessage(redirectAttributes, "保存phq9成功");
		return "redirect:"+Global.getAdminPath()+"/mact/phq9/mactPhq9/?repage";
	}
	
	@RequiresPermissions("mact:phq9:mactPhq9:edit")
	@RequestMapping(value = "delete")
	public String delete(MactPhq9 mactPhq9, RedirectAttributes redirectAttributes) {
		mactPhq9Service.delete(mactPhq9);
		addMessage(redirectAttributes, "删除phq9成功");
		return "redirect:"+Global.getAdminPath()+"/mact/phq9/mactPhq9/?repage";
	}

}