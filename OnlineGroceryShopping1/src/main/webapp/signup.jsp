<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Signup</title>
</head>
<body style="background-color:#9670a9">
<div id='container'>
  <div class='signup'>
    <form action="signupAction.jsp" method="post">
    <input type="text" name="name" placeholder="Enter name" required>
    <input type="email" name="email" placeholder="Enter email" required>
    <input type="number" name="mobilenumber" placeholder="Enter number" required>
    <select name="securityQuestion" required>
    <option value="first car?">first car?</option>
    <option value="first pet?">first pet?</option>
    <option value="school attended?">school attended?</option>
    <option value="birth place?">birth place?</option>
    </select>
    <input type="text" name="answer" placeholder="answer" required>
    <input type="password" name="password" placeholder="password" required>
    <input type="submit" value="signup">
    </form>
      <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whysign'>
<%
 String msg=request.getParameter("msg");
if("valid".equals(msg))
{
%>	
<h1>Successfully Updated</h1>
<%} %>

<%
if("invalid".equals(msg))
{ %>

	
	<h1>Some thing Went Wrong! Try Again !</h1>
<%} %>

<h2>Online Accessories Shopping</h2>
    <p>The Online Accessories Shopping System is the application that allows the users to shop online without going to the shops to buy them.</p>
  </div>
</div>

</body>
</html>