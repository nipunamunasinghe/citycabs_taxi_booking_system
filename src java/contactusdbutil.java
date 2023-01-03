package com.contactus;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.contactus.contactus;
import com.contactus.dbconnection;





public class contactusdbutil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
    


 	
    	
public static boolean insertcontact(String firstname, String lastname, String email, String inquiry) {
	
	boolean isSuccess = false;
	
	try {
		con = dbconnection.getConnection();
		stmt = con.createStatement();
	    String sql = "insert into contactus values (0,'"+firstname+"','"+lastname+"','"+email+"','"+inquiry+"')";
		int rs = stmt.executeUpdate(sql);
		
		if(rs > 0) {
			isSuccess = true;
		} else {
			isSuccess = false;
		}
		
	}
	catch (Exception e) {
		e.printStackTrace();
	}
	
	return isSuccess;
}

public static boolean updatecontactus(String contactid, String firstname, String lastname, String email, String inquiry) {
	
	try {
		
		con = dbconnection.getConnection();
		stmt = con.createStatement();
		String sql = "update contactus set firstname='"+firstname+"',lastname='"+lastname+"',email='"+email+"',inquiry='"+inquiry+"' where contactid='"+contactid+"'";
		int rs = stmt.executeUpdate(sql);
		
		if(rs > 0) {
			isSuccess = true;
		}
		else {
			isSuccess = false;
		}
		
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	
	return isSuccess;
}

public static boolean deletecontactus(String id) {
	
	
	
	try {
		
		con = dbconnection.getConnection();
		stmt = con.createStatement();
		String sql = "delete from contactus where contactid='"+id+"'";
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
	
	return isSuccess;
}





}

