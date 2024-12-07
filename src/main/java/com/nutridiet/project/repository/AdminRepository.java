package com.nutridiet.project.repository;



import java.util.List;

//import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
//import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.nutridiet.project.model.Admin;
import com.nutridiet.project.model.Nutritionist;
//import com.nutridiet.project.model.User;

//import jakarta.transaction.Transactional;

@Repository
public interface AdminRepository extends JpaRepository<Admin,String>
{
	@Query("select a from Admin a where a.username=?1 and a.password=?2")
	public Admin checkadminlogin(String uname,String pwd);
	
//	@Query("delete from employee e where e.contact?=1")
//	@Modifying
//	@Transactional
//	public int deleteemployeebudept(String contact);
	
	@Query("select b from User b where b.ubodytype=?1")
	public Admin findbybodytype(String bodytype);
	
	
	@Query("from Nutritionist p where p.nspecification=?1")
	public List<Nutritionist> viewallnutritionistsbynspecification(String nspecification);

}
