<!-- JSP Session Validation Start-->
        <%
        String usernam=(String)session.getAttribute("username");
        
        //redirect user to login page if not logged in
        if(usernam==null){
            response.sendRedirect("index.jsp");
        }
        %>
<%@page import="org.swaroop.dao.BeginExamDAO"%>  
<jsp:useBean id="obj" class="org.swaroop.vo.QuestionsVO"/>  
  
<jsp:setProperty property="*" name="obj"/>  
  
<%  
String question=BeginExamDAO.retrievalQuery(obj);%>  

<form action="displayquestionsRequestHandler.jsp" style="padding-left: 100px;padding-right: 100px;background-color: #e0e0d1">
	<table style="width: 100%;">
		<tr>
			<td style="width: 100%" ><%@include file="header_student.jsp" %></td>
		</tr>
		
		<tr>
			<td style="font-family: calibri;font-size: 20"><center><b>Questions</b><br><hr><br></center></td>
		</tr>
		<tr align="center">
			<td>	<textarea name ="question" required="required" style="width: 50%;font-family:calibri;font-size: 15 " rows="10"  readonly="readonly">
			 <% out.print(question);%>
			</textarea></td>
			</tr>
			<tr align="center">
			<td>
				<input type="hidden" name="username" value="<%=username%>">
				<input type = "radio" name="answer" value="A" required="required">A&nbsp;
				<input type = "radio" name="answer" value="B" required="required">B&nbsp;
				<input type = "radio" name="answer" value="C" required="required">C&nbsp;
				<input type = "radio" name="answer" value="D" required="required">D
			</td>
			</tr>
			<tr align="center">
				<td width="50%"><br><br><input type="submit" name="submit" value=" Finish Exam ! "style="font-family: calibri;font-size: 20px;border-color:green;width: 150;height: 50; color: red;"></td>
				
			</tr>
			<tr>
				<td></td>
			</tr>
		</table>
	
</form>
<%@include file="footer.html" %>





















<%-- <!-- JSP Session Validation Start-->
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

<%@page import="org.swaroop.dao.BeginExamDAO"%>  
<jsp:useBean id="obj" class="org.swaroop.vo.QuestionsVO"/>  
  
<jsp:setProperty property="*" name="obj"/>  
  
<%  
String question=BeginExamDAO.retrievalQuery(obj);%>  

<form action="displayquestionsRequestHandler.jsp" style="width:100%;"  >
	<table style="width: 100%;border: 1px solid;">
		<tr>
			<th colspan="3"><center>Questions<br><hr><br></center></th>
		</tr>
		<tr align="center">
			<td width="10%">Q No.</td>
			<td width="60%">Questions</td>
			<td width="30%">Answer</td>
		</tr>
		<tr align="center">
			<td>1</td>
			<td>	<textarea name ="question" required="required" style="width: 100%" rows="10"  readonly="readonly">
			 <% out.print(question);%>
			</textarea></td>
			<td align="center">
				<input type="hidden" name="username" value="<%=username%>">
				<input type = "radio" name="answer" value="A" required="required">A<br><br>
				<input type = "radio" name="answer" value="B" required="required">B<br><br>
				<input type = "radio" name="answer" value="C" required="required">C<br><br>
				<input type = "radio" name="answer" value="D" required="required">D<br>
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
				<td colspan="5" align="center"><br><br><input type="submit" name="submit" value=" D O N E  ! "><br><br></td>
			</tr>
			<tr>
				<td></td>
			</tr>
		</table>
	
</form>
<%@include file="footer.html" %>
 --%>