package com.user;
import java.util.List;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class UserDBUtil {
	private static boolean isSuccess;
    private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	    
		public static boolean insertPassenger( String Fname, String Lname, String email, String address, String phone,String username, String password ) {
			
			try {
				//create the database connection
				 con = DBconnect.getConnection();
				 stmt = con. createStatement();
			    // Inserting the user input's values to the passenger table using the sql query
		        String sql = "insert into passenger values ( 0,'"+Fname+"', '"+Lname+"', '"+email+"', '"+address+"', '"+phone+"', '"+username+"', '"+password+"' )";
	            int rs = stmt.executeUpdate(sql);
			   
	 	          if( rs > 0 ) {
	 	            	isSuccess = true;
			        }
			      else {
			           isSuccess = false;
		            }
	      	   }
			
		   catch(Exception e){
				   e.printStackTrace(); 
			}
			finally {
		        // check the resources and close the resourses properly
		        try { if (rs != null) rs.close(); } catch (SQLException e) { e.printStackTrace(); }
		        try { if (stmt != null) stmt.close(); } catch (SQLException e) { e.printStackTrace(); }
		        try { if (con != null) con.close(); } catch (SQLException e) { e.printStackTrace(); }
		    }

			
		     return isSuccess; 
	}
		
		
		
		// catch the variables from the login servlet and validate connection
		public static boolean validate( String userType, String userName, String password ) {
			
			try {
				//create the database connection
				con = DBconnect.getConnection();
				stmt = con.createStatement();
				
				// if user is a passenger
				if("Passenger".equals( userType ) ) {
					String sql = "select * from passenger where username='"+userName+"' and password='"+password+"' ";
					rs = stmt.executeQuery(sql);
				}
				//if user is the admin
				if("Admin".equals( userType ) ) {
					String sql = "select * from admintb where username='"+userName+"' and password='"+password+"' ";
					rs = stmt.executeQuery(sql);
				}
				
				
				if ( rs.next() ) {
					isSuccess = true; 
				} else {
					isSuccess = false; 
				}
				
			}
			
			 catch ( Exception e ) {
				e.printStackTrace();
			}
			 finally {
				   
				 try {  // check the resources and close the resourses properly
		                if (rs != null) rs.close();
		                if (stmt != null) stmt.close();
		                if (con != null) con.close();
		            } catch (SQLException e) {
		                e.printStackTrace();
		            }
				}
			
			return isSuccess; 
		}	
		
		
		
		
	    
		 public static List <Passenger> getPassenger( String userName ){
			 
				ArrayList<Passenger> passenger = new ArrayList<>();
				
				try {
					//create the database connection
					con = DBconnect.getConnection();
					stmt = con.createStatement();
					
					String sql = "select * from passenger where username='"+userName+"'";
					rs = stmt.executeQuery(sql);
					
					while( rs.next() ) {
						
						int id = rs.getInt(1);
						String fname = rs.getString(2);
						String lname = rs.getString(3);
						String email = rs.getString(4);
						String address = rs.getString(5);
						String phone = rs.getString(6);
						String username = rs.getString(7);
						String password = rs.getString(8);
						
						Passenger ps = new Passenger(id, fname, lname, email,address, phone, username, password);
						passenger.add(ps);
					}
				}
				
				catch(Exception e){
					e.printStackTrace(); 
				}
				finally {
			        
					try {
						// check the resources and close the resourses properly
		                if (rs != null) rs.close();
		                if (stmt != null) stmt.close();
		                if (con != null) con.close();
		            } catch (SQLException e) {
		                e.printStackTrace();
		            }
			    }

				return passenger;  
			}
		 
		  
		  public static boolean updateUser(String id, String fname, String lname, String email, String phone, String address, String username, String password){
		     
				try {
					  //create the database connection
					  con = DBconnect.getConnection();
					  stmt = con.createStatement();
					 // int convertedID = Integer.parseInt(id);
					  
					  String sql = "UPDATE passenger SET Fname='"+fname+"', Lname='"+lname+"', email='"+email+"', address='"+address+"',username='"+username+"',password='"+password+"' WHERE passengerId='"+id+"' ";
					  int rs = stmt.executeUpdate(sql);
					  
					  if( rs > 0) {
					      isSuccess = true;
				        }
				        else {
					      isSuccess = false;
				        }
			     }catch(SQLException e) {
			    	 e.printStackTrace();  
			     }
				finally {
			        
					try {
						// check the resources and close the resourses properly
		                if (rs != null) rs.close();
		                if (stmt != null) stmt.close();
		                if (con != null) con.close();
		            } catch (SQLException e) {
		                e.printStackTrace();
		            }
			    }
			
		       return isSuccess;
		}
		 
		 
		 
		 
		    // Retrieve the data from a particular user id from the passenger table and pass to the Passenger class
		    public static List<Passenger> getPassengerDetails(String Id) {
		    	
		    	int convertedID = Integer.parseInt(Id);
		    	
		    	ArrayList<Passenger> pas = new ArrayList<>();
		    	
		    	try {
		    		//create the database connection
		    		con = DBconnect.getConnection();
		    		stmt = con.createStatement();
		    		
		    		String sql = "select * from passenger where passengerId='"+convertedID+"' ";
		    		rs = stmt.executeQuery(sql);
		    		
		    		
		    		while(rs.next()) {
		    			int id = rs.getInt(1);
		    			String fname = rs.getString(2);
		    			String lname = rs.getString(3);
		    			String email = rs.getString(4);
		    			String address = rs.getString(5);
		    			String phone = rs.getString(6);
		    			String username = rs.getString(7);
		    			String password = rs.getString(8);
		    			
		    			Passenger c = new Passenger (id, fname, lname, email, address, phone, username, password);
		    			pas.add(c);
		    		}
		    		
		    	}
		    	
		    	catch(Exception e) {
		    		e.printStackTrace();  
		    	}
		    	finally {
			        
		    		try {
		    			// check the resources and close the resourses properly
		                if (rs != null) rs.close();
		                if (stmt != null) stmt.close();
		                if (con != null) con.close();
		            } catch (SQLException e) {
		                e.printStackTrace();
		            }
			    }
		    	return pas;	 
		    } 
		    
		    
		    
		    public static boolean deletePassenger(String id) {
		    	
		    	int convId = Integer.parseInt(id);
		    	
		    	try {
		    		//create the database connection
		    		con = DBconnect.getConnection();
		    		stmt = con.createStatement();
		    		
		    		String sql = "Delete from passenger where passengerId='"+convId+"'";
		    		int r = stmt.executeUpdate(sql);
		    		
		    		if (r > 0) {
		    			isSuccess = true;
		    		}
		    		else {
		    			isSuccess = false;
		    		}
		    		
		    	}
		    	catch (Exception e) {
		    		e.printStackTrace();
		    	}
		    	finally {
			        
		    		try {
		    			// check the resources and close the resourses properly
		                if (rs != null) rs.close();
		                if (stmt != null) stmt.close();
		                if (con != null) con.close();
		            } catch (SQLException e) {
		                e.printStackTrace();
		            }
			    }
		    	
		    	return isSuccess;
		    }
		    
		    
	/*------------------------------------------------USER BOOKING----------------------------------------------------------------------------------------
	 ----------------------------------------------------------------------------------------------------------------------------------------------------*/	    
		    
		    
		    
		 
			public static boolean validateBooking( String username) {
				
				try {
					//create the database connection
					con = DBconnect.getConnection();
					stmt = con.createStatement();
					
					String sql = "select passengerId from passenger where username='"+username+"'  ";
					 rs = stmt.executeQuery(sql);
					 
					 int convId = 0; 
					
				        if (rs.next()) {
				           
				            convId = rs.getInt("passengerId");
				        }
				        
				     
				        String sql2 = "select * from booking where cusid='" + convId + "'";
				        rs = stmt.executeQuery(sql2);
					
					
					if ( rs.next() ) {
						isSuccess = true; 
					} else {
						isSuccess = false; 
					}
					
				}
				 
				 catch ( Exception e ) {
					e.printStackTrace();
				}
				 finally {
					    
					    
					 try {
						// check the resources and close the resourses properly
			                if (rs != null) rs.close();
			                if (stmt != null) stmt.close();
			                if (con != null) con.close();
			            } catch (SQLException e) {
			                e.printStackTrace();
			            }
					}
				
				return isSuccess; 
			}
			
			
			
			
		    public static List<Booking> getBookingDetails(String username) {
		    	
		    	
		    	
		    	ArrayList<Booking> booking = new ArrayList<>();

		    	try {
		    		//create the database connection
		    		con = DBconnect.getConnection();
		    		stmt = con.createStatement();
		    		
		    		String sql1 = "select passengerId from passenger where username='"+username+"'  ";
					 rs = stmt.executeQuery(sql1);
		    	
		    		 
		    		 int passengerId = -1; // Default if no passengerId is found
		    		
					
				        if (rs.next()) {
				        	  passengerId = rs.getInt("passengerId");
				        }
				        
				        // If a valid passengerId is found, proceed with fetching bookings
			            if (passengerId != -1) {
			              
				        String sql2 = "select * from booking where cusid='" + passengerId + "'";
				        rs = stmt.executeQuery(sql2);
		    		
		    		
		    		while(rs.next()) {
		    			int bookingid = rs.getInt(1);
		    			int cusid = rs.getInt(2);
		    			String cusname = rs.getString(3);
		    			int quantity = rs.getInt(4);
		    			String email = rs.getString(5);
		    			String phone = rs.getString(6);
		    			String destination = rs.getString(7);
		    			String departure = rs.getString(8);
		    			String date = rs.getString(9);
		    			double price = rs.getDouble(10);
		    			
		    			Booking b= new Booking (bookingid, cusid,  cusname, quantity, email, phone, destination, departure, date, price );
		    			booking.add(b);
		    		  }
			         }
		    		
		    	
		           }
	    	        
	    	       catch(Exception e) {
	    		     e.printStackTrace();  
	    	       }
	    	      finally {
		            
	    	    	  try {
	    	    		// check the resources and close the resourses properly
	    	                if (rs != null) rs.close();
	    	                //if (stmt != null) stmt.close();
	    	                if (con != null) con.close();
	    	                //if (rs2 != null) rs2.close();
	    	                //if (stmt1 != null) stmt1.close();
	    	               // if (stmt2 != null) stmt2.close();
	    	            } catch (SQLException e) {
	    	                e.printStackTrace();
	    	            }
		    }
	    	    return booking;	
	    } 	
		    
		    
		     
           public static boolean deletePassengerBooking(String Id) {
		    	
		    	 int convId = Integer.parseInt(Id);
		    	
		    	 try {
		    		//create the database connection
		    		con = DBconnect.getConnection();
		    		stmt = con.createStatement();
		    		
		    		String sql = "delete from booking where bookingid='"+convId+"'";
		    		int r = stmt.executeUpdate(sql);
		    		
		    		if (r > 0) {
		    			isSuccess = true;
		    		}
		    		else {
		    			isSuccess = false;
		    		}
		    		
		    	 }
		    	 catch (Exception e) {
		    		e.printStackTrace();
		    	 }
		    	 finally {
			        
		    		 try {
		    			// check the resources and close the resourses properly
		                 if (rs != null) rs.close();
		                 if (stmt != null) stmt.close();
		                 if (con != null) con.close();
		             } catch (SQLException e) {
		                 e.printStackTrace();
		             }
			     }
		    	
		    	 return isSuccess;
		    }
           
           
           public static boolean validates(String username, String password) {
       		
       		try {
       		    //create the database connection
       			con = DBconnect.getConnection();
       			stmt = con.createStatement();
       			String sql = "select * from passenger where username='"+username+"' and password='"+password+"'";
       			rs = stmt.executeQuery(sql);
       			
       			if (rs.next()) {
       				isSuccess = true;
       			} else {
       				isSuccess = false;
       			}
       			
       		} catch (Exception e) {
       			e.printStackTrace();
       		}
       		
       		return isSuccess;
       	}


}
