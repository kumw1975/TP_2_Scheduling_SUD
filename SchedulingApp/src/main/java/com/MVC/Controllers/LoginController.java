package com.MVC.Controllers;


import javax.servlet.http.*;

import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class LoginController{
    
	@RequestMapping("/uuloginHandler")
	public ModelAndView loginHandler(HttpServletRequest request, HttpServletResponse response) {
		
		String firstName = request.getParameter("firstname");
		String lastName = request.getParameter("lastname");
		String Email = request.getParameter("email");
		
		String loadPage="";
		
		ModelAndView mv = new ModelAndView();
		
		
		if(firstName.equals("Derick")) {
			
			loadPage="display.jsp";
			mv.setViewName(loadPage);
			mv.addObject("result",firstName );
		}
		
		else {
			
			loadPage="errorPage.jsp";
			mv.setViewName(loadPage);
		}
		
		return mv;
	}
}