package com.paf.demo.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="seller")
public class Seller {

	@Id
	private int sellerId;
	private String username;
	private String fname;
	private String lname;
	private String phone;
	private String email;
	private String country;
	private String company;
	private String password;
	
	public Seller() {
		
	}
	
	public Seller(String username, String fname, String lname, String phone, String email, String country,
			String company, String password) {
		super();
		this.username = username;
		this.fname = fname;
		this.lname = lname;
		this.phone = phone;
		this.email = email;
		this.country = country;
		this.company = company;
		this.password = password;
	}
	
	public int getSellerId() {
		return sellerId;
	}
	public void setSellerId(int sellerId) {
		this.sellerId = sellerId;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "Seller [sellerId=" + sellerId + ", username=" + username + ", fname=" + fname + ", lname=" + lname
				+ ", phone=" + phone + ", email=" + email + ", country=" + country + ", company=" + company
				+ ", password=" + password + "]";
	}
	
	
	
}
