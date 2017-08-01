<% String avatar=(String)session.getAttribute("avatar");
  if(avatar.equals("student")){
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

<form style="padding-left: 100px;padding-right: 100px;background-color: #e0e0d1">
	<table>
		<tr >
			<td style="width: 100%" ><%@include file="header_faculty.jsp" %></td>
		</tr>
		<tr >
			<td><br><br><br><br><br><br><br><br><br><%@include file="footer.html" %></td>
		</tr>
	</table>
</form>