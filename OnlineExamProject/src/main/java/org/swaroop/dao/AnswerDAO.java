package org.swaroop.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import org.swaroop.util.ConnectionProvider;
import org.swaroop.vo.AnswerVO;

public class AnswerDAO {		
		//Prepare Query
		public static final String ANSWER_INSERT_QUERY = "INSERT INTO ANSWERSHEET(QNO,USERNAME,ANSWER) VALUES(?,?,?)";
		
		public static int saveAnswer(AnswerVO vo) {
			
			PreparedStatement ps = null;
			int result = 0;
		
			try{
				//Get connection
				Connection con=ConnectionProvider.getCon();  
				
				if(con!=null){
					ps = con.prepareStatement(ANSWER_INSERT_QUERY);
				}
				
				//Getting and Setting Parameters values from AnswerVO class object 
				if(ps!=null){
					ps.setInt(1, vo.getQno());
					ps.setString(2, vo.getUsername());
					ps.setString(3, vo.getAnswer());
										
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
