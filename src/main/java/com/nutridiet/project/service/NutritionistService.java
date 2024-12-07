package com.nutridiet.project.service;

import java.util.List;

import com.nutridiet.project.model.Nutritionist;

public interface NutritionistService {

    public String NutritionistRegistration(Nutritionist n);
    
    public Nutritionist checknutrilogin(String nemail, String npassword);
    
    // Method to fetch nutritionists based on their specification
    public List<Nutritionist> displayNutritionistsBySpecification(String nspecification);

    // Method to get nutritionists based on specification (this could be the same as above)
    public List<Nutritionist> getNutritionistsBySpecification(String specification);
    
    
//    public List<Nutritionist> viewallproductsbycategory(String nspecification);
    
    
    public String UpdateNutriProfile(Nutritionist nutritionist);
    public Nutritionist displayNutritionistById(int nid);
}
