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
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class register
 */
@WebServlet("/register")
public class register extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public register() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
			}
	
		// TODO Auto-generated method stub
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username,fname,lname,state,city,mail;
		String pass=null;
		int usertype=1;
		

        PrintWriter out=response.getWriter();
		username=request.getParameter("username");
		pass=request.getParameter("pass1");
		fname=request.getParameter("fname");
		lname=request.getParameter("lname");
		state=request.getParameter("state");
		city=request.getParameter("city");
		mail=request.getParameter("email");
		
		
		 try {     
				
		    	// Class.forName("org.apache.derby.jdbc.EmbeddedDriver"); 
			 System.out.println("in forname"); 
			  Class.forName("com.ibm.db2.jcc.DB2Driver");
			  System.out.println("out forname"); 
					
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
			boolean Check=false;    
			try {  
				conn = DriverManager.getConnection("jdbc:db2://localhost:50000/MAINDATA","Administrator","admin");
			if (conn != null) 
			{    out.println("DB Database Connected");  }        
			else  
			{
				out.println("DB connection Failed "); 			
			}  

//String sql = "insert into ADMINISTRATOR.REGISTRATION  values (?,?,?,?,?,?,?,?)";
			
			out.println("<br>Username "+username);
			out.println("<br>Password: "+pass);
			out.println("<br>fname: "+fname);
			out.println("<br>lname: "+lname);
			out.println("<br>State: "+state);
			out.println("<br>Email: "+mail);
			out.println("<br>City: "+city);
			
			 String qry=null;
			
			 qry="select * FROM ADMINISTRATOR.REGISTRATION WHERE (USERNAME='"+username+"') OR (EMAIL='"+mail+"')";

			 String uName=null;
			 
			 String eM=null;
			 
			 boolean con=false,con1=false;
			 
			 PreparedStatement pst1 = null;
				
			 pst1= conn.prepareStatement(qry);
			 
			 ResultSet rst1=pst1.executeQuery();
			 
			 while(rst1.next())
			 {
			 uName=rst1.getString("USERNAME");
			 eM=rst1.getString("EMAIL");
			
			 if (username.equals(uName))
			 {
		     con=true;
			 break;
			 }
			 
			 if(mail.equals(eM))
			 {
				
				 con1=true;
				 break;
				 
			 }

			 
			 }
			 
			 if(con==true)
			 {
				 
				   
				    request.setAttribute("unameqry","exist");
				    RequestDispatcher rd=request.getRequestDispatcher("registration.jsp");
					rd.forward(request,response);
				 
				 
			 }
			 
			 else if(con1==true)
			 {
				 
				 
				    request.setAttribute("emailqry","exist");
				    RequestDispatcher rd=request.getRequestDispatcher("registration.jsp");
					rd.forward(request,response);
				 
				 
			 }
			 
			
			 else
	
				  
			 {
			 
			 String sql = "insert into ADMINISTRATOR.REGISTRATION(USERNAME,PASSWORD,EMAIL,CITY,STATE,FIRSTNAME,LASTNAME,USER_TYPE) VALUES ('"+username+"','"+pass+"','"+mail+"','"+city+"','"+state+"','"+fname+"','"+lname+"',"+usertype+")";

			
			 
			 PreparedStatement pst = null;
			
			 pst= conn.prepareStatement(sql); 
			 
			// pst = conn.prepareStatement("insert into ADMINISTRATOR.REGISTRATION(USERNAME,PASSWORD,EMAIL,CITY,STATE,OCCUPATION,FIRSTNAME,LASTNAME) VALUES (username,pass,email,city,state,work,fname,lname)"); 
			   
		     
	         /*   pst.setString(2, user);  
	            pst.setString(3, pass);  
	            pst.setString(4,mail); 
	            pst.setString(5,city);
	            pst.setString(6,state);
	            pst.setString(7,work); 
	            pst.setString(8,fname); 
	            pst.setString(9,lname); */
			 
			  
	          pst.executeUpdate(); 
	         
			 
	            Check=true;
	            
			 }
	           // pst.execute();
	            conn.commit();  
			  
			}
			catch (SQLException e) {     
				
				out.print("DB2 Database connection Failed"+ e.getMessage());  
				Check=false;
			 
				 
			return;     }
			
			
			
		if(Check)
		{
		
			RequestDispatcher rd=request.getRequestDispatcher("RegSuccess.jsp");
			rd.forward(request,response);
		}
		
		else
		{
			
		RequestDispatcher rd = request.getRequestDispatcher("RegFail.jsp");
		rd.forward(request, response);
		
		}

			

}
	
}

