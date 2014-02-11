package p1;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/*import p1.Connect;*/
/**
 * Servlet implementation class DelEmp
 */
@WebServlet("/DelEmp")
public class DelEmp extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DelEmp() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
	
		
		int user_id=(Integer.parseInt(request.getParameter("uid")));
/*		Connection c = null;
		Statement st=null;*/	
		System.out.println(user_id);
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
		String sql = "delete from ADMINISTRATOR.EMPDETAILS where UID="+user_id+" ";
		 PreparedStatement pst ;
		 pst= conn.prepareStatement(sql); 
		 
		
		 
		pst.executeUpdate();
       
		try
		{
			RequestDispatcher rd = request.getRequestDispatcher("AEmp.jsp");
			 rd.forward(request, response);
		}
		
	
		finally
	       {
	    	  
	    	   
	       System.out.println("done");
	       }
				
			} catch (Exception e) {
				e.printStackTrace();
			}
	
}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
