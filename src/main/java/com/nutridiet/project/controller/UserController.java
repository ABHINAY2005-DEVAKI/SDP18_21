package com.nutridiet.project.controller;

import java.util.List;

//import java.net.http.HttpRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
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
public class UserController
{
	@Autowired
	private UserService userService;
	
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private NutritionistService nutritionistService;
	
	@GetMapping("/")
	public ModelAndView home() {
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("home");
	    return mv;
	}

	
	@GetMapping("userreg")
	public ModelAndView userreg()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("userreg");
		return mv;
	}
	
	@GetMapping("userlogin")
	public ModelAndView userlogin()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("userlogin");
		return mv;
	}
	
	@PostMapping("insertuser")
	public ModelAndView insertemp(HttpServletRequest request)
	{
		String uemail = request.getParameter("uemail");
	    String uname = request.getParameter("uname");
	    String upassword = request.getParameter("upassword");
	    String uage = request.getParameter("uage");
	    String urole = request.getParameter("urole");
	    String ucontact=request.getParameter("ucontact");
	    String ugender=request.getParameter("ugender");
	    String ubodytype=request.getParameter("ubodytype");
	    
	    User user = new User();
	    user.setUemail(uemail);
	    user.setUusername(uname);
	    user.setUpassword(upassword);
	    user.setUage(uage);
	    user.setUrole(urole);
	    user.setUcontact(ucontact);
	    user.setUgender(ugender);
	    user.setUbodytype(ubodytype);
	      
	    String msg = userService.UserRegistration(user);
	    
	    ModelAndView mv = new ModelAndView("regsuccess");
	    mv.addObject("message", msg);
	    return mv;

	   }
	
	
	@PostMapping("checkuserlogin")
	public ModelAndView checkuserlogin(HttpServletRequest request) {
	    ModelAndView mv = new ModelAndView();

	    String uemail = request.getParameter("uemail");
	    String upwd = request.getParameter("upwd");

	    User user = userService.checkuserlogin(uemail, upwd);

	    if (user != null) {
	        HttpSession session = request.getSession(); 
	        session.setAttribute("user", user);         
	        mv.setViewName("userhome");                 
	    } else {
	        mv.setViewName("userlogin");                
	        mv.addObject("message", "Wrong Credentials Used");
	    }

	    return mv;
	}

	
	@GetMapping("userhome")
	public ModelAndView userhome()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("userhome");
		return mv;
	}
	
	//12_girls_athletics
	
	@GetMapping("12_girls_athletics")
	public ModelAndView Twlevegirlsathletics()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("12_girls_athletics");
		return mv;
	}
	
	//12_girls_hourglass
	
	@GetMapping("12_girls_hourglass")
	public ModelAndView Twlevegirlshourglass()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("12_girls_hourglass");
		return mv;
	}
	
	// 12_girls_inverted_triangle
	
	@GetMapping("12_girls_inverted_triangle")
	public ModelAndView Twlevegirlsinvertedtriangle()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("12_girls_inverted_triangle");
		return mv;
	}
	
	//12_girls_rectangle
	
	@GetMapping("12_girls_rectangle")
	public ModelAndView Twlevegirlsrectangle()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("12_girls_rectangle");
		return mv;
	}
	
	//12_girls_round
	
	@GetMapping("12_girls_round")
	public ModelAndView Twlevegirlsround()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("12_girls_round");
		return mv;
	}
	
	//12_male_ectomorph
	
	@GetMapping("12_male_ectomorph")
	public ModelAndView Twlevemaleectomorph()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("12_male_ectomorph");
		return mv;
	}
	
	//12_male_endomorph
	
	@GetMapping("12_male_endomorph")
	public ModelAndView Twlevemaleendomorph()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("12_male_endomorph");
		return mv;
	}
	
	//12_male_mesomorph
	
	@GetMapping("12_male_mesomorph")
	public ModelAndView Twlevemalemesomorph()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("12_male_mesomorph");
		return mv;
	}
	
	//20_boys_ectomorph
	
	@GetMapping("20_boys_ectomorph")
	public ModelAndView Twentyboysectomorph()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("20_boys_ectomorph");
		return mv;
	}
	
	//20_boys_endomorph
	
	@GetMapping("20_boys_endomorph")
	public ModelAndView Twentyboysendomorph()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("20_boys_endomorph");
		return mv;
	}
	
	//20_boys_mesomorph
	
	@GetMapping("20_boys_mesomorph")
	public ModelAndView Twentyboysmesomorph()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("20_boys_mesomorph");
		return mv;
	}
	
	//20_girls_ectomorph
	
	@GetMapping("20_girls_ectomorph")
	public ModelAndView Twentygirlsectomorph()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("20_girls_ectomorph");
		return mv;
	}
	
	//20_girls_endomorph
	
	@GetMapping("20_girls_endomorph")
	public ModelAndView Twentygirlsendomorphh()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("20_girls_endomorph");
		return mv;
	}
	
	//20_girls_mesomorph
	
	@GetMapping("20_girls_mesomorph")
	public ModelAndView Twentygirlsmesomorph()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("20_girls_mesomorph");
		return mv;
	}
	
	//my_food_age_selection
	
	@GetMapping("my_food_age_selection")
	public ModelAndView myfoodageselection()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("my_food_age_selection");
		return mv;
	}
	
	//my_health_status_list
	
	@GetMapping("my_health_status_list")
	public ModelAndView myhealthstatuslist()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("my_health_status_list");
		return mv;
	}
	
	//my_health_status
	
	@GetMapping("my_health_status")
	public ModelAndView myhealthstatus()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("my_health_status");
		return mv;
	}
	
	//mydiet
	
	@GetMapping("mydiet")
	public ModelAndView mydiet()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("mydiet");
		return mv;
	}
	
	//myfood_daily
	
	@GetMapping("myfood_daily")
	public ModelAndView myfooddaily()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("myfood_daily");
		return mv;
	}
	
	//mytimer_food
	
	@GetMapping("mytimer_food")
	public ModelAndView mytimerfood()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("mytimer_food");
		return mv;
	}
	
	//mytimers
	
	@GetMapping("mytimers")
	public ModelAndView mytimers()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("mytimers");
		return mv;
	}
	
	//regsuccess
	
	@GetMapping("regsuccess")
	public ModelAndView regsuccess()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("regsuccess");
		return mv;
	}
	
	//user_age
	
	@GetMapping("user_age")
	public ModelAndView userage()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user_age");
		return mv;
	}
	
	//user_body_12_20
	
	@GetMapping("user_body_12_20")
	public ModelAndView userbodytwelveandtwenty()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user_body_12_20");
		return mv;
	}
	
	//user_body_20_45
	
	@GetMapping("user_body_20_45")
	public ModelAndView userbodytwentyandfourty()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user_body_20_45");
		return mv;
	}
	
	//user_children
	
	@GetMapping("user_children")
	public ModelAndView userchildren()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user_children");
		return mv;
	}
	
	//userprofile
	
	@GetMapping("userprofile")
	public ModelAndView userprofile()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("userprofile");
		return mv;
	}
	
	//usersettings
	
	@GetMapping("usersettings")
	public ModelAndView usersettings()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("usersettings");
		return mv;
	}
	
	@PostMapping("updateuserprofile")
	   public ModelAndView updateuserprofile(HttpServletRequest request)
	   {
	     ModelAndView mv = new ModelAndView();
	     
	    try
	    {
	        int id = Integer.parseInt(request.getParameter("id"));
	        String name = request.getParameter("uname");
	        String gender = request.getParameter("ugender");
	        String dob = request.getParameter("uage");
	        String role = request.getParameter("urole");
	        String password = request.getParameter("upassword");
	        String contact = request.getParameter("ucontact");
	        String bodytype = request.getParameter("ubodytype");
	      
	        User user = new User();
	        user.setId(id);
	        user.setUusername(name);
	        user.setUgender(gender);
	        user.setUage(dob);
	        user.setUrole(role);
	        user.setUpassword(password);
	        user.setUcontact(contact);
	        user.setUbodytype(bodytype);
	        
	        String msg = userService.UpdateUserProfile(user);
	        
	        User u = userService.displayUserByID(id);
	        
	        HttpSession session = request.getSession();
	        session.setAttribute("user",u); 
	       
	       
	        mv.setViewName("updatesuccess");
	        mv.addObject("message", msg);
	      
	    }
	    catch(Exception e)
	    {
	      mv.setViewName("updateerror");
	      mv.addObject("message", e);
	    }
	      return mv;
	   }
	
	//updateerror
	public ModelAndView updateerror()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("updateerror");
		return mv;
	}
	
	// usersessionexpiry
	@GetMapping("timeout")
	public ModelAndView timeout() {
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("timeout");
	    return mv;
	}
	
	// usernutri
	@GetMapping("usernutri")
	public ModelAndView usernutri() {
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("usernutri");
	    return mv;
	}
	
    @GetMapping("/sportsNutritionist")
	public ModelAndView sportsNutritionist() {
	    ModelAndView mv = new ModelAndView("sportsNutritionists");
	    List<Nutritionist> nutritionistList = adminService.displayNutritionists();
	    List<Nutritionist> filteredList = nutritionistList.stream()
	            .filter(n -> "sportsnutritionist".equalsIgnoreCase(n.getNspecification()))
	            .toList();
	    mv.addObject("nutritionistlist", filteredList);
	    return mv;
	}

    // Intersction pages
    
//    @GetMapping("interaction_sports")
//    public ModelAndView interaction_sports() {
//	    ModelAndView mv = new ModelAndView();
//	    mv.setViewName("interaction_sports");
//	    return mv;
//	}
    
    @GetMapping("interaction_sports")
    public ModelAndView interaction_sports() {
        ModelAndView mv = new ModelAndView("interaction_sports");
        List<Nutritionist> nutritionistlist = userService.displayNutritionists();  // Fetch the latest status from DB
        mv.addObject("nutritionistlist", nutritionistlist);
        return mv;
    }

    @GetMapping("interaction_sports_up")
    public String updateNutritionistStatus(@RequestParam("id") int eid, @RequestParam("status") String status) {
        // Update the status in the database
        userService.updatenutristatus(status, eid);

        // If the status is 'Rejected', redirect to the same page so it can be highlighted
        if (status.equals("Rejected")) {
            return "redirect:/interaction_sports";  // Page reloads with updated status
        }
       
        // If status is 'Accepted', redirect to the nutri_user_intro page
        return "redirect:/nutri_user_intro";

    }
    
    
    
    @GetMapping("interaction_cardiac")
    public ModelAndView interaction_cardiac() {
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("interaction_cardiac");
	    return mv;
	}
    @GetMapping("interaction_general")
    public ModelAndView interaction_general() {
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("interaction_general");
	    return mv;
	}
    @GetMapping("interaction_teenage")
    public ModelAndView interaction_teenage() {
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("interaction_teenage");
	    return mv;
	}
    @GetMapping("interaction_weightloss")
    public ModelAndView interaction_weightloss() {
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("interaction_weightloss");
	    return mv;
	}

    
    @GetMapping("nutri_user_intro")
    public ModelAndView nutri_user_intro() {
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("nutri_user_intro");
	    return mv;
	}
    
    @GetMapping("viewnutritionistsbypecification")
    public ModelAndView  viewproductsbycategorydemo()
    {
         ModelAndView mv=new ModelAndView("viewnutritionistsbypecification");
         return mv;
    }

    
    @PostMapping("displayproductsbycategory")
    public ModelAndView  viewproductsbycategorydemo(HttpServletRequest request)
    {
    	String nspecification = request.getParameter("nspecification");
       
 	   	List<Nutritionist> nutrilist=adminService.viewallnutritionistsbynspecification(nspecification);
         ModelAndView mv=new ModelAndView("displaynutritionistbyspecification");
         mv.addObject("nutrilist",nutrilist);
         return mv;
    }
    
    
    
    
    
    @GetMapping("updatenutristatus") 
    public ModelAndView updatenutristatus()
    {
      ModelAndView mv = new ModelAndView();
      List<Nutritionist> nutrilist = adminService.ViewAllNutritionists();
      mv.setViewName("updatenutristatus"); //(jsp file)
      mv.addObject("nutrilist",nutrilist);
      return mv;
    }
    
    @GetMapping("updatestatus")
    public String updatestatus(@RequestParam("id") int eid,@RequestParam("status") String status)
    {
     adminService.updatenutristatus(status, eid);
     return "redirect:/updateempstatus";
      
    }
    
    
    @GetMapping("meeting")
    public ModelAndView meeting() {
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("meeting");
	    return mv;
	}
	
}
