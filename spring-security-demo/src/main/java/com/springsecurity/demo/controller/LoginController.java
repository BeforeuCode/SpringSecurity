package com.springsecurity.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {

	@GetMapping("/showMyLoginPage")
	public String showMyLoginPage() {
		
		// return "plain-login";

		return "fancy-login";
		
	}
	
	//add request mapping for /acces-denied
	@GetMapping("/acces-denied")
	public String showAccesDenied() {
		
		

		return "acces-denied";
		
	}
}
