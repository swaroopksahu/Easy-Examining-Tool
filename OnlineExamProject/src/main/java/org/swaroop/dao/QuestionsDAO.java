package org.swaroop.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import org.swaroop.util.ConnectionProvider;
import org.swaroop.vo.QuestionsVO;

public class QuestionsDAO {
		//Prepare Queries	
		public static final String JAVA_INSERT_QUERY = "INSERT INTO JAVA(QUESTION,ANSWER,DESCRIPTION) VALUES(?,?,?)";
		
		public static int insertIntoJava(QuestionsVO vo) {
			
			PreparedStatement ps = null;
			int result = 0;
		
			try{
				//Get connection
				Connection con=ConnectionProvider.getCon();  
				
				if(con!=null){
					ps = con.prepareStatement(JAVA_INSERT_QUERY);
				}
				
				//Getting and Setting Parameters values from OnlineExamBO class object 
				if(ps!=null){
					ps.setString(1, vo.getQuestion());
					ps.setString(2, vo.getAnswer());
					ps.setString(3, vo.getDescription());
					
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
}//class
