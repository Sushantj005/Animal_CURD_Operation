package com.example.demo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	@Autowired
	AnimalService as;

	@RequestMapping("/")
	public String one()
	{
		return "index";
	}
	
	@PostMapping("/savedata")
	public String two(@ModelAttribute("aa") Animal aa)
	{
		as.submit(aa);
		return "redirect:/welcome";
	}
	
	@RequestMapping("/welcome")
	public String three(Model m)
	{
		List<Animal> lp=as.getallinfo();
		m.addAttribute("kk", lp);
		return "/welcome";
	}
	
	@GetMapping("/del/{id}")
	public String four(@PathVariable int id)
	{
		as.deldata(id);
		return "redirect:/welcome";
	}
	
	@GetMapping("/edit/{id}")
	public String five(@PathVariable int id,Model m)
	{
		Animal at= as.getsingleinfo(id);
		m.addAttribute("at", at);
		return "/edit";
	}
	
	@PostMapping("/updatedata")
	public String six(@ModelAttribute("ae") Animal ae)
	{
		Animal an=new Animal();
		an.setSid(an.getSid());
		an.setName(an.getName());
		an.setCategory(an.getCategory());
		an.setDescription(an.getDescription());
		an.setLifeExpectancy(an.getLifeExpectancy());
		
		as.submit(an);
		return "redirect:/welcome";
	}
	
}
