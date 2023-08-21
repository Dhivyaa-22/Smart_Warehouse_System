package com.example.demo;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {
	@Autowired
	private ComponentRepository comp_repo;
	@Autowired
	private MapComponentRepository map_repo;
	@Autowired
	private UserRepository user_repo;
	
	@RequestMapping("/login")
	public String login()
	{
		return "login";
	}
	@RequestMapping("/")
	public String home(Model model) {
		List<MapComponent> l=new ArrayList<>();
		map_repo.findAll().forEach(l::add);
		model.addAttribute("l",l);
		return "component_add";
	}
	@RequestMapping("/map_com")
	public String map_com(@RequestParam("com_id")String comid, MapComponent m) {
		String uname;
		Object prin=SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		if (prin instanceof UserDetails) {
			uname = ((UserDetails)prin).getUsername();
		}
		else
		{
			uname=prin.toString();
		}
		User u=user_repo.findByUsername(uname);
		m.setRoll_no(u.getRollno());
		m.setName(u.getName());
		Component c=comp_repo.findByCmdid(comid);
		m.setCom_id(comid);
		m.setCom_name(c.getCmname());
		m.setSupplier(c.getSupplier());
		m.setQuantity(c.getQuatity());
		map_repo.save(m);
		return "redirect:/";
	}
	@RequestMapping("/com_reg")
	public String com_reg(Component c) {
		
		
		comp_repo.save(c);
		return "redirect:/";
	}
	@RequestMapping("/userregister")
	public String userregister(User u) {
		
		user_repo.save(u);
		return "redirect:/";
	}
	
	@RequestMapping("/logout-success")
	public String logoutpage()
	{
		return "login";
	}
	
}
