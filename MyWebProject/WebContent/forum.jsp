
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Get Social : Forum</title>
 
 
<link rel="stylesheet" href="styles/indstyle.css" type="text/css"/>
<link rel="stylesheet" href="styles/flip.css" type="text/css"/>
<link rel="shortcut icon" href="images/icon.png" type="image/png">
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
import ="java.text.DateFormat"
import ="java.text.SimpleDateFormat"

language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    %>

<%


    

 if(session.getAttribute("isActive")!=null)
 {
 
    

 }
else
 { 
 
     
  
      response.sendRedirect("login.jsp");

     

  }
 %>

</head>
<div class="header_container" align="right">
<span id="wel">

<% 

String firstname=(String)session.getAttribute("fname"); 


 %>

<font><b> Welcome </b>> <% out.print(firstname); %> </font>
</span>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="index.jsp" class="green" style="text-decoration:none">
Contact Us
</a>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="logout.jsp" class="green" style="text-decoration:none">
Logout
</a>

</div>
<div id="logo" align="center">
<img src="images/logo.png" width="80" height="80" />

<div id="getsocial">
<img src="images/getsocial.png" width="200px" height="60px"/>
<div id="h2">
<img src="images/tagw.png" width="270px" height="40px"  />
</div>
</div>

<body>

<br />

<table border="0px" id="headertext" background="images/text1.png" style="width:100%">
<tr>
<td >
<a href="forum.jsp" class="green" style="text-decoration:none">

Forum

</a>
</td>
<td>
<a href="index.jsp" class="green" style="text-decoration:none">
My Articles 
</a>
</td>
<td>
<a href="index.jsp" class="green" style="text-decoration:none">
Recent Articles

</a>
</td>
<td>
<a href="index.jsp" class="green" style="text-decoration:none">
Top Rated Articles

</a>
</td>

<td>
<a href="index.jsp" class="green" style="text-decoration:none">
Top Read Articles

</a>
</td>

<td>
<a href="index.jsp" class="green" style="text-decoration:none">
Site Updates

</a>
</td>

<td>
<a href="index.jsp" class="green" style="text-decoration:none">
Govt Responses

</a>
</td>

</tr>

</table>
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
	        int cid=Integer.parseInt(request.getParameter("cid"));
				
	        		
			String sql ="SELECT CATEGORY.CATEGORY_NAME,REGISTRATION.FIRSTNAME,ARTICLE.ARTICLE_ID,ARTICLE.DATE,ARTICLE.TOTRATE,ARTICLE.TITLE FROM REGISTRATION,ARTICLE,CATEGORY WHERE REGISTRATION.USER_ID=ARTICLE.USER_ID AND CATEGORY.CATEGORY_ID="+cid+" AND ARTICLE.CATEGORY=CATEGORY.CATEGORY_NAME";
			

			
			 PreparedStatement pst = null;
			
			 pst= conn.prepareStatement(sql);
			 
             			 
			 ResultSet rst=pst.executeQuery();

	
			 String  title=null;
			 String  category=null;
			 String username=null;
			 String date=null;
			 int totrate=0;
			 int aid=0;
			 
	%>
	</br>
<h3></>Click on Article Title</h3> 
	
<div id="ftable">

<table style="background-image:url(images/tblbk.png)">
<tr>

<th>Category</th><th>Submitted On</th><th>Article Title</th><th>Submitted By</th><th>Total Ratings</th>
</tr>
<% 			 
			 while(rst.next())
			 {
			  

			 title=rst.getString("TITLE");
			 category=rst.getString("CATEGORY_NAME");
			 username=rst.getString("FIRSTNAME");
			 totrate=rst.getInt("TOTRATE");
			  date=rst.getString("DATE");
			  aid=rst.getInt("ARTICLE_ID");
			  
			 
			 
			 
			 %>
			 




<tr><td><%=category %></td><td><%=date %></td><td><a style="text-decoration:none" href="articledisplay.jsp?id=<%=aid %>"><%=title %></a></td><td><%=username %></td><td><%=totrate %></td></tr>


 
			 <%
	
			 }
		    		  
	   
	            conn.commit();
			  
			}
			catch (SQLException e) {     
				
				out.print("DB2 Database connection Failed"+ e.getMessage());  
				 
			return;     }
				 
   
	

 %>

</table>
</div>
<div id="footer1">
Get Social  2014 | An Indian Social Forum  | All Rights Reserved   </div>
        
</body>
</html>
