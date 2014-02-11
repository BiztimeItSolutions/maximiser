package connect;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;



public class ConnectionClass {

	
   public static final Connection con()
   {
	   
	
	Connection con=null;

   
	 try {     
			
    	 Class.forName("com.ibm.db2.jcc.DB2Driver"); 
			
		}
		catch (Exception e) 
		{      
			System.out.println("Please include Classpath  Where your DB Driver is located");  
			System.out.println("Couldn't load database driver: " + e.getMessage());
			e.printStackTrace();  
			
		} 
	 
   
  
		try {
			con = DriverManager.getConnection("jdbc:db2://localhost:50000/MAINDATA","Administrator","admin");
			
		}
		
	
		
	
	catch (Exception e) 
	{
	
		System.out.println("Error in Driver Manager Connection"+e);
		e.printStackTrace();
	
		
	}
		return con;
	
		}
	 
	

}

