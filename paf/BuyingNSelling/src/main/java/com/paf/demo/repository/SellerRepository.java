package com.paf.demo.repository;

import org.springframework.data.repository.CrudRepository;

import com.paf.demo.model.Seller;

public interface SellerRepository extends CrudRepository<Seller, Integer> {

}
