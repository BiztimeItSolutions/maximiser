package com.Registration;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionClass {

	public final static Connection con()
	{
		
		Connection con=null;
		try
		
		{
			Class.forName("com.ibm.db2.jcc.DB2Driver");
		
		}
		
		
		catch(Exception e)
		
		{
			System.out.println("Error in Class.fornName "+e);
		}
		
	
		try
		{
			
			con=DriverManager.getConnection("jdbc:db2://localhost:50000/MAINDATA","Administrator","admin");
		}
		
		catch(Exception e)
		{
			System.out.println("Error in DriverManager.getConnection "+e);
		}
		
		return con;
	}
}
