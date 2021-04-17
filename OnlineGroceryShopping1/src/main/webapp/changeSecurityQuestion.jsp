<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="changeDetailsHeader.jsp" %>
<%@include file="footer.jsp" %>
<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Change Security Question</title>
</head>
<body style="background-color:#9670a9">
<%String msg=request.getParameter("msg");
 if("done".equals(msg)){
%>
<h3 class="alert">Your security Question successfully changed !</h3>
<%} %>
<% 
 if("invalid".equals(msg)){
%>
<h3 class="alert">Your Password is wrong!</h3>
<%} %>
<form method="post" action="changeSecurityQuestionAction.jsp">

<h3>Select Your New Securtiy Question</h3>
  <select class="input-style" name="securityQuestion">
  <option value="favorite food?">favorite food?</option>
  <option value="birth place?">birth place?</option>
  <option value="number you like?">number you like?</option>
  </select>
 <hr>
 <h3>Enter Your New Answer</h3>
 <input type="text" class="input-style" name="newAnswer" placeholder="enter new answer" required>
<hr>
<h3>Enter Password (For Security)</h3>
<input type="password" class="input-style" name="password" placeholder="enter password" required>
<hr>
 <button type="submit" class="button" >Change<i class='far fa-arrow-alt-circle-right'></i></button>
</form>
</body>
<br><br><br>
</html>