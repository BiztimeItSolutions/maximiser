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
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class L1 extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public L1() 
    { super();
    
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
	
		
		int user_id=(Integer.parseInt(request.getParameter("uid")));
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
				conn = DriverManager.getConnection("jdbc:db2://localhost:50000/ABB","administrator","admin");
			if (conn != null) 
			{    out.println("DB Database Connected");  }        
			else  
			{
				out.println("DB connection Failed "); 			
			}  

//String sql = "insert into SCHEMA1.ATTANDENCETABLE values (?,?,?,?,?,?,?,?)";
			
			String sql = "select * from ADMINISTRATOR.LOGIN";
			 PreparedStatement pst = null;
			
			 pst= conn.prepareStatement(sql);
			 
			 
			 ResultSet rst=pst.executeQuery();

			 int DbUserName;
			 String  DbPassword=null;
			 Boolean Check=false;

			 while(rst.next())
			 {
			 DbUserName=(Integer.parseInt(rst.getString("USERID")));
			 DbPassword=rst.getString("PASSWORD");

			 if (user_id==DbUserName &&
			 password.equals(DbPassword)) 
			 {
			 Check=true;
			 break;
			 }
			 }
			 
		    if(Check==true)
		    {
		    	 RequestDispatcher rd = request.getRequestDispatcher("success.jsp");
				 rd.forward(request, response);
		    }
		    else
		    {
		    	 RequestDispatcher rd = request.getRequestDispatcher("LoginFail.jsp");
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