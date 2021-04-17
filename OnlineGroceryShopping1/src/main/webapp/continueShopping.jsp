<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%
String email=session.getAttribute("email").toString();
String status="processing";
try{
	Connection con=ConnectionProvider.getCon();
	PreparedStatement ps=con.prepareStatement("update cart set status='"+status+"' where email='"+email+"'");
	ps.setString(1, status);
	ps.executeUpdate();
	response.sendRedirect("home.jsp");
}catch(Exception e){
    System.out.println(e);	
}
%>