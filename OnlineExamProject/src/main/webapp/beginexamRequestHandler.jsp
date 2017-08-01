<%
        String subject =(String)request.getParameter("subject");
        
        //redirect user to home page if already logged in
        if(subject.equals("java")){
        	response.sendRedirect("displayquestions.jsp"); 
        	/* response.sendRedirect("displayquestions.jsp?page=1"); */ 
  	    }
      	else
        	response.sendRedirect("setquestions.jsp");
 	%>
 
 
