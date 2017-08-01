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
 
    String status=request.getParameter("status");
        
    if(status!=null){
        if(status.equals("false")){
               out.print("Incorrect login details!");                       
        }
        else{
            out.print("Some error occurred!");
        }
    }
    %>

<%-- <%
	String username=(String)session.getAttribute("username");
        
    //redirect user to home page if already logged in
    if(username!=null){
        response.sendRedirect("home.jsp");
    }
 
    String status=request.getParameter("status");
        
    if(status!=null){
        if(status.equals("false")){
               out.print("Incorrect login details!");                       
        }
        else{
            out.print("Some error occurred!");
        }
    }
    %>
 --%>
<html>
    <head>
        <title>Login:OnlineExamProject</title>
    </head>
    <body>
        <form action="loginRequestHandler.jsp" style="padding-left: 100px;padding-right: 100px;background-color: #e0e0d1">
            <table>
            	<tr>
					<td colspan="2" align="center"><img src="images/header.jpg" width="100%"></td>
				</tr>
				<tr align="left" bgcolor="#ff9;">
					<!-- <td width="40%" align="left">&nbsp;&nbsp;Sign In</td> -->
					<td width="100%" colspan="" ><marquee><b>Welcome To The Online Examination Project</marquee></td>
				</tr>
				<tr>
			
					<td width="100%" align="center"><br><br><br>
						<select name="avatar" required="required" style="font-family: calibri;font-size: 20px;border-color: #ff9;width: 300">
							<option value="faculty" selected="selected">Faculty</option>
							<option value="student" >Student</option>
						</select>
				</td>
			</tr>
		
                <tr><td width="100%" align="center">
                 	<input type = "text" name="username" size="30" placeholder="Username" required="required" style="font-family: calibri;font-size: 20px;border-color:#ff9;">
                 	</td>
                </tr>
                <tr>
                    <td width="100%" align="center">
                    	<input type="password" name="password" size="30" placeholder="Password"  required="required" style="font-family: calibri;font-size: 20px;border-color:#ff9;"/></td>
                </tr>
 
                <tr>
                    <td colspan="2" align="center"><br><br><input type="submit" value="Sign In" style="font-family: calibri;font-size: 20px;border-color:green;width: 150;height: 50; color: green;"/></td>
                </tr>
                <tr>
				<td colspan="2"><center><br><br><label style="font-family: calibri;font-size: 15">New User ?</label>&nbsp;&nbsp;&nbsp;<a href="registration.jsp" style="font-family: calibri;font-size: 20px;border-color:green;width: 150;height: 50; color: green;">Register Now</a></center></td>
			</tr>
                			<tr>
				<td colspan="2"><br><br><br><br><%@include file = "footer.html" %></td>
			</tr>
 
            </table>
        </form>
    
    </body>
</html>