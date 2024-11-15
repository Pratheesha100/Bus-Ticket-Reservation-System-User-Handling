package com.user;

public class Passenger {
	 
    private int id;
    private String fname;
    private String lname;
    private String address;
    private String email;
    private String phone;
    private String username;
    private String password;
    
    public Passenger(int id, String fname, String lname, String email, String address, String phone, String username, String password) {
	this.id = id;
	this.fname = fname;
	this.lname = lname;
	this.email = email;
	this.address = address;
	this.phone = phone;
	this.username = username;
	this.password = password;
    }

    public int getId() {
        return id;
    }

    public String getFname() {
        return fname;
    }
    
    public String getLname() {
        return lname;
    }

    public String getEmail() {
        return email;
    }
    
    public String getAddress() {
        return address;
    }

    public String getPhone() {
        return phone;
    }

    public String getUsername() {
        return username;
    }

    public String getPassword() {
        return password;
    }    
}