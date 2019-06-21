package controllers;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import hib.Cart;
import hib.HibControl;
import hib.ProdControl;
import util.HibernateUtil;

@Controller
public class MainController {
	@Autowired
	 UserCreation UC;
	 String path;
	 public static String uploadDirectory = System.getProperty("user.dir")+"/uploads";
	 
@RequestMapping(value="/welcome")
public String displayNewUserForm(@RequestParam("fname") String fname ,@RequestParam("lname") String lname
		,@RequestParam("email") String email ,@RequestParam("phoneNumber")int phoneNumber ,@RequestParam("address")String address
		,@RequestParam("City")String city,@RequestParam("Country") String country ,@RequestParam("UploadedPic")MultipartFile[] pic 
		,@RequestParam("Desription")String desc,@RequestParam("title")String title,@RequestParam("price")int price) {
	
	 Path fileNameAndPath = null;
	 StringBuilder fileNames = new StringBuilder();
	  for (MultipartFile file : pic) {
		   fileNameAndPath = Paths.get(uploadDirectory, file.getOriginalFilename());
		   fileNames.append(file.getOriginalFilename()+" ");
		   fileNameAndPath.toString();
		  try {
			Files.write(fileNameAndPath, file.getBytes());
		} catch (IOException e) {
			e.printStackTrace();
		}
	  }
	  
	HibControl user=new HibControl(1,fname,lname,email,phoneNumber,address,city,country);
	ProdControl prod =new ProdControl(fileNames.toString(),fileNameAndPath.toString(),desc,title,price);
	ModelAndView mv = new ModelAndView("buy.jsp");
	UC.saveUser(user);
	UC.SaveProd(prod);	 
	 return "/buy";
}

@RequestMapping(value = { "/buy", "/buy.jsp"})
public String boo(Model model)
{
	 Session session = HibernateUtil.getSessionFactory().openSession();
    List<ProdControl> products = session.createQuery(String.format("from ProdControl"), ProdControl.class).list();
    model.addAttribute("prod",products);
    return "buy.jsp";
    
}
@RequestMapping(value = "confirm")
public String boo1(Model model)
{
	 Session session = HibernateUtil.getSessionFactory().openSession();
	    List<Cart> Cart = session.createQuery(String.format("from Cart"), Cart.class).list();
    model.addAttribute("cart",Cart);
    return "confirmPurchase.jsp";
    
}
@RequestMapping("delete")
public String boo4(Model model,@RequestParam("id") int id)
{
	System.out.println(id);
	Session session = HibernateUtil.getSessionFactory().openSession();
    session.beginTransaction();
    Cart Pr=new Cart();
    Pr.setId(id);
    Pr=(Cart) session.get(Cart.class,id);
    session.delete(Pr);
    session.getTransaction().commit();
    List<Cart> prod = session.createQuery(String.format("from Cart")).list();
    session.close();
    model.addAttribute("cart",prod);
	return "confirmPurchase.jsp";
}
@RequestMapping(value = "confirmedBuy")
public String boo3(Model model , @RequestParam("NOC") String NOC , @RequestParam("CCNO") int CCNO)
{
	System.out.println("here");
	 Session session = HibernateUtil.getSessionFactory().openSession();
	 List<Cart> Cart = session.createQuery(String.format("from Cart"), Cart.class).list();
    model.addAttribute("cart",Cart);
    model.addAttribute("NOC",NOC);
    model.addAttribute("CCNO",CCNO);

    return "confirmedBuy.jsp";
    
}
@RequestMapping(value = "toCart" )
public String boo2(Model model , @RequestParam("id") String  id , @RequestParam("quantity") int quantity)
{
	System.out.println(id);
	 Session session = HibernateUtil.getSessionFactory().openSession();
    List<ProdControl> products = session.createQuery(String.format("from ProdControl"), ProdControl.class).list();
    List<Cart> Cart = session.createQuery(String.format("from Cart"), Cart.class).list();
    for (ProdControl pro: products) {
    if (pro.getPicId()==Integer.parseInt(id)) {
    	Cart cart=new Cart(Integer.parseInt(id),pro.getTitle(),quantity,pro.getPrice());
    	UC.SaveCart(cart);
    }
    }
    model.addAttribute("cart",Cart);
    model.addAttribute("id",id);
    return "buy";
    
}
 



}
