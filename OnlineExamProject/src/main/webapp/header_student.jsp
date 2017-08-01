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
		<td colspan="4" align="center"><img src="images/header.jpg" width="100%">
		</td>
	</tr>
	<tr align="left" bgcolor="#ff9;">
				<td width="30%" align="center">Student:&nbsp;&nbsp; Welcome <b><%=username%></b></td>
				<td width="10%" align="center"><a href="home_student.jsp" style="color: black">Home</a></td>
				<td width="50%" ><marquee><b>Welcome To The Online Examination Project</marquee></td>
				<td width="10%" align="center"><a href="logout.jsp" style="color: black">Logout</td>
				
			</tr>
	</table>
</form>










<%-- <form>
<table style= " width:100%;font-family: calibri;font-size: 20px;">
	<tr>
		<td colspan="2" align="center"><img src="images/header.jpg" width="100%"></td>
	</tr>
	<tr align="center" style="background-color:#ff9;">
		<td style="border: 1px solid;"><a href="home_student.jsp"><p>Welcome <%=username%>&nbsp;&nbsp;Home</a></td>
		<!-- <td style="border: 1px solid;"><a href="startexam.jsp">Start Exam</td> -->
		<td style="border: 1px solid;"><a href="logout.jsp">Logout</td>
	</tr>
	</table>
</form> --%>