package banhang.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import org.springframework.jdbc.core.JdbcTemplate;
import javax.mail.internet.MimeMessage;
import javax.persistence.criteria.Order;
import javax.servlet.http.HttpServletRequest;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import banhang.entity.Accounts;
import banhang.entity.CartDetail;
import banhang.entity.CartDetail_ID;
import banhang.entity.Carts;
import banhang.entity.OrderDetail;
import banhang.entity.Orders;
import banhang.entity.Products;
import banhang.entity.Users;
import jdk.nashorn.internal.runtime.regexp.JoniRegExp.Factory;

@Transactional
@Controller
@RequestMapping("shop/")
public class BanHangController {
	private static String mailFindPass;
	private static String mail="";
	private static String name="Đăng nhập";
	private static Users user;
	private static Integer idProduct;
	private static Integer idCart;
	private static Float tongtien;
	
	
	
	public static Float getTongtien() {
		return tongtien;
	}
	public static void setTongtien(Float tongtien) {
		BanHangController.tongtien = tongtien;
	}
	public static Integer getIdCart() {
		return idCart;
	}
	public static void setIdCart(int idCart) {
		BanHangController.idCart = idCart;
	}
	
	public static Users getUser() {
		return user;
	}
	public static void setUser(Users user) {
		BanHangController.user = user;
	}
	public static String getMail() {
		return mail;
	}
	public static void setMail(String mail) {
		BanHangController.mail = mail;
	}
	public static String getName() {
		return name;
	}
	public static void setName(String name) {
		BanHangController.name = name;
	}
	
	public static String getMailFindPass() {
		return mailFindPass;
	}
	public static void setMailFindPass(String mailFindPass) {
		BanHangController.mailFindPass = mailFindPass;
	}

	public static Integer getIdProduct() {
		return idProduct;
	}
	public static void setIdProduct(Integer idProduct) {
		BanHangController.idProduct = idProduct;
	}

	
	
	@Autowired
	SessionFactory factory;
	
	@Autowired
	JavaMailSender mailer;
	
	@RequestMapping("product")
	public String productShow(ModelMap model)
	{
		model.addAttribute("getmail",getMail());
		model.addAttribute("getname",getName());
		
		Session session=factory.getCurrentSession();
		 String hql="From Products";
		 Query query=session.createQuery(hql);
		 List<Products> list=query.list();
		 model.addAttribute("list",list);
		return "user/product";
	}
	
	@RequestMapping("product/{type}")
	public String productWithtType(ModelMap model,@PathVariable("type")String type)
	{
		model.addAttribute("getmail",getMail());
		model.addAttribute("getname",getName());
		
		Session session=factory.getCurrentSession();
		 String hql="From Products p where p.productType='"+type+"'";
		 Query query=session.createQuery(hql);
		 List<Products> list=query.list();
		 model.addAttribute("list",list);
		return "user/product";
	}
	
	@RequestMapping("product/detail/{id}")
	public String productWithtType(ModelMap model,@PathVariable("id") Integer id)
	{
		model.addAttribute("getmail",getMail());
		model.addAttribute("getname",getName());	
		Session session=factory.getCurrentSession();
		 String hql="From Products p where p.id="+id+"";
		 Query query=session.createQuery(hql);
		 setIdProduct(id);
		 List<Products> list=query.list();
		 Products product=new Products();
		 product=list.get(0);
		 model.addAttribute("p",product);
		return "user/productDetail";
	}
	
	@RequestMapping(value="product/detail")
	public String productShowDetail()
	{
		return "user/productDetail";
	}
	
	@RequestMapping("index")
	public String userLayout()
	{
		return "user/empty";
	}
	
	//LOGIN
	@RequestMapping(value="login",method=RequestMethod.GET)
	public String login(ModelMap model)
	{
		Accounts account=new Accounts();
		model.addAttribute("account",account);
		return "user/login";
	}
	@RequestMapping(value="login",method=RequestMethod.POST)
	public String login(ModelMap model,@ModelAttribute("account") Accounts account)
	{
		Session session=factory.getCurrentSession();
		String hql="From Accounts a where a.email='"+account.getEmail()+"'and a.password='"+account.getPassword()+"'";
		Query query=session.createQuery(hql);
		List<Accounts> list=query.list();
		if(!list.isEmpty())
		{
			if(list.get(0).getRole().equals("user"))
			{
				session=factory.getCurrentSession();
			 	hql="From Users u where u.email='"+account.getEmail()+"'";
				query=session.createQuery(hql);
				List<Users> listU=query.list();
				setUser(listU.get(0));
				setMail(listU.get(0).getEmail());
				setName("Hi,"+listU.get(0).getLastName()+"!");
				return productShow(model);
			}
			else
			{
			    session=factory.getCurrentSession();
			    hql="FROM Products";
			    query=session.createQuery(hql);
				List<Products> listu=query.list();
				model.addAttribute("product",listu);
				return "admin/product-index";
			}
			 	
		}

		return "user/login";
	}
	
	
	
	
	//CART
	
		//tạo đơn hàng và trả về mã đơn hàng

	
	
	@RequestMapping("cart")
	public String cartInsert(ModelMap model,HttpServletRequest request )
	{
		Products product=new Products();
		product.setId(getIdProduct());
		String quantity=request.getParameter("quantitybuy");
		Session session=factory.getCurrentSession();
		String hql="From Carts c where c.user.id="+getUser().getId();
		Query query=session.createQuery(hql);
		List<Carts> listC=query.list();
		if(listC.isEmpty()==true)
		{
			//NẾU TRỐNG THÌ TẠO VỎ HÀNG CHO KHÁCH THÊM
					
				    session=factory.openSession();
					Transaction t=session.beginTransaction();
					Carts cart=new Carts();
					cart.setUser(getUser());
					try
					{
						session.save(cart);
						t.commit();
						setIdCart(cart.getId());
					}catch(Exception e)
					{
						t.rollback();
					}
				
		}
		else
		{
			//NẾU CỐ THÌ LẤY ID giỏ hàng đó
				setIdCart(listC.get(0).getId());
		}
		
	    session=factory.openSession();
		Transaction t=session.beginTransaction();
		CartDetail temp=new CartDetail();
		Carts cart=new Carts();
		cart.setId(getIdCart());
		cart.setUser(getUser());
		temp.setCartId(cart);
		temp.setProductId(product);
		temp.setQuantity(Integer.parseInt(quantity));
		try
		{
			session.save(temp);
			t.commit();
		}catch(Exception e)
		{
			t.rollback();
		}
			
		return productWithtType(model, getIdProduct());
	}
	@RequestMapping(value="carticon")
	public String cartView(ModelMap model,HttpServletRequest request )
	{
		Session session=factory.getCurrentSession();
		String hql="From Carts c where c.user.id="+getUser().getId();
		Query query=session.createQuery(hql);
		List<Carts> listC=query.list();
		if(listC.isEmpty()==true)
		{

			return productShow(model);
		}
		else
		{
			//NẾU	 CỐ THÌ LẤY ID giỏ hàng đó
				setIdCart(listC.get(0).getId());
				session=factory.getCurrentSession();
				 hql="from CartDetail c where c.cartId.id="+getIdCart();
				query=session.createQuery(hql);
				List<CartDetail> list=query.list();
				model.addAttribute("cart",list);
				float tong=0;
				for(CartDetail i:list)
				{
					tong+=i.getQuantity()*i.getProductId().getPrice();
					
				}
				setTongtien(tong);
				model.addAttribute("id",getUser().getId());
				return "user/cart-detail";
		}
		
	}
	
	@RequestMapping(value="cart/detail")
	public String viewCart(ModelMap model)
	{
		Session session=factory.getCurrentSession();
		String hql="from CartDetail c where c.cartId.id="+getIdCart();
		Query query=session.createQuery(hql);
		List<CartDetail> list=query.list();
		model.addAttribute("cart",list);
		float tong=0;
		for(CartDetail i:list)
		{
			tong+=i.getQuantity()*i.getProductId().getPrice();
			
		}
		
		setTongtien(tong);
		return "user/cart-detail";
	}
	
	@RequestMapping(value="cart/delete/{idproduct}")
	public String deleteItemCart(ModelMap model,@PathVariable("idproduct")int id,HttpServletRequest request)
	{
		Session session=factory.getCurrentSession();
	try 
	{
		CartDetail temp=new CartDetail();
		Carts cart=new Carts();
		cart.setId(getIdCart());
		temp.setCartId(cart);
		
		Products product=new Products();
		product.setId(id);
		temp.setProductId(product);
		
		CartDetail_ID test=new CartDetail_ID();
		test.setCartId(cart);
		test.setProductsId(product);
		System.out.println(id);
		System.out.println(getIdCart());
		String updateQuery = "update Student set age = ? where id = ?";
		
	 } 
	 catch (Exception e)
	 {
		// TODO: handle exception
	
	}
		return cartView(model, request);
	}
	
	
	@RequestMapping(value="bill/{id}")
	private String makeBill(ModelMap model,@PathVariable("id")int id)
	{
//		Session session=factory.openSession();
//		Transaction t=session.beginTransaction();
//		Users u=new Users();
//		u.setId(id);
//		Orders cart=new Orders();
//		cart.setUser(getUser());
//		try
//		{
//			session.save(cart);
//			t.commit();
//		}catch(Exception e)
//		{
//			t.rollback();
//		}
////		if(check==true)
////		{
////				System.out.println("2");
////			 	session=factory.getCurrentSession();
////				String hql="from CartDetail c where c.cartId.id="+getIdCart();
////				Query query=session.createQuery(hql);
////				List<CartDetail> list=query.list();
////				for(CartDetail i:list)
////				{
////					 session=factory.openSession();
////					 t=session.beginTransaction();
////					 OrderDetail temp=new OrderDetail();
////					 temp.setOrderId(order);
////					 temp.setProductId(i.getProductId());
////					 temp.setQuantity(i.getQuantity());
////					 try 
////					 {
////						 session.save(temp);
////						 t.commit();
////					 } 
////					 catch (Exception e)
////					 {
////						// TODO: handle exception
////						 t.rollback();
////						 session=factory.openSession();
////						 t=session.beginTransaction();
////						 session.delete(i);
////						 t.commit();
////					}
////					
////				}
////		}
//
//		
//		
		
		return productShow(model);
	}
	
	
	
	
	
	
	
	//FORGOT PASSWORD
		@RequestMapping(value="forgot/{a}",method=RequestMethod.POST)
		@ResponseBody
		public String sum(@PathVariable(value="a") String a)
		{
		try {
				
				MimeMessage mail=mailer.createMimeMessage();
				MimeMessageHelper helper=new MimeMessageHelper(mail);
				String from="nguyenthaibao157@gmail.com";
				helper.setFrom(from,from);
				helper.setTo(a);
				helper.setReplyTo(from, from);
				helper.setSubject("Yêu cầu thay đổi mật khẩu");
				String text="Chào quý khách,"+
				"<br> Vicent Shop đã nhận được yêu cầu thay đổi mật khẩu của quý khách"
				+"<br> Xin vui lòng hãy click vào đường dẫn sau để đổi mật khẩu: http://localhost:8080/banmohinh/shop/newpass.htm"
				+"<br> Mọi thắc mắc xin liên hệ qua số điện thoai: 0836 877 964";
				helper.setText(text,true);
				setMailFindPass(a);
				//Gửi mail
				mailer.send(mail);
				return "Successfully";
				
			} catch (Exception e) {
				return "Unsuccessfully";
			}	
		
		
		}
		@RequestMapping(value="newpass",method=RequestMethod.GET)
		public String changePass(ModelMap model)
		{
			Accounts account=new Accounts();
			account.setEmail(getMailFindPass());
			account.setRole("user");
			model.addAttribute("account",account);
			return "user/forgot-pass";
		}
		@RequestMapping(value="newpass",method=RequestMethod.POST)
		public String changePass(ModelMap model,HttpServletRequest request,@ModelAttribute("account")Accounts account)
		{
			String newPass=request.getParameter("new-password");
			if(newPass.equals(account.getPassword()))
			{
				Session session=factory.openSession();
				Transaction t=session.beginTransaction();
				try
				{
					session.update(account);
					t.commit();
					return productShow(model);
				}
				catch(Exception e)
				{
					t.rollback();
					model.addAttribute("message","ĐỔI KHÔNG THÀNH CÔNG");
					return changePass(model);
				}
			}
			else
			{
				model.addAttribute("message","MẬT KHẨU XÁC NHẬN KHÔNG TRÙNG KHỚP");
				return changePass(model);
			}
		}
	
	
	
	@RequestMapping("intro")
	public String introduce(ModelMap model)
	{
		model.addAttribute("getmail",getMail());
		model.addAttribute("getname",getName());
		return "user/introduce";
	}
	
	//REGISTER
	@RequestMapping(value="register",method=RequestMethod.GET)
	public String register(ModelMap model)
	{
		Users user=new Users();
		model.addAttribute("user",user);
		return "user/register";
	}
	
	@RequestMapping(value="register",method=RequestMethod.POST)
	public String register(ModelMap model,@ModelAttribute("user") Users user,@RequestParam("password") String password)
	{
		
		Accounts account =new Accounts();
		account.setPassword(password);
		account.setEmail(user.getEmail());
		account.setRole("user");
		
		Session session=factory.openSession();
		Transaction t=session.beginTransaction();
		try
		{
			session.save(account);
			t.commit();
		}
		catch(Exception e)
		{
			t.rollback();
		}
		
		session=factory.openSession();
		 t=session.beginTransaction();
		try
		{
			session.save(user);
			t.commit();
		}
		catch(Exception e)
		{
			t.rollback();
		}
		return register(model);
	}
}
