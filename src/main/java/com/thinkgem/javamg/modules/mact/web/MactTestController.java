/**
 *
 */
package com.thinkgem.javamg.modules.mact.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import com.thinkgem.javamg.common.web.BaseController;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 测试Controller
 *
 * @version 2019-05-09
 */
@Controller
@RequestMapping(value = "${adminPath}/mact/test")
public class MactTestController extends BaseController {



   /* @RequiresPermissions("mact:test:view")*/
    @RequestMapping(value = {"list", ""})
    public String testList( HttpServletRequest request, HttpServletResponse response, Model model) {

        return "modules/mact/mobile/educationgin";
    }

}
