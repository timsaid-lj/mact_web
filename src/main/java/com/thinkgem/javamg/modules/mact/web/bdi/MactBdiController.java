/**
 * 
 */
package com.thinkgem.javamg.modules.mact.web.bdi;

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
import com.thinkgem.javamg.modules.mact.entity.bdi.MactBdi;
import com.thinkgem.javamg.modules.mact.service.bdi.MactBdiService;

/**
 * bdi量表Controller
 * @author linj
 * @version 2020-12-17
 */
@Controller
@RequestMapping(value = "${adminPath}/mact/bdi/mactBdi")
public class MactBdiController extends BaseController {

	@Autowired
	private MactBdiService mactBdiService;
	
	@ModelAttribute
	public MactBdi get(@RequestParam(required=false) String id) {
		MactBdi entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = mactBdiService.get(id);
		}
		if (entity == null){
			entity = new MactBdi();
		}
		return entity;
	}
	
	@RequiresPermissions("mact:bdi:mactBdi:view")
	@RequestMapping(value = {"list", ""})
	public String list(MactBdi mactBdi, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<MactBdi> page = mactBdiService.findPage(new Page<MactBdi>(request, response), mactBdi); 
		model.addAttribute("page", page);
		return "modules/mact/bdi/mactBdiList";
	}

	@RequiresPermissions("mact:bdi:mactBdi:view")
	@RequestMapping(value = "form")
	public String form(MactBdi mactBdi, Model model) {
		model.addAttribute("mactBdi", mactBdi);
		return "modules/mact/bdi/mactBdiForm";
	}

	@RequiresPermissions("mact:bdi:mactBdi:edit")
	@RequestMapping(value = "save")
	public String save(MactBdi mactBdi, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, mactBdi)){
			return form(mactBdi, model);
		}
		mactBdiService.save(mactBdi);
		addMessage(redirectAttributes, "保存bdi成功");
		return "redirect:"+Global.getAdminPath()+"/mact/bdi/mactBdi/?repage";
	}
	
	@RequiresPermissions("mact:bdi:mactBdi:edit")
	@RequestMapping(value = "delete")
	public String delete(MactBdi mactBdi, RedirectAttributes redirectAttributes) {
		mactBdiService.delete(mactBdi);
		addMessage(redirectAttributes, "删除bdi成功");
		return "redirect:"+Global.getAdminPath()+"/mact/bdi/mactBdi/?repage";
	}

}