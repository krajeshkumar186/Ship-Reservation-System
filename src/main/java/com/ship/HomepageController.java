package com.ship;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomepageController {
	@RequestMapping("home")
	public String home() {
		return "Homepage.jsp";
	}
	
}
