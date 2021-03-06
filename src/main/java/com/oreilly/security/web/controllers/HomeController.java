package com.oreilly.security.web.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/")
public class HomeController {

	@RequestMapping(method=RequestMethod.GET)
	public String goHome(){
		return "home";
	}
	
	@RequestMapping("/services")
	public String goServices(){
		return "services";
	}
	
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String goLogin(){
		return "login";
	}
	
	@RequestMapping(value="/logout",method=RequestMethod.GET)
	public String goLogout(){
		return "login";
	}
}
