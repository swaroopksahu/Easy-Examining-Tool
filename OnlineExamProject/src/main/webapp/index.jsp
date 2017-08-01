 <%
 	String username=(String)session.getAttribute("username");
    String avatar=(String)session.getAttribute("avatar");
    if(username!=null){
    //redirect user to home page if already logged in
    if(avatar.equals("student")){
        response.sendRedirect("home_student.jsp");
    }
    else if(avatar.equals("faculty")){
    	response.sendRedirect("home_faculty.jsp");
    }
    else response.sendRedirect("index.jsp");
    }%>
    

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>OnlineExamProject</title>
</head>
<body >
	<form style="padding-left: 100px;padding-right: 100px;background-color: #e0e0d1">
		<table style= " width:100%;font-family: calibri;font-size: 20px;">
			<tr>
				<td colspan="2" align="center"><img src="images/header.jpg" width="100%"></td>
			</tr>
			<tr align="left" bgcolor="#ff9;">
				<td width="40%" align="left">&nbsp;&nbsp;Creator Profile</td>
				<td width="60%" ><marquee><b>Welcome To The Online Examination Project</marquee></td>
			</tr>
			<tr>
				<td><table style="width: 100%">
							<tr>
								<td width="50%"><img alt="Swaroop Kumar Sahu" src="images/swaroop.jpg" width="230px" height="300px"></td>
								<td style="width:50%; background-color: #ebebe0"><label><center>Dashboard</label>
								<textarea cols="25" rows="18" readonly="readonly">Notifications Area..</textarea></td>
							</tr></table>
							</td>
				<td><i>Instructions:</i><br><%@include file="welcometext.html" %></td>
				
			</tr>
				
			<tr align="center" style="font-family:cursive; font-size: 30px;">
				<td><a href="login.jsp"><img alt="login" src="images/login.jpg" width="200px" ></a></td>
				<td><a href="registration.jsp"><img alt="register" src="images/register.png" width="200px" ></a></td>
			</tr>
			<tr>
				<td colspan="2"><%@include file = "footer.html" %></td>
			</tr>
</table>
</form>
</body>
</html>