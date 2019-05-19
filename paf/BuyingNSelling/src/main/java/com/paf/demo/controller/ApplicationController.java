package com.paf.demo.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.paf.demo.model.Seller;
import com.paf.demo.services.SellerService;

@Controller
public class ApplicationController {

	@Autowired
	private SellerService sellerService;
	
	@RequestMapping("/welcome")
	public String Welcome() {
		
		return "welcomepage";
	}
	
	@RequestMapping("/sellerDetails")
	public String sellerDetails(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_SELLERDETAILS");
		return "welcomepage";
	}
	
	@PostMapping("save_Seller")
	public String addSeller(@ModelAttribute Seller seller,BindingResult bindingResult,HttpServletRequest request) {
		
		sellerService.saveMySeller(seller);
		request.setAttribute("mode", "MODE_HOME");
		return "welcomepage";
	}
	
	@GetMapping("/showSeller")
	public String showAllSellers(HttpServletRequest request) {
		
		request.setAttribute("mode", "MODE_SELLERS");
		return "welcomepage";
	}
	
}
