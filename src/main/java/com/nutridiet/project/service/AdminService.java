package com.nutridiet.project.service;


import java.util.List;

import com.nutridiet.project.model.Admin;
import com.nutridiet.project.model.Nutritionist;
import com.nutridiet.project.model.User;


public interface AdminService 
{
	public List<User> ViewAllUsers();
	public List<Nutritionist> ViewAllNutritionists();

	public Admin checkadminlogin(String uname,String pwd);
	public String deleteuser(int id);
	public List<User> displayUsers();
	public List<Nutritionist> displayNutritionists();

	public long usercount();

	// you can also create a spearate Service layer for the Customer 
	public String addUser(User c);
	public String addNutritionist(Nutritionist n);
	
	//public List<User> displayUsersByBodyType(String bodytype);
	

	public Admin ViewUserByBodytype(String bodytype);
	
	
	public List<Nutritionist> viewallnutritionistsbynspecification(String nspecification);
}
