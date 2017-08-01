<%@page isErrorPage="true" %>
<form style="padding-left: 100;padding-right: 100;">
	<img src="images/header.jpg" width="100%">
	<h1 style="text-align: center;color:red;font-family: calibri;border:1px solid;border-color: red;">Oops!!! Something Went Wrong..
	<br>The Possible Reasons may be, <br>
	This Page Is Not Available Or You Are Not Allowed To See This Page Or Some Internal Problem.<br>
	Please Try Again..   
	</h1>
	<br>
	
	<center><a href="login.jsp" style="font-family: calibri;font-size: 20;"><b>Click Here To Visit Home Page</b></center>
<br><br></form>
<center><%=exception.toString()%></center><br><br>
<%@include file="footer.html" %>
