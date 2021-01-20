package banhang.controller;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.swing.text.html.FormSubmitEvent.MethodType;
import javax.transaction.Transactional;

import org.apache.catalina.User;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.sun.org.apache.bcel.internal.generic.NEW;

import banhang.entity.Accounts;
import banhang.entity.OrderDetail;
import banhang.entity.OrderDetail_ID;
import banhang.entity.Orders;
import banhang.entity.Products;
import banhang.entity.Users;
import jdk.nashorn.internal.runtime.regexp.JoniRegExp.Factory;


@Transactional
@Controller
@RequestMapping("admin/")
public class AdminController {
	@Autowired
    SessionFactory factory;
	
	//LOGIN
	@RequestMapping(value="login",method=RequestMethod.GET)
	public String login(ModelMap model)
	{
		Accounts account=new Accounts();
		model.addAttribute("account",account);
		return "login/admin-login";
	}
	@RequestMapping(value="login",method=RequestMethod.POST)
	public String login(ModelMap model,@ModelAttribute("account")Accounts account)
	{
		Session session=factory.getCurrentSession();
		String hql="From Accounts a Where a.email='"+account.getEmail()+"'and  a.password='"+account.getPassword()+"'";
		Query query=session.createQuery(hql);
		List <Accounts> list=query.list();
		if(!list.isEmpty() && list.get(0).getRole().equals("admin"))
		{
			return productIndex(model);
		}
		else
		{
			model.addAttribute("message","ĐĂNG NHẬP KHÔNG HỢP LỆ!");
			return "login/admin-login";
		}
	}
	//FORGOT PASS
	@RequestMapping("forgot")
	public String forgotPass(ModelMap model)
	{
		return "login/forgot";
	}
	
	//USER
			@RequestMapping(value="user/index",method=RequestMethod.GET)
			public String userIndex(ModelMap model)
			{
				Session session=factory.getCurrentSession();
				String hql="FROM Users";
				Query query=session.createQuery(hql);
				List<Users> list=query.list();
				model.addAttribute("user",list);
				return "admin/user-index";
			}
			
			@RequestMapping(value="user/update/{idCustomer}",method=RequestMethod.GET)
			public String userUpdate(ModelMap model,@PathVariable("idCustomer") int id) 
			{
				Users user=new Users();
				Session session=factory.getCurrentSession();
				String hql="FROM Users U where U.id="+id;
				Query query=session.createQuery(hql);
				List<Users> list=query.list();
				user=list.get(0);
				user.setId(id);
				model.addAttribute("user",user);
				return"admin/user-update";
			}
			
			@RequestMapping(value="user/update",method=RequestMethod.POST)
			public String userUpdate(ModelMap model,@ModelAttribute("user") Users user)
			{
				Session session=factory.openSession();
				Transaction t=session.beginTransaction();
				try
				{
					session.update(user);
					t.commit();
				}
				catch(Exception e)
				{
					t.rollback();
					
				}
		

				return userIndex(model);
			}
	
	
	
	//Product
			@RequestMapping(value="product/index",method=RequestMethod.GET)
			public String productIndex(ModelMap model)
			{
				Session session=factory.getCurrentSession();
				String hql="FROM Products";
				Query query=session.createQuery(hql);
				List<Products> list=query.list();
				model.addAttribute("product",list);
				return "admin/product-index";
			}
		
			//INSERT PRODUCT
			@RequestMapping(value="product/insert",method=RequestMethod.GET)
			public String productInsert(ModelMap model)
			{
				Products product=new Products();
				model.addAttribute("product",product);
				return "admin/product-insert";
			}
			
			@RequestMapping(value="product/insert",method=RequestMethod.POST)
			public String productInsert(ModelMap model,@ModelAttribute("product") Products product
					,@RequestParam("image") MultipartFile image,BindingResult errors)
			{
				boolean check=true;
				Session session=factory.openSession();
				Transaction t=session.beginTransaction();
				product.setImageSource(image.getOriginalFilename());
				if(product.getProductName().equals(""))
				{
					check=false;
				}
				else if(product.getQuantity()==0)
				{
					check=false;
				}
				else if(product.getQuantity()==0)
				{
					check=false;
				}
				
				
				if(check==true)
				{
					try 
					  {
						session.save(product);
						//Commit để tác độg đến các table liên quan
						t.commit();
						model.addAttribute("message","THÊM THÀNH CÔNG");
					  } 
					catch (Exception e) {
						//Nếu có bị lỗi thì nó rollback ngưng hoạt động lại
						t.rollback();
						model.addAttribute("message","THÊM THẤT BẠI RỒI!");
					}
					finally {
						session.close();
					}
				}
				
				
				return productIndex(model);
				}
			
			//UPDATE PRODUCT
			@RequestMapping(value="product/update/{id}",method=RequestMethod.GET)
			public String productUpdate(ModelMap model,@PathVariable("id") int id)
			{
				Products product=new Products();
				Session session=factory.getCurrentSession();
				String hql="FROM Products P Where P.id="+id;
				Query query=session.createQuery(hql);
				List<Products> list=query.list();
				product=list.get(0);
				product.setId(id);
				model.addAttribute("product",product);
				return "admin/product-update";
			}
			
			@RequestMapping(value="product/update", method=RequestMethod.POST)
			public String productUpdate(ModelMap model,@ModelAttribute("product") Products product,
					@RequestParam("image") MultipartFile image)
			{
				boolean check=true;
				Session session=factory.openSession();
				Transaction t=session.beginTransaction();
				product.setImageSource(image.getOriginalFilename());
				if(product.getProductName().equals(""))
				{
					check=false;
				}
				else if(product.getQuantity()==0)
				{
					check=false;
				}
				else if(product.getQuantity()==0)
				{
					check=false;
				}
				if(check==true)
				{
					try
					{
						session.update(product);
						t.commit();
						model.addAttribute("message","Cập nhật thành công");
						
					}
					catch(Exception e)
					{
						t.rollback();
					}
				}
				
				
				return productIndex(model);
			}
			
			@RequestMapping(value="product/delete/{id}")
			public String productDelete(ModelMap model,@PathVariable("id") int id)
			{
				Session session=factory.getCurrentSession();
				String hql="FROM Products P Where P.id="+id;
				Query query=session.createQuery(hql);
				List<Products> list=query.list();
				if(list.isEmpty())
				{
				    session=factory.openSession();
					Transaction t=session.beginTransaction();
					Products product=new Products();
					product.setId(id);

					try
					{
						session.delete(product);
						t.commit();
						model.addAttribute("message","Xóa thành công");
						
					}
					catch(Exception e)
					{
						t.rollback();
					}
				}
				
				
				return productIndex(model);
			}
			
	// Orders
			
			@RequestMapping("orders/index")
			public String orderIndex(ModelMap model)
			{
				Session session=factory.getCurrentSession();
				String hql="from Orders o inner join o.user";
				Query query=session.createQuery(hql);	
				List<Object[]> listResult = query.list();
				ArrayList<Orders> listO=new ArrayList<>();
				ArrayList<Users> listU=new ArrayList<>();
				for (Object[] aRow : listResult) {

				    listO.add((Orders) aRow[0]);
				    listU.add((Users) aRow[1]);

				}
				model.addAttribute("orders",listO);
				model.addAttribute("users",listU);
				return "admin/order-index";
			}
			
	//Order Deatail
			@RequestMapping(value="orders/detail/{idOrder}")
			public String orderDetailIndex(ModelMap model,@PathVariable("idOrder") int id)
			{
				Session session=factory.getCurrentSession();
				String hql="from OrderDetail o  where o.orderId.id="+id;
				Query query=session.createQuery(hql);	
			//	List<Object[]> listResult = query.list();
				List<OrderDetail> listO=query.list();
			//	ArrayList<Products> listP=new ArrayList<>();
				//for (Object[] aRow : listResult) {

			//	    listO.add((OrderDetail) aRow[0]);
			//	    listP.add((Products) aRow[1]);

			//	}
				model.addAttribute("orders",listO);
			//	model.addAttribute("products",listP);

				return "admin/order-detail";
			}
	
	@RequestMapping("index")
	public String index(ModelMap model)
	{
		return productIndex(model);
	}
}
