package com.abhi;

import java.awt.List;
import java.io.IOException;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.abhi.model.LoginDao;
import com.abhi.model.Login_details;
import com.abhi.model.Student;
import com.abhi.model.studentDAO;

@Controller
public class HomeController {
	

	@RequestMapping("/")
	public ModelAndView home(HttpServletRequest request,HttpServletResponse response) throws IOException {
	ModelAndView mv = new ModelAndView();
		System.out.println("home controller called");
	HttpSession session = request.getSession();
	if(session.getAttribute("login")  == "true" ){
		mv.setViewName("index.jsp");
	}
	else {
		
		mv.setViewName("login.jsp");
	}
	return mv;
	}
	
	@RequestMapping("logout")
	void logout(HttpServletResponse res,HttpSession session) throws IOException {
		
		session.removeAttribute("login");
		session.invalidate();
		
		res.sendRedirect("login.jsp");
		
	}
	
	
	
	

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
