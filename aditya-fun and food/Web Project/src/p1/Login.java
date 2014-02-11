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
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
				response.setContentType("text/html");
				PrintWriter out = response.getWriter();
			
				
				int user_id=(Integer.parseInt(request.getParameter("uid")));
				String password=request.getParameter("pass");
				String user_type=request.getParameter("type");
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
					
					String sql = "select * from ADMINISTRATOR.LOGIN1";
					 PreparedStatement pst = null;
					
					 pst= conn.prepareStatement(sql);
					 
					 
					 ResultSet rst=pst.executeQuery();
					 String  DbType=null;
					 int DbUserName;
					 String  DbPassword=null;
					 
					 Boolean Check=false;

					 while(rst.next())
					 {
						 DbType=rst.getString("UTYPE");
					 DbUserName=(Integer.parseInt(rst.getString("UID")));
					 DbPassword=rst.getString("PASSWORD");
					 

					 if (user_id==DbUserName &&
					 password.equals(DbPassword) && 
					 user_type.equals(DbType)) 
					 {
						 
						 HttpSession session=request.getSession();
						 session.setAttribute("utype",DbType);
						 session.setAttribute("uid",DbUserName);
						 
					 Check=true;
					 break;
					 }
					 }
					 
				    if(Check==true)
				    {
				    	if (user_type.equals("Admin"))
				    	{
				    	 RequestDispatcher rd = request.getRequestDispatcher("Admin.jsp");
						 rd.forward(request, response);
				    	}
				    
				    	else if(user_type.equals("Waiter"))
				    	{	
				    	
				    	 RequestDispatcher rd = request.getRequestDispatcher("Waiter.jsp");
						 rd.forward(request, response);
				    	
				    	}
				    	else if(user_type.equals("Manager"))
				    	{
				    	
				    	RequestDispatcher rd = request.getRequestDispatcher("Manager.jsp");
						 rd.forward(request, response);
				    	
				    	}     
				    	//else if(utype.equals("Chef"))
				    	else
				    	{
				    	
				    	RequestDispatcher rd = request.getRequestDispatcher("Chef.jsp");
						 rd.forward(request, response);
				    	
				    	}
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

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
