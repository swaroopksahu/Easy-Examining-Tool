<%@page import="org.swaroop.dao.OnlineExamDAOImpl"%>  
<jsp:useBean id="obj" class="org.swaroop.bo.OnlineExamBO"/>  
  
<jsp:setProperty property="*" name="obj"/>  
  
<%  
int result=OnlineExamDAOImpl. insertIntoRegisterDetails(obj);  
if(result>0)  {	%>
	<form style="padding-left: 100;padding-right: 100;">
	<h1 style="text-align: center;color:green;font-family: calibri;border:1px solid;border-color: green;">Congratulations!!!<br>You Are Registered Successfully! </h1>
	<br><br><br>
	<center><a href="login.jsp" style="font-family: calibri;font-size: 20;"><b>Click Here To Visit Login Page</b></center>
</form>
<% }
%>













<%-- <%@page import="org.swaroop.dao.OnlineExamDAOImpl"%>  
<jsp:useBean id="obj" class="org.swaroop.bo.OnlineExamBO"/>  
  
<jsp:setProperty property="*" name="obj"/>  
  
<%  
int result=OnlineExamDAOImpl. insertIntoRegisterDetails(obj);  
if(result>0)  {	%>
	<form style="padding-left: 100;padding-right: 100;">
	<h1 style="text-align: center;color:green;font-family: calibri;border:1px solid;border-color: green;">Congratulations!!!<br>You Are Registered Successfully! </h1>
	<br><br><br>
	<center><a href="login.jsp" style="font-family: calibri;font-size: 20;"><b>Click Here To Visit Login Page</b></center>
</form>
<% }
%>   --%>