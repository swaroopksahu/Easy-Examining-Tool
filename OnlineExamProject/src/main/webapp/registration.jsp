<% String avatar=(String)session.getAttribute("avatar");%>
<%
	String username=(String)session.getAttribute("username");
        
    //redirect user to home page if already logged in
    if(username!=null){
    	  if(avatar.equals("faculty")){
    	//Set error page
        response.sendRedirect("home_faculty.jsp");}
        if(avatar.equals("student")){
        	response.sendRedirect("home_student.jsp");
        }
    }
    %>

<html>
	<head>
		<title>SignUp:Online Examination Project</title>
	</head>
<body onload="document.registration.avatar.focus();"> 
<script src="JavaScripts/RegistrationValidate.js"></script>
<form onsubmit="return formValidation()"  method="get"  action="registerprocess.jsp" name='registration' style="padding-left: 100px;padding-right: 100px;background-color: #e0e0d1" >
	<table width="100%">
		<tr>
			<td colspan="2" align="center"><img src="images/header.jpg" width="100%"></td>
		</tr>
			<tr align="left" bgcolor="#ff9;">
					<!-- <td width="40%" align="left">&nbsp;&nbsp;Creator Profile</td> -->
					<td width="100%" colspan="2" ><marquee><b>Welcome To The Online Examination Project</marquee></td>
				</tr>
				<tr>
		<tr >
			<td width="100%" align="center"><br><br>
				<select name="avatar" required="required" style="font-family: calibri;font-size: 20px;border-color: #ff9;width: 300">
					<option selected="" value="Default">(Please select an Avatar)</option>
					<option value="faculty" >Faculty</option>
					<option value="student">Student</option>
					</select>
			</td>
			</tr>
			<tr>
	
				<td width="100%" align="center">
					<input type = "text" name="name" size="20" placeholder="Full Name" required="required"  style="font-family: calibri;font-size: 20px;border-color: #ff9;width: 300">
				</td>
			</tr>
			<tr>
				<td width="100%" align="center">
					<input type = "text" name="username" size="20" placeholder="Choose Username" required="required" style="font-family: calibri;font-size: 20px;border-color: #ff9;width: 300">
				</td>
			</tr>
			<tr>
				<td width="100%" align="center">
					<input type = "password" name="password" size="20" placeholder="Password" required="required" style="font-family: calibri;font-size: 20px;border-color: #ff9;width: 300">
				</td>
			</tr>
			<tr>
					<td width="100%" align="center" style="font-family: calibri;font-size: 20px;border-color: #ff9;width: 300">
					<input type="radio" name="gender" value="Male" checked="checked">Male	&nbsp;&nbsp; 
					<input type="radio" name="gender" value="Female">Female
				</td>
			</tr>
			<tr>
				<td width="100%" align="center">
					<input type = "text" name="mobile" size="20" placeholder="Mobile Number"  required="required"  style="font-family: calibri;font-size: 20px;border-color: #ff9;width: 300">
				</td>
			</tr>
			<tr>
				<td colspan="2"><center><br><br><input type="submit" name="register" value="Register"  style="font-family: calibri;font-size: 20px;border-color:green;width: 150;height: 50; color: green;"></center></td>
			</tr>
			
			<tr>
				<td colspan="2"><center><br><br><label style="font-family: calibri;font-size: 15">Existing User ?</label>&nbsp;&nbsp;&nbsp;<a href="login.jsp" style="font-family: calibri;font-size: 20px;border-color:green;width: 150;height: 50; color: green;">Sign In</a></center></td>
			</tr>
			
			
			                
                			<tr>
				<td colspan="2"><br><%@include file = "footer.html" %></td>
			</tr>
	</table>
</form>		
</body>
</html>