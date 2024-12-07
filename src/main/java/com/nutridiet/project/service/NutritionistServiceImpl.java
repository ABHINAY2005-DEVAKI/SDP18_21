package com.nutridiet.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nutridiet.project.model.Nutritionist;
import com.nutridiet.project.repository.NutritionistRepository;

@Service
public class NutritionistServiceImpl implements NutritionistService {

    @Autowired
    private NutritionistRepository nutritionistRepository;

    @Override
    public String NutritionistRegistration(Nutritionist n) {
        nutritionistRepository.save(n);
        return "Nutritionist Added Successfully";
    }

    @Override
    public Nutritionist checknutrilogin(String nemail, String npassword) {
        return nutritionistRepository.checknutrilogin(nemail, npassword);
    }

	@Override
	public List<Nutritionist> displayNutritionistsBySpecification(String nspecification) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Nutritionist> getNutritionistsBySpecification(String specification) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String UpdateNutriProfile(Nutritionist nutritionist) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Nutritionist displayNutritionistById(int nid) {
		// TODO Auto-generated method stub
		return null;
	}

    // This method retrieves the list of nutritionists based on specification
//    @Override
//    public List<Nutritionist> displayNutritionistsBySpecification(String nspecification) {
//        return nutritionistRepository.findByNspecification(nspecification);
//    }
//
//    // Correctly implemented method to get the nutritionists based on specification
//    @Override
//    public List<Nutritionist> getNutritionistsBySpecification(String specification) {
//        return nutritionistRepository.findByNspecification(specification);
//    }

//	@Override
//	public List<Nutritionist> viewallproductsbycategory(String nspecification) {
//		return nutritionistRepository.findByNspecification(nspecification);
//	}
    
    
    
}
