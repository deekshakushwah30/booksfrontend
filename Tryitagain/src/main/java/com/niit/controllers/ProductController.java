package com.niit.controllers;

 
import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;


import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.niit.model.Category;
import com.niit.model.Product;
import com.niit.service.ProductService;
@Controller
public class ProductController {
	@Autowired	   	 
	private ProductService productService;
	
	
	public ProductController(){
		System.out.println("Product Controller instantiated");
	}
	
	
	@RequestMapping("/getproductform")
	public String getProductForm(Model model)
	{
		List<Category> categories=productService.getAllCategories();
		model.addAttribute("categories",categories);
		model.addAttribute("product", new Product()); //  product=new Product();
		//model.addAttribute("product", new Product());
		return "productform";
	}

	
	@RequestMapping("/saveproduct")
	public String saveProduct(@Valid @ModelAttribute(name = "product") Product product, BindingResult result, Model model) 
	{
		if(result.hasErrors())
		{
		List<Category> categories=productService.getAllCategories();
	    model.addAttribute("categories",categories);
	    return "productform";
		}
      productService.saveProduct(product);
      MultipartFile image=product.getImage();
      Path path=Paths.get("C:\\Users\\pc\\workspace\\Tryitagain\\src\\main\\webapp\\WEB-INF\\images"+product.getId()+".jpg");
      try {
			image.transferTo(new File(path.toString()));
      } catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
      
		return "redirect:/getallproducts";
	}

	
	@RequestMapping("/getallproducts")
	public String getAllProducts(Model model)
	{   
		List<Product> products =productService.getAllProducts();
		model.addAttribute("products",products);
		return "productlist";
	}
	
	@RequestMapping ("/viewproduct/{id}")
	public String getProductById(@PathVariable int id,Model model)
	{
		Product product=productService.getProductById(id);
		model.addAttribute("Product",product);
		return "ViewProduct";
	}
	
	
	
	@RequestMapping("/geteditform/{id}")
	public String getEditForm(@PathVariable int id,Model model)
	{
		List<Category> categories=productService.getAllCategories();
		model.addAttribute("categories",categories);
		Product product=productService.getProductById(id);
		model.addAttribute("productobj",product);
		return "editform";
	}
	
	@RequestMapping("/editproduct")
	public String editproduct(@Valid @ModelAttribute(name = "productObj") Product product, BindingResult result, Model model) {
	
		if (result.hasErrors()) {
			List<Category> categories = productService.getAllCategories();
			model.addAttribute("categories", categories);
			return "editform";
		}

		productService.updateProduct(product);
		MultipartFile image = product.getImage();
		Path path=Paths.get("C:\\Users\\pc\\workspace\\Tryitagain\\src\\main\\webapp\\WEB-INF\\images"+product.getId()+".jpg");
		 try {
				image.transferTo(new File(path.toString()));
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		return "redirect:/getallproducts";
	}
  
  
  @RequestMapping("/deleteproduct/{id}")
  public String deleteProductById(@PathVariable int id)
  {
	  productService.deleteProduct(id);
	
	  return "redirect:/getallproduct";
 }
@RequestMapping("/searchbycategory")
public String selectByCategory(@RequestParam String searchCondition,Model model)
{
	model.addAttribute("products",productService.getAllProducts());
	if(searchCondition.equals("All"))
		model.addAttribute("searchcondition", "");
	else
		model.addAttribute("searchCondition",searchCondition);
	return "productlist";
}
}
     
