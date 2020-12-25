package banhang.controller;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import banhang.entity.Accounts;


@Transactional
@Controller
@RequestMapping("admin/")
public class AdminController {

	@Autowired
	SessionFactory factory;
	
	@RequestMapping(value="login",method=RequestMethod.GET)
	public String login(ModelMap model)
	{
		Accounts account=new Accounts();
		model.addAttribute("account",account);
		return "admin/admin-login";
	}
	@RequestMapping(value="login",method=RequestMethod.POST)
	public String login(ModelMap model,@ModelAttribute("account")Accounts account)
	{
		Session session=factory.getCurrentSession();
		String hql="From Accounts a Where a.email='"+account.getEmail()+"'and  a.password='"+account.getPassword()+"'";
		Query query=session.createQuery(hql);
		List <Accounts> list=query.list();
		if(!list.isEmpty())
		{
			return "admin/page";
		}
		else
		{
			model.addAttribute("message","ĐĂNG NHẬP KHÔNG HỢP LỆ!");
			return "admin/admin-login";
		}
	}
	@RequestMapping("index")
	public String index()
	{
		return "admin/page";
	}
}
