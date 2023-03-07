<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@ page import="java.io.*" %>

<% 
String Email=request.getParameter("Email");
String Mobileno=request.getParameter("Mobileno");
String securityquestion=request.getParameter("securityquestion");
String Answer=request.getParameter("Answer");
String newpassword=request.getParameter("newpassword");

int check=0;
try
{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from users where Email='"+Email+"' and Mobileno='"+Mobileno+"'and securityquestion='"+securityquestion+"' and Answer='"+Answer+"'");
	while(rs.next())
	{
		check=1;
		st.executeUpdate("update users set password='"+newpassword+"' where Email='"+Email+"'");
		response.sendRedirect("forgotPassword.jsp?msg=Done");
	}
	if(check==0)
	{
		response.sendRedirect("forgotPassword.jsp?msg=Invalid");
	}

}
catch(Exception e)
{
	System.out.println(e);
	
}

%>