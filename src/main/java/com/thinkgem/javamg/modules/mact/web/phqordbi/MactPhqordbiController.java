/**
 * 
 */
package com.thinkgem.javamg.modules.mact.web.phqordbi;

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
import com.thinkgem.javamg.modules.mact.entity.phqordbi.MactPhqordbi;
import com.thinkgem.javamg.modules.mact.service.phqordbi.MactPhqordbiService;

/**
 * 量表切换Controller
 * @author linj
 * @version 2020-12-17
 */
@Controller
@RequestMapping(value = "${adminPath}/mact/phqordbi/mactPhqordbi")
public class MactPhqordbiController extends BaseController {

	@Autowired
	private MactPhqordbiService mactPhqordbiService;
	
	@ModelAttribute
	public MactPhqordbi get(@RequestParam(required=false) String id) {
		MactPhqordbi entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = mactPhqordbiService.get(id);
		}
		if (entity == null){
			entity = new MactPhqordbi();
		}
		return entity;
	}
	
	@RequiresPermissions("mact:phqordbi:mactPhqordbi:view")
	@RequestMapping(value = {"list", ""})
	public String list(MactPhqordbi mactPhqordbi, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<MactPhqordbi> page = mactPhqordbiService.findPage(new Page<MactPhqordbi>(request, response), mactPhqordbi); 
		model.addAttribute("page", page);
		return "modules/mact/phqordbi/mactPhqordbiList";
	}

	@RequiresPermissions("mact:phqordbi:mactPhqordbi:view")
	@RequestMapping(value = "form")
	public String form(MactPhqordbi mactPhqordbi, Model model) {
		model.addAttribute("mactPhqordbi", mactPhqordbi);
		return "modules/mact/phqordbi/mactPhqordbiForm";
	}

	@RequiresPermissions("mact:phqordbi:mactPhqordbi:edit")
	@RequestMapping(value = "save")
	public String save(MactPhqordbi mactPhqordbi, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, mactPhqordbi)){
			return form(mactPhqordbi, model);
		}
		mactPhqordbiService.save(mactPhqordbi);
		addMessage(redirectAttributes, "保存参数成功");
		return "redirect:"+Global.getAdminPath()+"/mact/phqordbi/mactPhqordbi/?repage";
	}
	
	@RequiresPermissions("mact:phqordbi:mactPhqordbi:edit")
	@RequestMapping(value = "delete")
	public String delete(MactPhqordbi mactPhqordbi, RedirectAttributes redirectAttributes) {
		mactPhqordbiService.delete(mactPhqordbi);
		addMessage(redirectAttributes, "删除参数成功");
		return "redirect:"+Global.getAdminPath()+"/mact/phqordbi/mactPhqordbi/?repage";
	}

}