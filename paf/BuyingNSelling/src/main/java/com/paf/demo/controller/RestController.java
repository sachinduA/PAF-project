package com.paf.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.paf.demo.model.Seller;
import com.paf.demo.services.SellerService;

@org.springframework.web.bind.annotation.RestController
public class RestController{

	@Autowired
	private SellerService sellerService;
	
	@GetMapping("/")
	public String Hello() {
		return "This is Seller Page";
	}
	
	@GetMapping("/saveSeller")
	public String saveSeller(@RequestParam String username,@RequestParam String fname,@RequestParam String lname,@RequestParam String phone,@RequestParam String email,@RequestParam String country,@RequestParam String company,@RequestParam String password) {
		
		Seller seller = new Seller(username,fname,lname,phone,email,country,company,password);
		sellerService.saveMySeller(seller);
		return"Seller's saved";
		
	}
	
}

