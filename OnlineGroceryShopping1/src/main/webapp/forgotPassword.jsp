<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>ForgotPassword</title>
</head>
<body style="background-color:#9670a9">
<div id='container'>
  <div class='signup'>
      <form action="forgotPasswordAction.jsp" method="post">
      <input type="email" name="email" placeholder="enter email" required>
      <input type="number" name="mobilenumber" placeholder="enter mobile number" required>
      <select name="securityQuestion">
       <option value="first car?">first car?</option>
    <option value="first pet?">first pet?</option>
    <option value="school attended?">school attended?</option>
     <option value="birth place?">birth place?</option>
      </select>
      <input type="text" name="answer" placeholder="enter answer" required>
      <input type="password" name="newpassword" placeholder="enter new password" required>
      <input type="submit" value="Save">
      </form>
      <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whyforgotPassword'>
   <%
   String msg=request.getParameter("msg");
   if("done".equals(msg)){
   %>
<h1>Password Changed Successfully!</h1>
<%} %>
<% 
if("invalid".equals(msg)){
	%>
<h1>Some thing Went Wrong! Try Again !</h1>
<%} %>

    <h2>Online Accessories Shopping</h2>
    <p>The Online Accessories Shopping System is the application that allows the users to shop online without going to the shops to buy them.</p>
  </div>
</div>
</body>
</html>