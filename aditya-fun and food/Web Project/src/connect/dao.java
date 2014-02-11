package connect;

import java.util.ArrayList;
import java.util.List;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import connect.ConnectionClass;
import connect.Registration;


public class dao {

public List register()
{
	
	ConnectionClass con=null;	
	Statement stmt=null;
	ResultSet rs=null;
	List<Registration> ls=new ArrayList<Registration>();
	
	try
	{
	

		 stmt=con.con().createStatement();
		
	}
	
	catch(Exception e)
	{
		
		System.out.println("Error Occured !"+e);
		
	}
	
	
	try
	{
		
		System.out.println("stmt" +stmt);
		rs=stmt.executeQuery("select * from REGISTRATION");
		System.out.println("rs"+rs);
		while(rs.next())
		{
			
		
			Registration elc = new Registration();
			
			elc.setUsername(rs.getString("USERNAME"));
			
			elc.setPassword(rs.getString("PASSWORD"));
			elc.setEmail(rs.getString("EMAIL"));
			elc.setCity(rs.getString("CITY"));
			elc.setState(rs.getString("STATE"));
			elc.setFname(rs.getString("FIRSTNAME"));
			elc.setLname(rs.getString("LASTNAME"));
			ls.add(elc);
			
		}	
		
	}

	
    catch(Exception e )
    {
    	
    	System.out.println("Error Occured in SQL1 !"+e);
		
    }

return ls;

}

	

}
