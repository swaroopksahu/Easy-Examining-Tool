package org.swaroop.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.swaroop.controller.LoginBean;
import org.swaroop.util.ConnectionProvider;

public class LoginDAO {
	public static final String query = "SELECT * FROM REGISTERDETAILS WHERE AVATAR=? AND USERNAME=? AND PASSWORD=?";
	
	public static String loginCheck(LoginBean bean){
		try{  
			Connection con=ConnectionProvider.getCon();  
	              
			PreparedStatement ps=con.prepareStatement(query);  
			ps.setString(1,bean.getAvatar());
			ps.setString(2,bean.getUsername());  
			ps.setString(3, bean.getPassword());     
			
			ResultSet rs=ps.executeQuery();  
			if(rs.next()){
				return "true";
			}
			else{
				return "false";
			}
		}//try
		catch(Exception e){
			e.printStackTrace();
		}  //catch
		return "error";  
	}  
} 