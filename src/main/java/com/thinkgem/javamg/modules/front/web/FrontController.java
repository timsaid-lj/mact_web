package com.thinkgem.javamg.modules.front.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.thinkgem.javamg.common.web.BaseController;

@Controller
@RequestMapping(value = "${frontPath}")
public class FrontController extends BaseController  {
	
}
