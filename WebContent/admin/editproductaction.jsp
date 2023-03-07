<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.SQLException" %>
<%
String id=request.getParameter("id");
String name=request.getParameter("name");
String category=request.getParameter("category");
String price=request.getParameter("price");
String active=request.getParameter("active");
//System.out.println(id+" "+name+" "+category+" "+price+" "+active);
try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	st.executeUpdate("update product set name='"+name+"',category='"+category+"',price='"+price+"',active='"+active+"'where id='"+id+"'");
	if(active.equals("No"))
	{
		st.executeUpdate("delete from cart where productid='"+id+"'and address is NULL");
	}
	response.sendRedirect("allProductEditProduct.jsp?msg=Done");
}
catch(Exception e)
{
	System.out.println(e);
	response.sendRedirect("allProductEditProduct.jsp?msg=Wrong");
}
%>