package com.paf.demo.services;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.paf.demo.model.Seller;
import com.paf.demo.repository.SellerRepository;

@Service
@Transactional
public class SellerService {

	
	private final SellerRepository sellerRepository;
	
	
	public SellerService(SellerRepository sellerRepository) {
		this.sellerRepository=sellerRepository;
	}
	public void saveMySeller(Seller seller) {
		
		sellerRepository.save(seller);
	}
	
	public List<Seller>showAllSellers(){
		List<Seller> sellers = new ArrayList<Seller>();
		for(Seller seller:sellerRepository.findAll()) {
			sellers.add(seller);
		}
		return sellers;
	}
	
}
