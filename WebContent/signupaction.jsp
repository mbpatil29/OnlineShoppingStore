<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@ page import="java.io.*" %>

<%
String Name=request.getParameter("Name");
String EmailId=request.getParameter("Email");
String MobileNo=request.getParameter("Mobileno");
String SecurityQuestion=request.getParameter("securityquestion");
String Answer=request.getParameter("Answer");
String password=request.getParameter("password");
String Address="";
 String State="";
 String City="";
 String Country="";
try
{
	Connection con=ConnectionProvider.getCon();
	PreparedStatement ps=con.prepareStatement("insert into users values(?,?,?,?,?,?,?,?,?,?)");
	ps.setString(1, Name);
	ps.setString(2, EmailId);
	ps.setString(3, MobileNo);
	ps.setString(4, SecurityQuestion);
	ps.setString(5, Answer);
	ps.setString(6, password);
	ps.setString(7, Address);
	ps.setString(8, State);
	ps.setString(9, City);
	ps.setString(10, Country);
	ps.executeUpdate();
	response.sendRedirect("signup.jsp?msg=valid");
	
}
catch(Exception e)
{
	System.out.println(e);
	response.sendRedirect("signup.jsp?msg=invalid");
	
}
%>