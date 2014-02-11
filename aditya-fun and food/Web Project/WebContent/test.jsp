<%@ page 
    import ="java.io.IOException"
import  ="java.io.PrintWriter"
import  ="java.sql.Connection"
import  ="java.sql.DriverManager"
import  ="java.sql.PreparedStatement"
import  ="java.sql.ResultSet"
import  ="java.sql.SQLException"

import  ="javax.servlet.RequestDispatcher"
import  ="javax.servlet.ServletException"

language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div id='det' style="position:absolute" ; left: 627px; top: 321px;">
<%

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
			
			String sql = "select * from ADMINISTRATOR.EMPDETAILS";
			 PreparedStatement pst = null;
			
			 pst= conn.prepareStatement(sql);
			 
			 
			 ResultSet rst=pst.executeQuery();

			 String DbUserName=null;
			 String  DbType=null;
			 int DbID;
			 int DbPh;
%>
<table border="10" bordercolor="white">
			 <tr>	<td>User ID</td><td>User Type</td><td>User Name</td><td>User Ph.No</td>	</tr>
<%
			 while(rst.next())
			 {
			 DbType=rst.getString(1);
			 DbUserName=rst.getString(2);
			 DbPh=(Integer.parseInt(rst.getString(3)));
			 DbID=(Integer.parseInt(rst.getString(4)));
			 %>
			 <tr>		 
			 <td><%= DbID %>
			 <td><%= DbType %></input>
						 
			 <td><%= DbUserName %>
			 
			 
			 			 
			 <td><%= DbPh %>
			 
			 </tr>
			 
			 
			 <%
			 }
			 
		    		  
	   
	            conn.commit();
			  
			}
			catch (SQLException e) {     
				
				out.print("DB2 Database connection Failed"+ e.getMessage());  
				 
			return;     }
				 
       finally
       {
    	  
    	   
       System.out.println("done");
       }
       
          
	
	

 %></table>
</div>
</body>
</html>