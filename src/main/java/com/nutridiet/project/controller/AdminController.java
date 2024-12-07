package com.nutridiet.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.nutridiet.project.model.Admin;
import com.nutridiet.project.model.Nutritionist;
import com.nutridiet.project.model.User;
import com.nutridiet.project.service.AdminService;
import com.nutridiet.project.service.NutritionistService;
import com.nutridiet.project.service.UserService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class AdminController 
{
  @Autowired
  private AdminService adminService;
  
  @Autowired
  private UserService userService;
  
  @Autowired
  private NutritionistService nutritionistService;
  
  @GetMapping("adminlogin")
     public ModelAndView adminlogin()
     {
       ModelAndView mv = new ModelAndView();
       mv.setViewName("adminlogin");
       return mv;
     }
  
     
     @GetMapping("viewallusers") 
     public ModelAndView viewallemps()
     {
    	 ModelAndView mv = new ModelAndView("viewallusers");
    	 long count = adminService.usercount();
         mv.addObject("count",count);
         List<User> userlist = adminService.displayUsers();
   	     mv.addObject("userlist", userlist);
    	  
   	  return mv;
       
       
      
     }
     
     @GetMapping("viewallNutritionists") 
     public ModelAndView viewallNutritionists()
     {
    	 ModelAndView mv = new ModelAndView("viewallNutritionists");
//    	 long count = adminService.usercount();
//         mv.addObject("count",count);
         List<Nutritionist> nutritionistlist = adminService.displayNutritionists();
   	     mv.addObject("nutritionistlist", nutritionistlist);
    	  
   	  return mv;
       
     }
     
     @GetMapping("deleteuser") 
     public ModelAndView deleteuser()
     {
       ModelAndView mv = new ModelAndView();
       List<User> userlist = adminService.ViewAllUsers();
       mv.setViewName("deleteuser");
       mv.addObject("userlist",userlist);
       return mv;
     }
     
     @GetMapping("delete")
     public String deleteoperation(@RequestParam("id") int uid)
     {
    	 adminService.deleteuser(uid);
    	 return "redirect:/deleteuser"; //redirection to specific path
     }
     


     
     @PostMapping("checkadminlogin")
    // @ResponseBody
     public ModelAndView checkadminlogin(HttpServletRequest request)
     {
      ModelAndView mv = new ModelAndView();
      
       String auname = request.getParameter("auname");
       String apwd = request.getParameter("apwd");
       
       Admin admin = adminService.checkadminlogin(auname, apwd);
       
       if(admin!=null)
       {
    	   HttpSession session = request.getSession();
    	   session.setAttribute("admin", admin);  
	       mv.setViewName("adminhome");
	       long count = adminService.usercount();
	       mv.addObject("count",count);
       }
       else
       {
         //return "Admin Login Fail";
        mv.setViewName("adminloginfail");
        mv.addObject("message", "Login Failed");
       }
       return mv;
     }
     
     @GetMapping("adminhome")
     public ModelAndView adminhome()
     {
       ModelAndView mv = new ModelAndView();
       mv.setViewName("adminhome");
       
       long count = adminService.usercount();
       mv.addObject("count",count);
       
       return mv;
     }
     
     @GetMapping("adminlogout")
     public ModelAndView adminlogout()
     {
       ModelAndView mv = new ModelAndView();
       mv.setViewName("adminlogin");
       return mv;
     }
     
     @GetMapping("adduser")
     public String adduser(Model m)
     {
       m.addAttribute("user", new User());
       return "adduser"; //addcustomer.jsp
     }
     
     @GetMapping("addNutritionist")
     public String addNutritionist(Model m)
     {
       m.addAttribute("nutritionist", new Nutritionist());
       return "addNutritionist"; //addcustomer.jsp
     }

     @PostMapping("insertuseradmin")
     public ModelAndView insertuseradmin(@ModelAttribute("user") User u)
     {
       ModelAndView mv = new ModelAndView();
       
       mv.setViewName("adminusersuccess");
       
       String msg = adminService.addUser(u);
       mv.addObject("message", msg);
       
       return mv;
     }
     
     @PostMapping("insertNutritionistadmin")
     public ModelAndView insertNutritionistadmin(@ModelAttribute("nutritionist") Nutritionist n)
     {
       ModelAndView mv = new ModelAndView();
       
       mv.setViewName("adminnutrisuccess");
       
       String msg = adminService.addNutritionist(n);
       mv.addObject("message", msg);
       
       return mv;
     }
     
     @GetMapping("viewbybodytype")
     public ModelAndView  viewbybodytype()
     {
     	   List<User> userlist=adminService.displayUsers();
     	   ModelAndView mv=new ModelAndView("viewbybodytype");
     	   mv.addObject("userlist",userlist);
     	   return mv;
     }

		/*
		 * @GetMapping("viewbybodytype") public ModelAndView Viewbybodytype() {
		 * ModelAndView mv = new ModelAndView("viewbybodytype"); long count =
		 * adminService.usercount(); mv.addObject("count",count); List<User> userlist =
		 * adminService.displayUsersByBodyType(); mv.addObject("userlist", userlist);
		 * 
		 * return mv; }
		 */
     

     
}