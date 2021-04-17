<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="changeDetailsHeader.jsp" %>
<%@include file="footer.jsp" %>
<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>change mobile number</title>
</head>
<body style="background-color:#9670a9" >
<%
String msg=request.getParameter("msg");
if("done".equals(msg)){
	%>
	<h3 class="alert">Your Mobile Number successfully changed!</h3>
<% 
}
%>

<%
if("invalid".equals(msg)){
	%>
	<h3 class="alert">Your Password is wrong!</h3>
<% 
}
%>
<form method="post" action="changeMobileNumberAction.jsp">
 <h3>Enter Your New Mobile Number</h3>
 <input class="input-style" type="number" name="mobileNumber" placeholder="enter mobile Number">
 <hr>
<h3>Enter Password (For Security)</h3>
<input class="input-style" type="password" name="password" placeholder="enter password" required>
<hr>
 <button type="submit" class="button">Change<i class='far fa-arrow-alt-circle-right'></i></button>
</form>
</body>
<br><br><br>
</html>