package com.nutridiet.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nutridiet.project.model.Nutritionist;
import com.nutridiet.project.model.User;
import com.nutridiet.project.repository.NutritionistRepository;
import com.nutridiet.project.repository.UserRepository;

@Service
public class UserServiceImpl implements UserService
{
	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private NutritionistRepository nutritionistRepository;

	@Override
	public String UserRegistration(User u)
	{
		userRepository.save(u);
		return "User details added successfully";
	}
		
	@Override
	public User checkuserlogin(String email, String password)
	{
		return userRepository.checkemplogin(email, password);
	}

	@Override
	public String UpdateUserProfile(User user)
	{
		User u = userRepository.findById(user.getId()).get();
	    
	    u.setUusername(user.getUusername());
	    u.setUcontact(user.getUcontact());
	    u.setUage(user.getUage());
	    u.setUgender(user.getUgender());
	    u.setUpassword(user.getUpassword());
	    u.setUrole(user.getUrole());
	    u.setUbodytype(user.getUbodytype());
	    
	    userRepository.save(u);
	    
	    return "User Updated Successfully";
	}
	
	@Override
	public User displayUserByID(int id) {
		return userRepository.findById(id).get();
	}
	
	@Override
	public String updatenutristatus(String status, int uid) {
		 nutritionistRepository.updatenutristatus(status, uid);
		 return "Employee Status updated Successfully";
	}

	@Override
	public List<Nutritionist> displayNutritionists() {
		
		return nutritionistRepository.findAll();
	}


}
