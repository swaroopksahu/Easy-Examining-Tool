<%@page import="org.swaroop.dao.QuestionsDAO"%>  
<jsp:useBean id="obj" class="org.swaroop.vo.QuestionsVO"/>  
  
<jsp:setProperty property="*" name="obj"/>  
  
<%  
int result=QuestionsDAO. insertIntoJava(obj);  
if(result>0)  {	%>
	<form style="padding-left: 100;padding-right: 100;">
	<h1 style="text-align: center;color:green;font-family: calibri;border:1px solid;border-color: green;">Congratulations!!!<br>Your Question Has Been Set Successfully! </h1>
	<br><br><br>
	<br><br><br>
	<center><a href="login.jsp" style="font-family: calibri;font-size: 20;"><b>Click Here To Visit Home Page</b></center>
</form>
<% }
else out.print("Record not inserted..");
%>  