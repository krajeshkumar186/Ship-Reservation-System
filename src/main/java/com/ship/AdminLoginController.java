package com.ship;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class AdminLoginController {
	@RequestMapping("admin")
	public String admin() {
		return "AdminLogin.jsp";
	}

}
