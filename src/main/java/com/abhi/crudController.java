package com.abhi;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.text.View;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.abhi.model.Student;
import com.abhi.model.studentDAO;

@Controller
public class crudController {
	@Autowired
	public studentDAO dao;
	
	
	@RequestMapping(value = "addStud", params = "add")
	public ModelAndView addStud (@RequestParam("gender") String gender ,@RequestParam("id") String id,@RequestParam("name") String name,@RequestParam("grade") String grade,Model m, HttpServletResponse res,HttpSession session) throws IOException {
		ModelAndView mv = new ModelAndView("index.jsp");
		if(session.getAttribute("login") == "true"){
		
		Student s = new Student();
		s.setId(id);
		s.setName(name);
		s.setGrade(grade);
		s.setGender(gender);
			
		 	if(dao.existsById(id)==false) {
			if(dao.save(s) != null)
			m.addAttribute("msg","saved");
			else
			m.addAttribute("msg","error");
			return mv;
		}
		 	else if(dao.existsById(id)==true) {
		 	m.addAttribute("msg","already exist with the id = " + id);
		return mv;
		}
		 	else {
		 		mv.setViewName("error.jsp");
		 		return mv;
		 }
		 	
		}
		else {
			m.addAttribute("msg","Please login first");
			mv.setViewName("login.jsp");	
			return mv;
		}

	}
	@RequestMapping(value = "edit",params="edit")
	public ModelAndView edit(@RequestParam("gender") String gender, @RequestParam("id") String id,@RequestParam("name") String name,@RequestParam("grade") String grade,HttpSession session,Model m) {
			
			ModelAndView mv = new ModelAndView("edit.jsp");
			if(session.getAttribute("login") == "true"){
				
				Student s = new Student();
				s.setId(id);
				s.setName(name);
				s.setGrade(grade);
				s.setGender(gender);
					if(dao.save(s) != null)
					m.addAttribute("msg","Updated");
					else
					m.addAttribute("msg","error");
					
					return mv;
					
				}
				else {
					m.addAttribute("msg","Please login first");
					mv.setViewName("login.jsp");	
					return mv;
				}
	}
	@RequestMapping("search")
	public ModelAndView search (@RequestParam("id") String id,ModelAndView mv,Model m){
		
		mv.setViewName("search.jsp");
	try {
		m.addAttribute("id" ,dao.getOne(id).getId());
		m.addAttribute("name" ,dao.getOne(id).getName());
		m.addAttribute("grade" ,dao.getOne(id).getGrade());
		m.addAttribute("gender" ,dao.getOne(id).getGender());
	}
	catch(javax.persistence.EntityNotFoundException e) {
		m.addAttribute("msg","entered id " + id + " not present in the database please try a different one");
	}
		return mv;
	}
	
	@RequestMapping("fetchAll")
	public ModelAndView showall(HttpServletRequest request,Model m, HttpSession session){
		ModelAndView mv = new ModelAndView("showAll.jsp");
		
		if(session.getAttribute("login") == "true"){
		request.setAttribute("students",dao.findAll());
		
		}	
		else{
			m.addAttribute("msg","Please login first");
			mv.setViewName("login.jsp");	
			return mv;
		}
		return mv;
	}
	
	@RequestMapping(value = "edit",params="delete")
	public ModelAndView delete(@RequestParam("id") String id,Model m,HttpSession session) {
		ModelAndView mv = new ModelAndView("edit.jsp");
		if(session.getAttribute("login") == "true"){
		if(dao.existsById(id)) {
		dao.deleteById(id);
		m.addAttribute("msg","record with id = " + id + " is deleted");
		}
		else {
			m.addAttribute("msg", "record with the id = " + id + " not found");
		}
		
		}
		else{
			m.addAttribute("msg","Please login first");
			mv.setViewName("login.jsp");
			return mv;
		}
		return mv;
	}
	
	
}
