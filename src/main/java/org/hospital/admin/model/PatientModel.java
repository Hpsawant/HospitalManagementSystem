package org.hospital.admin.model;

import java.sql.Date;

public class PatientModel {

	 private int pid;
	 private String name;
	 private String address;
	 private String contact;
	 private int age;
	 private String gender;
	 private String Email;
	
	 public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	private String category;

	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	
}
