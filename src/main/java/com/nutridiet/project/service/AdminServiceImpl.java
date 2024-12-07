package com.nutridiet.project.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nutridiet.project.model.Admin;
import com.nutridiet.project.model.Nutritionist;
import com.nutridiet.project.model.User;
import com.nutridiet.project.repository.AdminRepository;
import com.nutridiet.project.repository.NutritionistRepository;
import com.nutridiet.project.repository.UserRepository;



@Service
public class AdminServiceImpl implements AdminService
{

	@Autowired 
	private UserRepository userRepository;

	@Autowired
	private AdminRepository adminRepository;
	
	@Autowired
	private NutritionistRepository nutritionistRepository;
	
	
	@Override
	public List<User> ViewAllUsers() {
		return userRepository.findAll();
	}

	@Override
	public Admin checkadminlogin(String uname, String pwd) {
		return adminRepository.checkadminlogin(uname, pwd);
	}

	@Override
	public String deleteuser(int id) 
	{
		userRepository.deleteById(id);
		return "User Deleted Successfully";
	}



	@Override
	public long usercount() {
		return userRepository.count();
	}	


	@Override
	public String addUser(User u)
	{
		userRepository.save(u);
		return "User Added Successfully";
	}

	@Override
	public List<User> displayUsers() {
		return userRepository.findAll();
	}

	@Override
	public Admin ViewUserByBodytype(String bodytype) {
		return adminRepository.findbybodytype(bodytype);
	}

	@Override
	public String addNutritionist(Nutritionist n) {
		nutritionistRepository.save(n);
		return "Nutritionist Added Successfully";
	}

	@Override
	public List<Nutritionist> displayNutritionists() {
		return nutritionistRepository.findAll();
	}

	@Override
	public List<Nutritionist> ViewAllNutritionists() {
		return nutritionistRepository.findAll();
	}

	@Override
	public List<Nutritionist> viewallnutritionistsbynspecification(String nspecification) {
		return adminRepository.viewallnutritionistsbynspecification(nspecification);
	}

	@Override
	public String updatenutristatus(String status, int uid) {
		nutritionistRepository.updatenutristatus(status, uid);
		 return "Employee Status updated Successfully";
	}






	
	
}
