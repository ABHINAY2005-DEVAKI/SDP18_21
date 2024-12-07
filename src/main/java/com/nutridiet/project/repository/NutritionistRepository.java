package com.nutridiet.project.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.nutridiet.project.model.Nutritionist;

import jakarta.transaction.Transactional;
@Repository
public interface NutritionistRepository extends JpaRepository<Nutritionist, Integer>
{
	@Query("select n from Nutritionist n where n.nemail=?1 and n.npassword=?2")
	public Nutritionist checknutrilogin(String nemail,String npassword);
	
	
//	public List<Nutritionist> findBynspecification(String nspecification);
//	public List<Nutritionist> findByNspecification(String nspecification);
	

	@Query("update Nutritionist n set n.status=?1 where n.id=?2")
	@Modifying  // DML 
	@Transactional  // to enable auto commit
	public int updatenutristatus(String status,int eid);
	

	
	
	@Query("update Nutritionist n set n.nage=?1 where n.id=?2")
	  @Modifying
	  @Transactional 
	  public int UpdateNutriProfile(String nage,int nid);
}
