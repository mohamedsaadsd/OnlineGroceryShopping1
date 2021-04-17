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
if("done".equals(msg)){
%>
<h3 class="alert">Address Successfully Updated !</h3>
<%} %>
<%

if("invalid".equals(msg)){
%>
<h3 class="alert">Some thing Went Wrong! Try Again!</h3>
<%} %>


<%
try{
Connection con =ConnectionProvider.getCon();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from users where email='"+email+"'");
while(rs.next()){
%>
<form action="addChangeAddressAction.jsp" method="post">
<h3>Enter Address</h3>
 <input class="input-style" value=<%=rs.getString(7) %> type="text" name="address" placeholder="enter Address">
  <hr>
 <h3>Enter city</h3>
 <input class="input-style" value=<%=rs.getString(8) %> type="text" name="city" placeholder="enter city">
<hr>
<h3>Enter State</h3>
<input class="input-style" value=<%=rs.getString(9) %> type="text" name="state" placeholder="enter State">
<hr>
<h3>Enter country</h3>
<input class="input-style" value=<%=rs.getString(10) %> type="text" name="country" placeholder="enter country">
<hr>
<button type="submit" class="button"> Change Address<i class='far fa-arrow-alt-circle-right'></i></button>
</form>
<%}}catch(Exception e){
	System.out.println(e);
}%>

</body>
<br><br><br>
</html>