package com.nutridiet.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.nutridiet.project.model.Nutritionist;
import com.nutridiet.project.model.User;
import com.nutridiet.project.service.AdminService;
import com.nutridiet.project.service.NutritionistService;
import com.nutridiet.project.service.UserService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class NutritionistController
{
	@Autowired
	private NutritionistService nutritionistService;
	
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private UserService userService;

	
	@GetMapping("nusignup")
	public ModelAndView nusignup()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("nusignup");
		return mv;
	}
	
	@GetMapping("nulogin")
	public ModelAndView nutrilogin()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("nulogin");
		return mv;
	}
	
	@PostMapping("insertnutritionist")
	public ModelAndView insertnutritionist(HttpServletRequest request)
	{
		String nname = request.getParameter("nname");
		String nemail = request.getParameter("nemail");	  
		String nage = request.getParameter("nage");
		String ngender = request.getParameter("ngender");
	    String ncontact=request.getParameter("ncontact");
	    String nspecification = request.getParameter("nspecification");	    
	    String nexperience = request.getParameter("nexperience");
	    String neducation=request.getParameter("neducation");
	    String npassword=request.getParameter("npassword");
	    String nstatus="Registered";
	    
	    Nutritionist nutri = new Nutritionist();
	    
	    nutri.setNname(nname);
	    nutri.setNemail(nemail);
	    nutri.setNage(nage);
	    nutri.setNgender(ngender);
	    nutri.setNcontact(ncontact);
	    nutri.setNspecification(nspecification);
	    nutri.setNexperience(nexperience);
	    nutri.setNeducation(neducation);
	    nutri.setNpassword(npassword);
	    nutri.setStatus(nstatus);
	      
	    String msg = nutritionistService.NutritionistRegistration(nutri);
	    
	    ModelAndView mv = new ModelAndView("nulogin");
	    mv.addObject("message", msg);
	    return mv;

	   }
	
	
	@PostMapping("checknutrilogin")
	public ModelAndView checknutrilogin(HttpServletRequest request) {
	    ModelAndView mv = new ModelAndView();

	    String nemail = request.getParameter("nemail");
	    String npassword = request.getParameter("npassword");

	    Nutritionist nutri = nutritionistService.checknutrilogin(nemail, npassword);

	    if (nutri != null) {
	        HttpSession session = request.getSession(); 
	        session.setAttribute("nutri", nutri);         
	        mv.setViewName("nuhome");                 
	    } else {
	        mv.setViewName("nulogin");                
	        mv.addObject("message", "Wrong Credentials Used");
	    }

	    return mv;
	}

	
	@GetMapping("nuhome")
	public ModelAndView nuhome()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("nuhome");
		return mv;
	}
	
	
	
	 @GetMapping("nutriprofile")
	  public ModelAndView nutriprofile()
	  {
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("nutriprofile");
	    return mv;
	  }
	  
	  //usersettings
	  
	  @GetMapping("nutrisettings")
	  public ModelAndView nutrisettings()
	  {
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("nutrisettings");
	    return mv;
	  }
	  
	  
	  @PostMapping("updatenutriprofile")
	  public ModelAndView updatenutriprofile(HttpServletRequest request) {
	      ModelAndView mv = new ModelAndView();

	      try {
	          // Extracting parameters from the request
	          int id = Integer.parseInt(request.getParameter("id"));
	          String name = request.getParameter("nname");
	          String email = request.getParameter("nemail");
	          String age = request.getParameter("nage");
	          String contact = request.getParameter("ncontact");
	          String specification = request.getParameter("nspecification");
	          String experience = request.getParameter("nexperience");
	          String education = request.getParameter("neducation");
	          String password = request.getParameter("npassword");

	          // Creating a Nutritionist object and setting its properties
	          Nutritionist nutritionist = new Nutritionist();
	          nutritionist.setId(id);
	          nutritionist.setNname(name);
	          nutritionist.setNemail(email);
	          nutritionist.setNage(age);
	          nutritionist.setNcontact(contact);
	          nutritionist.setNspecification(specification);
	          nutritionist.setNexperience(experience);
	          nutritionist.setNeducation(education);
	          nutritionist.setNpassword(password);

	          // Service call to update the nutritionist profile
	          String msg = nutritionistService.UpdateNutriProfile(nutritionist);

	          // Retrieve the updated Nutritionist object to set in session
	          Nutritionist n = nutritionistService.displayNutritionistById(id);

	          HttpSession session = request.getSession();
	          session.setAttribute("nutritionist", n);

	          // Setting the success view and message
	          mv.setViewName("updatesuccess");
	          mv.addObject("message", msg);
	      } catch (Exception e) {
	          // Handling exceptions and setting error view
	          mv.setViewName("updateerror");
	          mv.addObject("message", e);
	      }

	      return mv;
	  }

	  public ModelAndView updateerror()
	  {
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("updateerror");
	    return mv;
	  }  

	//  @GetMapping("timeout")
	//  public ModelAndView timeout() {
//	      ModelAndView mv = new ModelAndView();
//	      mv.setViewName("timeout");
//	      return mv;
	//  }
	  
	    @GetMapping("viewallusersfornutri") 
	    public ModelAndView viewallempsfornutri()
	    {
	      ModelAndView mv = new ModelAndView("viewallusersfornutri");
//	      long count = adminService.usercount();
//	        mv.addObject("count",count);
	        List<User> userlist = adminService.displayUsers();
	         mv.addObject("userlist", userlist);
	       
	      return mv;
	      
	      
	     
	    }
	    
	    
	    
	    @GetMapping("/viewUserForm/{userId}")
	    public ModelAndView viewUserForm(@PathVariable("userId") int userId) {
	        ModelAndView mv = new ModelAndView("nutriViewForm");

	        // Fetch the user data
	        User user = userService.displayUserByID(userId);
	        mv.addObject("user", user);

	        return mv;
	    }

	    @PostMapping("/submitResponse")
	    public ModelAndView submitResponse(@RequestParam("response") String response, 
	                                       @RequestParam("userId") int userId) {
	        
	        // Get the user by ID
	        User user = userService.displayUserByID(userId);

	        // Save the response (assuming a 'response' field in User model)
	        user.setUresponse(response);
	        userService.UpdateUserProfile(user);

	        ModelAndView mv = new ModelAndView("nutriHome");
	        mv.addObject("message", "Response submitted successfully.");
	        return mv;
	    }

	
		  @GetMapping("nutriViewForm")
		  public ModelAndView nutriViewForm()
		  {
		    ModelAndView mv = new ModelAndView();
		    mv.setViewName("nutriViewForm");
		    return mv;
		  }
	
	
}
