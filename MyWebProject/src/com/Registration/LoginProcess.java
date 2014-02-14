package com.Registration;


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
import javax.servlet.http.*;

/**
 * Servlet implementation class for Servlet: LoginServlet
 *
 */
 public class LoginProcess extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		PrintWriter out = response.getWriter();
		out.print("Entered Servlet");
		response.setContentType("text/html");
		
	
		
		String user_id=request.getParameter("username");
		String password=request.getParameter("pass");
		  try {     
				
		    	 Class.forName("com.ibm.db2.jcc.DB2Driver"); 
					
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
				conn = DriverManager.getConnection("jdbc:db2://localhost:50000/MAINDATA","Administrator","admin");
			if (conn != null) 
			{    out.println("DB Database Connected");  }        
			else  
			{
				out.println("DB connection Failed "); 			
			}  

//String sql = "insert into SCHEMA1.ATTANDENCETABLE values (?,?,?,?,?,?,?,?)";
			
			String sql = "select * from ADMINISTRATOR.REGISTRATION";
			 PreparedStatement pst = null;
			
			 pst= conn.prepareStatement(sql);
			 
			 
			 ResultSet rst=pst.executeQuery();

			 String DbUserName=null;
			 String  DbPassword=null;
			 String fname=null;
			 int userid;
			 Boolean Check=false;

			 while(rst.next())
			 {
			 DbUserName=rst.getString("USERNAME");
			 DbPassword=rst.getString("PASSWORD");
			 fname=rst.getString("FIRSTNAME");
			 userid=rst.getInt("USER_ID");
			 
			 if (user_id.equals(DbUserName) &&
			 password.equals(DbPassword)) 
			 {
				 
		     HttpSession session = request.getSession();
		     session.setAttribute("fname",fname);
		     session.setAttribute("uid",userid );
		     session.setAttribute("isActive",true);
		     
			 Check=true;
			 break;
			 }
			 }
			 
		    if(Check==true)
		    {
		    	out.print("Login Successfull");
		    	 RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
				 rd.forward(request, response);
		    }
		    else
		    {
		    	 
		    	 HttpSession session=request.getSession();
				 String msg="fail";
				 session.setAttribute("msg", msg);
		    	 RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
				 rd.forward(request, response);
				 
		    	
		    }
	              
			
			  
	            int numRowsChanged =pst.executeUpdate();
	            conn.commit();
			  
			}
			catch (SQLException e) {     
				
				out.print("DB2 Database connection Failed"+ e.getMessage());  
				 
			return;     }
				 
      
       
          
	}  	
	
	/* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}   	  	    
}