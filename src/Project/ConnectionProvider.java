package Project;
import  java.sql.*;


public class ConnectionProvider {
	public static Connection getCon()
	{
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");		
			System.out.println("Driver Loaded.......!");
			//DriverManager=(name of driver pass in argument)
			//getConnection() 
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/groceryonline","root","root");
			System.out.println("Database Connected......!");
			return con;
		}
		catch(Exception e)
		{
			System.out.println(e);
			return null;
			
		}
		
		
		
	}
	
}
