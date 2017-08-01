<html>
	<head>
		<title>Welcome to OnlineExamProject.org</title>
	</head>
 <body>
        <!-- JSP Session Validation Start-->
        <%
        String username=(String)session.getAttribute("username");
        
        //redirect user to login page if not logged in
        if(username==null){
            response.sendRedirect("index.jsp");
        }
        %>
        <!-- JSP Session Validation End-->
    
      
        <p>Welcome <%=username%></p>    
        <a href="logout.jsp">Logout</a>
        
       
    </body>
</html>