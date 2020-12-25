package banhang.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("shop/")
public class BanHangController {

	@RequestMapping("product")
	public String test()
	{
		return "user/product";
	}
	
	@RequestMapping("login")
	public String login()
	{
		return "user/login";
	}
	@RequestMapping("intro")
	public String introduce()
	{
		return "user/introduce";
	}
	@RequestMapping("/register")
	public String register()
	{
		return "user/register";
	}
}
