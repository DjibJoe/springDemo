package com.tuto.controllers;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.tuto.Dao.PersonneDao;
import com.tuto.entity.Personne;
@Controller
public class PersonneCtrl {

	private static final long serialVersionUID = 1L;
    private List<Personne> p;
    private PersonneDao pdao;
    
   
	@RequestMapping("/")
	public ModelAndView getAllPersonnes(HttpServletRequest request,HttpServletResponse responses) {
		System.out.println("djohar");
		pdao = new PersonneDao();
		ModelAndView model = new ModelAndView();
		p = new LinkedList();
		p = pdao.getAllPeople();
		model.setViewName("index");
		model.addObject("personnes",p);		
		return model;
	}
	
	@RequestMapping(value="add",method = RequestMethod.POST)
	public ModelAndView add(HttpServletRequest request,HttpServletResponse responses) {
		Personne p = new Personne();
		pdao = new PersonneDao();
		p.setNom(request.getParameter("nom"));
		p.setPrenom(request.getParameter("prenom"));
		p.setEmail(request.getParameter("email"));
		p.setGenre(request.getParameter("genre"));
		p.setAdrssIp(request.getParameter("ip"));
		pdao.addPersonne(p);
		ModelAndView model = new ModelAndView();
		model.setViewName("redirect:/");		
		return model;
	}
	@RequestMapping(value="/supprimer",method = RequestMethod.GET)
	public ModelAndView remove(HttpServletRequest request,HttpServletResponse responses) {
		pdao = new PersonneDao();
		pdao.remove(request.getParameter("id"));
		ModelAndView model = new ModelAndView();		
		model.setViewName("resultat");	
		model.addObject("rs","djohar");
		return model;
	}
}
