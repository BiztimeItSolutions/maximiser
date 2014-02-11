package p1;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class C1
 */
@WebServlet("/C1")
public class C1 extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public C1() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		out.print("Hello World");
		String Studname=request.getParameter("sname");
		int Studid=(Integer.parseInt(request.getParameter("sid")));
		String Studpass=request.getParameter("pass");
		
		out.print("Student Name"+Studname);
		out.print("Student ID"+Studid);
		out.print("Password"+Studpass);
		
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
		boolean found=false;    
		try {  
			conn = DriverManager.getConnection("jdbc:db2://localhost:50000/ABB","administrator","admin");
		if (conn != null) 
		{    out.println("DB Database Connected");  }        
		else  
		{
			out.println("DB connection Failed "); 			
		}  

//String sql = "insert into aditya.registertable values (?,?,?,?,?,?,?,?)";
		
		String sql = "insert into ADITYA.REGISTERTABLE values (?,?,?)";
		 PreparedStatement pst = null;
		
		 pst= conn.prepareStatement(sql);
		// ps = conn.prepareStatement("insert into ASCHEMA.TABLE1 values (?,?,?)"); 
            pst.setString(1, Studname);  
            pst.setInt(2, Studid);  
            pst.setString(3,Studpass);  
		
		  
          pst.executeUpdate();
           // pst.execute();
            conn.commit();
		  
		}
		catch (SQLException e) {     
			
			out.print("DB2 Database connection Failed"+ e.getMessage());  
			 
		return;     }
			 
   finally
   {
	  
	  try {
		conn.close();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} 
   System.out.println("done");
   }

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
