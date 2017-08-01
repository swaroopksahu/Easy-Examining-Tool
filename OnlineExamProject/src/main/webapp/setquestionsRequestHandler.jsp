
	<%
        String subject =(String)request.getParameter("subject");
        
        //redirect user to home page if already logged in
        if(subject.equals("java")){
            response.sendRedirect("java.jsp");
        }
      	else
        	response.sendRedirect("setquestions.jsp");
 	%>
 