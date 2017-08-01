/*package org.swaroop.dao;  
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.swaroop.util.ConnectionProvider;
import org.swaroop.vo.RetrieveQuestionsVO;  
public class BeginExamDAO {  
  
    public static List<RetrieveQuestionsVO> getRecords(int start,int total){  
        List<RetrieveQuestionsVO> list=new ArrayList<RetrieveQuestionsVO>();  
        try{  
        	//Get connection
			Connection con=ConnectionProvider.getCon();  
            PreparedStatement ps=con.prepareStatement("select slno, question from java limit "+(start-1)+","+total);  
            ResultSet rs=ps.executeQuery();  
            while(rs.next()){  
                RetrieveQuestionsVO vo=new RetrieveQuestionsVO();  
                vo.setSlno(rs.getInt(1));  
                vo.setQuestion(rs.getString(2));  
                list.add(vo);  
            }  
            con.close();  
        }catch(Exception e){System.out.println(e);}  
        return list;  
    }  
} */









package org.swaroop.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import org.swaroop.util.ConnectionProvider;
import org.swaroop.vo.QuestionsVO;

public class BeginExamDAO {
	
		public static String retrievalQuery(QuestionsVO vo) {
				//Getting subject parameter value from QuestionsVO class object
				String subject = vo.getSubject();
				String question = null;
				Statement st = null;
				ResultSet rs = null;
				try{
					//Get connection
					Connection con=ConnectionProvider.getCon();  
					
					if(con!=null){
						st = con.createStatement();
					}				 
					if(st!=null){
						/*if(subject.equals("java")){*/
						rs = st.executeQuery("SELECT QUESTION FROM JAVA"); 
						/*}*/
						//Process the ResultSet
						if(rs!=null){
							while(rs.next()){
								question =rs.getString(1);
							}
						}//if
					}//if
					}//try
					catch(Exception e){
						e.printStackTrace();
					}
					return question;
			}//method
	}//class
