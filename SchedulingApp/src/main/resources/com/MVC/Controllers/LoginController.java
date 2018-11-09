package com.MVC.Controllers;




import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class LoginController{
    
	@RequestMapping("/loginHandler")
	public String loginHandler() {
		
		
		return "display.jsp";
	}
}