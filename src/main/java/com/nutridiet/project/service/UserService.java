package com.nutridiet.project.service;

import java.util.List;

import com.nutridiet.project.model.Nutritionist;
import com.nutridiet.project.model.User;

public interface UserService
{
	public String UserRegistration(User u);
	public User checkuserlogin(String email,String password);
	public String UpdateUserProfile(User user);
	public User displayUserByID(int uid);
	public String updatenutristatus(String status, int uid);
	public List<Nutritionist> displayNutritionists();
	
	
	
}
