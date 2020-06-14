package com.abhi;

import java.io.IOException;


import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.abhi.model.LoginDao;
import com.abhi.model.Login_details;

@Controller
public class loginController {
	@Autowired
	LoginDao logindao;
	@RequestMapping("login")
	public ModelAndView login(@RequestParam("id") Integer id, @RequestParam("pwd") String pass,HttpSession session,Model m ) throws IOException {
		ModelAndView mv = new ModelAndView("login.jsp");
		Login_details saved_details = new Login_details();
		String saved_pass ="";
		try {
		saved_details = logindao.getOne(id);
		 saved_pass = saved_details.getPass();
		}
		catch(javax.persistence.EntityNotFoundException e) {
		m.addAttribute("msg", "Id = "+ id+ " Not found in the database for new Id, Please register.");
		return mv;
		}
		if(saved_pass.compareTo(pass) == 0)  {
			session.setAttribute("login", "true");
			mv.setViewName("index.jsp");
		}
		else {
			m.addAttribute("msg", "Incorrect password");
			session.setAttribute("login", "false");
			mv.setViewName("login.jsp");
		
		}
		return mv;
	}
		
		@RequestMapping("register")
	public ModelAndView register(@RequestParam("id") Integer id, @RequestParam("pwd") String pass,HttpServletResponse res,Model m) throws IOException {
			Login_details details = new Login_details();
			ModelAndView mv = new ModelAndView("register.jsp");
			
			details.setId(id);
			details.setPass(pass);
			
			if(logindao.existsById(id) != true) {
			
				if(logindao.save(details) != null ) {
					m.addAttribute("msg","your account is registered into the database");
				}
				else {
					m.addAttribute("msg","please check if the entered id and password is in integer and string type respectively");
				}}
			else {
				m.addAttribute("msg","account with the same id is already present in the database");
				
			}
				return mv;
	}
	
	}
