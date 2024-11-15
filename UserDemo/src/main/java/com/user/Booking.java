package com.user;

public class Booking {
	
	private int bookingId;
	private int cusId;
	private String cusName;
	private int quantity;
    private String email;
    private String phone;
    private String destination;
    private String departure;
    private String date;
    private double price;
    
    public Booking(int bookingId, int cusId, String cusName, int quantity, String email,  String phone, String destination, String departure, String date, double price) {
	   this.bookingId = bookingId;
	   this.cusId = cusId;
	   this.cusName = cusName;
	   this.quantity = quantity;
	   this.email = email;
   	   this.phone = phone;
	   this.destination = destination;
	   this.departure = departure;
	   this.date = date;
	   this.price = price;
    }

	public int getBookingId() {
		return bookingId;
	}

	public int getCusId() {
		return cusId;
	}
	
	public String getName() {
		return cusName;
	}
	
    public int getQuantity() {
		return quantity;
	}

	public String getEmail() {
		return email;
	}

	public String getPhone() {
		return phone;
	}

	public String getDestination() {
		return destination;
	}

	public String getDeparture() {
		return departure;
	}

	public String getDate() {
		return date;
	}

	public double getPrice() {
		return price;
	}

    

}
