<% String avatar=(String)session.getAttribute("avatar");
  if(avatar.equals("faculty")){
    	//Set error page
    	response.sendRedirect("errorPrivilege.html");
    }%>


<!-- JSP Session Validation Start-->
        <%
        String usernam=(String)session.getAttribute("username");
        
        //redirect user to login page if not logged in
        if(usernam==null){
            response.sendRedirect("index.jsp");
        }
        %>



<form action="beginexamRequestHandler.jsp" style="padding-left: 100px;padding-right: 100px;background-color: #e0e0d1" >
	<table>
		<tr >
			<td style="width: 100%" ><%@include file="header_student.jsp" %></td>
		</tr>
		<tr style="background-color: #e0e0d1">
			<td align="center" width="100%"><br><br><label style="font-family: calibri;font-size: 20;">Choose Subject: &nbsp;</label>
			<select name="subject" required="required" style="font-family: calibri;font-size: 20px;">
				<option value="java"  selected="selected" >JAVA</option>
				<option value="c">C</option>
				<option value="cpp">C++</option>
				<option value="datastructure">DATA STRUCTURE</option>
				<option value="rdbms">RDBMS</option>
			</select>
			<br><br><br><br>
	<input type="submit" name="beginexam" value="Begin Exam"  style="font-family: calibri;font-size: 20px;border-color:red;width: 150;height: 50; color: red;">
			</td>
		</tr>
		<tr >
			<td><br><br><br><br><br><br><br><br><br><%@include file="footer.html" %></td>
		</tr>
	</table>
</form>












<%-- <form action="beginexamRequestHandler.jsp">
	<table>
		<tr >
			<td style="width: 100%" ><%@include file="header_student.jsp" %></td>
		</tr>
		<tr>
			<td><label>Choose Subject: &nbsp; &nbsp; &nbsp;</label>
			<select name="subject" required="required" style="font-family: calibri;font-size: 20px;">
				<option value="java"  selected="selected" >JAVA</option>
				<option value="c">C</option>
				<option value="cpp">C++</option>
				<option value="datastructure">DATA STRUCTURE</option>
				<option value="rdbms">RDBMS</option>
			</select>
			<br><br>
	<input type="submit" name="beginexam" value="Begin Exam"  style="font-family: calibri;font-size: 20px;border-color: green">
			</td>
		</tr>
		<tr >
			<td><br><br><br><br><br><br><br><br><br><%@include file="footer.html" %></td>
		</tr>
	</table>
</form> --%>