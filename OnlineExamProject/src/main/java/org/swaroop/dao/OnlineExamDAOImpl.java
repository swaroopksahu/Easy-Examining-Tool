package org.swaroop.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import org.swaroop.bo.OnlineExamBO;
import org.swaroop.util.ConnectionProvider;

public class OnlineExamDAOImpl {
	
	//Prepare Query
	public static final String REGISTERDETAILS_INSERT_QUERY = "INSERT INTO REGISTERDETAILS(AVATAR,NAME,USERNAME,PASSWORD,GENDER,MOBILE) VALUES(?,?,?,?,?,?)";
	
	public static int insertIntoRegisterDetails(OnlineExamBO bo) {
		
		PreparedStatement ps = null;
		int result = 0;
	
		try{
			//Get connection
			Connection con=ConnectionProvider.getCon();  
			
			if(con!=null){
				ps = con.prepareStatement(REGISTERDETAILS_INSERT_QUERY);
			}
			
			//Getting and Setting Parameters values from OnlineExamBO class object 
			if(ps!=null){
				ps.setString(1, bo.getAvatar());
				ps.setString(2, bo.getName());
				ps.setString(3, bo.getUsername());
				ps.setString(4, bo.getPassword());
				ps.setString(5, bo.getGender());
				ps.setDouble(6, Double.parseDouble(bo.getMobile())); 
				
				//Execute Query
				result = ps.executeUpdate();
				//Process the result
				if(result==0)
					System.out.println("Username Already Exists..");
				else
					System.out.println("Record Inserted..!");
				}//if
			}//try
			catch(Exception e){
				e.printStackTrace();
			}
			return result;
	}//method
}//class































/*package org.swaroop.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import org.swaroop.bo.OnlineExamBO;
import org.swaroop.util.ConnectionProvider;

public class OnlineExamDAOImpl {
	
	//Prepare Query
	public static final String REGISTERDETAILS_INSERT_QUERY = "INSERT INTO REGISTERDETAILS(AVATAR,NAME,USERNAME,PASSWORD,GENDER,MOBILE) VALUES(?,?,?,?,?,?)";
	
	public static int insertIntoRegisterDetails(OnlineExamBO bo) {
		
		PreparedStatement ps = null;
		int result = 0;
	
		try{
			//Get connection
			Connection con=ConnectionProvider.getCon();  
			
			if(con!=null){
				ps = con.prepareStatement(REGISTERDETAILS_INSERT_QUERY);
			}
			
			//Getting and Setting Parameters values from OnlineExamBO class object 
			if(ps!=null){
				ps.setString(1, bo.getAvatar());
				ps.setString(2, bo.getName());
				ps.setString(3, bo.getUsername());
				ps.setString(4, bo.getPassword());
				ps.setString(5, bo.getGender());
				ps.setDouble(6, Double.parseDouble(bo.getMobile())); 
				
				//Execute Query
				result = ps.executeUpdate();
				//Process the result
				if(result==0)
					System.out.println("Record Not Inserted..!");
				else
					System.out.println("Record Inserted..!");
				}//if
			}//try
			catch(Exception e){
				e.printStackTrace();
			}
			return result;
	}//method
}//class*/