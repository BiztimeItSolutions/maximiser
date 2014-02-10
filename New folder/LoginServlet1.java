package p1;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class for Servlet: LoginServlet
 *
 */
 public class LoginServlet1 extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
    /* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#HttpServlet()
	 */
	  	
	
	/* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
	
		
		String user_id=request.getParameter("userid");
		String password=request.getParameter("password");
		  try {     
				
		    	 Class.forName("org.apache.derby.jdbc.EmbeddedDriver"); 
					
				}
				catch (ClassNotFoundException e) 
				{      
					out.println("Please include Classpath  Where your DB Driver is located");  
					out.println("Couldn't load database driver: " + e.getMessage());
					e.printStackTrace();      return;      
				} 
		out.println("DB driver is loaded successfully"); 
			Connection conn = null; 
			PreparedStatement pstmt = null; 
			ResultSet rset=null; 
			boolean found=false;    
			try {  
				conn = DriverManager.getConnection("jdbc:derby:H:/ASIETDB");
			if (conn != null) 
			{    out.println("DB Database Connected");  }        
			else  
			{
				out.println("DB connection Failed "); 			
			}  

//String sql = "insert into SCHEMA1.ATTANDENCETABLE values (?,?,?,?,?,?,?,?)";
			
			String sql = "select * from REGISTERSCHEMA.REGISTERTAB";
			 PreparedStatement pst = null;
			
			 pst= conn.prepareStatement(sql);
			 
			 
			 ResultSet rst=pst.executeQuery();
			 String DbUserName=null;
			 String  DbPassword=null;
			 Boolean Check=false;
			 while(rst.next())
			 {
			 DbUserName=rst.getString("userid");
			 DbPassword=rst.getString("password");

			 if (user_id.equals(DbUserName) &&
			 password.equals(DbPassword)) 
			 {
			 Check=true;
			 break;
			 }
			 }
			 
		    if(Check==true)
		    {
		    	 RequestDispatcher rd = request.getRequestDispatcher("loginsuccess.jsp");
				 rd.forward(request, response);
		    }
		    else
		    {
		    	 RequestDispatcher rd = request.getRequestDispatcher("loginfailed.jsp");
				 rd.forward(request, response);
		    	
		    }
	              
			
			  
	            int numRowsChanged =pst.executeUpdate();
	            conn.commit();
			  
			}
			catch (SQLException e) {     
				
				out.print("DB2 Database connection Failed"+ e.getMessage());  
				 
			return;     }
				 
       finally
       {
    	  
    	   
       System.out.println("done");
       }
	}  	
	
	/* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}   	  	    
}