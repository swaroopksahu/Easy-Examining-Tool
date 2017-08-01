<!-- JSP Session Validation Start-->
        <%
        String username=(String)session.getAttribute("username");
        
        //redirect user to login page if not logged in
        if(username==null){
            response.sendRedirect("index.jsp");
        }
        %>
<form style="padding-left: 100px;padding-right: 100px;background-color: #e0e0d1">
<table style= " width:100%;font-family: calibri;font-size: 20px;">
	<tr>
		<td colspan="5" align="center"><img src="images/header.jpg" width="100%"></td>
	</tr>
	<tr>
			<td width="100%" colspan="5"><marquee><b>Welcome To The Online Examination Project</marquee></td>
	</tr>
	
	<tr align="center" bgcolor="#ff9;">
		<td width="30%">Faculty:&nbsp;&nbsp; Welcome <b><%=username%></b></td>
		<td width="10%"><a href="home_faculty.jsp" style="color: black">Home</a></td>
		<td width="20%"><a href="setquestions.jsp" style="color: black">Set Questions</td>
		<td width="20%"><a href="report.jsp" style="color: black">Generate Report</td>
		<td width="20%"><a href="logout.jsp" style="color: black">Logout</td>
	</tr>
</table>
</form>