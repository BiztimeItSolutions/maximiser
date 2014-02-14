

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
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


<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Get Social : My Account</title>

<link rel="stylesheet" href="styles/indstyle.css" type="text/css"/>
<link rel="stylesheet" href="styles/flip.css" type="text/css"/>
<link rel="shortcut icon" href="images/icon.png" type="image/png">
<%

if(session.getAttribute("isActive")==null)
 {
 
    response.sendRedirect("login.jsp");

 }
 
 %>

</head>
<div class="otherheader" align="right">

<div align="center" style="padding-top:0.5%">
<img src="images/logo.png" width="60" height="60"  />
<img src="images/getsocial.png" width="150px" height="47px"/>
</div>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="index.jsp" class="green" style="text-decoration:none">
Contact Us
</a>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="logout.jsp" class="green" style="text-decoration:none">
Logout
</a>


</div>

<body>


<br />


<table border="0px" id="headertext1" >
<tr>
<td >
<a href="forumcat.jsp" class="green" style="text-decoration:none">

Forum

</a>
</td>
<td>
<a href="forum.jsp" class="green" style="text-decoration:none">
My Articles 
</a>
</td>
<td>
<a href="index.html" class="green" style="text-decoration:none">
Recent Articles

</a>
</td>
<td>
<a href="index.html" class="green" style="text-decoration:none">
Top Rated Articles

</a>
</td>

<td>
<a href="index.html" class="green" style="text-decoration:none">
Top Read Articles

</a>
</td>

<td>
<a href="index.html" class="green" style="text-decoration:none">
Site Updates

</a>
</td>

<td>
<a href="index.html" class="green" style="text-decoration:none">
Govt Responses

</a>
</td>
</tr>
</table>

<%

Integer uid=(Integer)session.getAttribute("uid");

try {     
				
		    	 Class.forName("com.ibm.db2.jcc.DB2Driver"); 
					
				}
				catch (ClassNotFoundException e) 
				{      
					out.println("Please include Classpath  Where your DB Driver is located");  
					out.println("Couldn't load database driver: " + e.getMessage());
					e.printStackTrace();      return;      
				} 
					Connection conn = null; 
			PreparedStatement pstmt = null; 
			ResultSet rset=null; 
			boolean found=false;    
			try {  
				conn = DriverManager.getConnection("jdbc:db2://localhost:50000/MAINDATA","Administrator","admin");
			if (conn != null) 
			{    }        
			else  
			{
				out.println("DB connection Failed "); 			
			}  

//String sql = "insert into SCHEMA1.ATTANDENCETABLE values (?,?,?,?,?,?,?,?)";
			
			String sql = "select * from ADMINISTRATOR.REGISTRATION";
			
			 PreparedStatement pst = null;
			
			 pst= conn.prepareStatement(sql);
			 
			 
			 ResultSet rst=pst.executeQuery();

			 String  username=null;
			 String  fname=null;
			 String  lname=null;
			 String  email=null;
			 String  city=null;
			 String  state=null;
			 int userid;
			 
			 while(rst.next())
			 {
			 
			 userid=rst.getInt("USER_ID");
			 
			  if (uid.equals(userid)) 
			 {
			 username=rst.getString("USERNAME");
			 email=rst.getString("EMAIL");
			 city=rst.getString("CITY");
			 state=rst.getString("STATE");
			 fname=rst.getString("FIRSTNAME");
			 lname=rst.getString("LASTNAME");
			 
			 }
			 }
			 
			 %>
			 
			 
			 <div id="table2accdetails">
<h2 align="center">USER ACCOUNT DETAILS</h2>
<table border="0px" align="center">
<tr><td style="float:left;">User-ID</td><td><%=uid %></td></tr>
<tr><td style="float:left;">Username</td><td><%=username%></td></tr>
<tr><td style="float:left;">First Name</td><td><%=fname %></td></tr>
<tr><td style="float:left;">Last Name</td><td><%=lname %></td></tr>
<tr><td style="float:left;">Email-ID</td><td><%=email %></td></tr>
<tr><td style="float:left;">City</td><td><%=city%></td></tr>
<tr><td style="float:left;">State</td><td><%=state%></td></tr>
</table>
</div>
			 
			 
			 
			 <%
	
			 
		    		  
	   
	            conn.commit();
			  
			}
			catch (SQLException e) {     
				
				out.print("DB2 Database connection Failed"+ e.getMessage());  
				 
			return;     }
				 
   
	

 %>












<div id="footer1" align="center">
Get Social  2014 | An Indian Social Forum  | All Rights Reserved   
</div>
        
</body>
</html>
