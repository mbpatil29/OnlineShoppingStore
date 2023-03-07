<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@ page import="java.io.*" %>

<%
String id=request.getParameter("id");
String email=request.getParameter("email");
String status="delivered";

try
{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	st.executeUpdate("update cart set status='"+status+"' where productid='"+id+"' and email='"+email+"' and address is not NULL");
	response.sendRedirect("ordersReceived.jsp?msg=delivered");
	
}
catch(Exception e)
{
	System.out.println(e);
	response.sendRedirect("ordersRecived.jsp?msg=wrong");
}



%>