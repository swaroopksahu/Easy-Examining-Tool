<%@page import="org.swaroop.dao.AnswerDAO"%>
<jsp:useBean id="obj" class="org.swaroop.vo.AnswerVO"/>  
<jsp:setProperty property="*" name="obj"/>  



<%
int result=AnswerDAO.saveAnswer(obj);  
if(result>0)  {	%>
	<form style="padding-left: 100;padding-right: 100;">
	<h1 style="text-align: center;color:green;font-family: calibri;border:1px solid;border-color: green;">Congratulations!!!<br>Your Answer submitted Successfully! </h1>
	<br><br><br>
	<br><br><br>
	<center><a href="login.jsp" style="font-family: calibri;font-size: 20;"><b>Click Here To Visit Home Page</b></center>
</form>
<% }
else out.print("Record not inserted..");
%> 