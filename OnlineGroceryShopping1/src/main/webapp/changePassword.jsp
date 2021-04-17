<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="changeDetailsHeader.jsp" %>
<%@include file="footer.jsp" %>
<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Message Us</title>
</head>
<body style="background-color:#9670a9">
<%
String msg=request.getParameter("msg");
if("notmatch".equals(msg)){
%>
<h3 class="alert">New password and Confirm password does not match!</h3>
<%} %>
<%
if("nomatch".equals(msg)){
%>
<h3 class="alert">not matched!</h3>
<%} %>
<%
if("done".equals(msg)){
%>
<h3 class="alert">Password change successfully!</h3>
<%} %>
<%
if("invalid".equals(msg)){
%>
<h3 class="alert">old password is incorrect try again!</h3>
<%} %>
<form action="changePasswordAction.jsp" method="post">
<h3>Enter Old Password</h3>
 <input type="password" class="input-style" name="oldPassword" placeholder="enter old password" required>
  <hr>
 <h3>Enter New Password</h3>
 <input type="password" class="input-style" name="newPassword" placeholder="enter new password" required>
 <hr>
<h3>Enter Confirm Password</h3>
<input type="password" class="input-style" name="confirmPassword" placeholder="reenter new password" required>
<hr>
<button class="button" type="submit">Change Password <i class='far fa-arrow-alt-circle-right'></i></button>
</form>
</body>
<br><br><br>
</html>