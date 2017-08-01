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

        
        
<%@include file="header_faculty.jsp" %>

<form action="javaprocess.jsp" style="width:100%;"  >
	<table style="width: 100%;border: 1px solid;">
		<tr>
			<th colspan="4"><center>JAVA Questions<br><hr><br></center></th>
		</tr>
		<tr align="center">
			<td width="6%">Q No.</td>
			<td width="40%">Questions</td>
			<td width="6%">Answer</td>
			<td width="40%">Description</td>
		</tr>
		<tr align="center">
			<td>1</td>
			<td>	<textarea name ="question" required="required" style="width: 100%" rows="8" ></textarea></td>
			<td align="center">
				<input type = "radio" name="answer" value="A" required="required">A<br>
				<input type = "radio" name="answer" value="B" required="required">B<br>
				<input type = "radio" name="answer" value="C" required="required">C<br>
				<input type = "radio" name="answer" value="D" required="required">D<br>
			</td>
			<td>	<textarea name ="description" required="required" style="width: 100%" rows="5" ></textarea>
			</td>

			</tr>
			
			<!-- 		<tr align="center">
			<td>2</td>
			<td>	<textarea name ="q2" required="required" style="width: 100%" rows="8" ></textarea></td>
			<td align="center">
				<input type = "radio" name="a2" required="required">A<br>
				<input type = "radio" name="a2" required="required">B<br>
				<input type = "radio" name="a2" required="required">C<br>
				<input type = "radio" name="a2" required="required">D<br>
			</td>
			<td>	<textarea name ="d2" required="required" style="width: 100%" rows="5" ></textarea></td>
			</tr> -->
			<tr>
				<td colspan="5" align="center" width="50%"><br><br><input type="submit" name="submit" value=" D O N E  ! " style="font-family: calibri;font-size: 20px;border-color:green;width: 150;height: 50; color: red;"><br><br></td>
			</tr>
			<tr>
				<td></td>
			</tr>
		</table>
	
</form>
<%@include file="footer.html" %>


