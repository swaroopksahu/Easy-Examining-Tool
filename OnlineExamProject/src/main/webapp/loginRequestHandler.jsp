<%@page import="org.swaroop.dao.LoginDAO"%>
<jsp:useBean id="loginBean" class="org.swaroop.controller.LoginBean" scope="session"/>
<jsp:setProperty name="loginBean" property="*"/>
 
<%
String result=LoginDAO.loginCheck(loginBean);
 
if(result.equals("true")){
    session.setAttribute("username",loginBean.getUsername());
    
    
    
    
    session.setAttribute("avatar",loginBean.getAvatar());
    
    
    
    
    %>
    <%
    String avatar =(String)request.getParameter("avatar");
    
    //redirect user to home page if already logged in
    if(avatar.equals("student")){
        response.sendRedirect("home_student.jsp");
    }
    else if(avatar.equals("faculty")){
    	response.sendRedirect("home_faculty.jsp");
    }
    
    
    
    
   /*  response.sendRedirect("home_faculty.jsp"); */
}
 
if(result.equals("false")){
    response.sendRedirect("login.jsp?status=false");
}
 
if(result.equals("error")){
    response.sendRedirect("login.jsp?status=error");
}
 
%>


