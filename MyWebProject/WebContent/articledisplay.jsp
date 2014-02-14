
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Get Social : Article </title>
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
 
<link rel="stylesheet" href="styles/indstyle.css" type="text/css"/>
<link rel="stylesheet" href="styles/flip.css" type="text/css"/>
<script type="text/javascript" src="script/comment.js"></script>
<link rel="shortcut icon" href="images/icon.png" type="image/png">

<%

if(session.getAttribute("isActive")==null)
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

<font><b> You are logged in as > </b><%=firstname%> </font>
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
<h2><a href="forumcat.jsp" style="text-decoration:none; padding-left:60%">Categories</a></h2>

<% 

			String id=request.getParameter("id");
          
             int aid=Integer.parseInt(id);
             
             session.setAttribute("articleid",aid);


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


              
			String sql ="SELECT REGISTRATION.FIRSTNAME,ARTICLE.CATEGORY,ARTICLE.FILE_PATH,ARTICLE.CONTENT,ARTICLE.TOTRATE,ARTICLE.TITLE FROM REGISTRATION,ARTICLE WHERE REGISTRATION.USER_ID=ARTICLE.USER_ID AND ARTICLE.ARTICLE_ID="+aid+"";
			
			String sql1="SELECT ARTICLE_COMMENT.COMMENT_CONTENT,ARTICLE_COMMENT.COMMENT_DATE,ARTICLE_COMMENT.ARTICLE_ID,ARTICLE_COMMENT.USER_ID,REGISTRATION.USERNAME FROM ARTICLE_COMMENT,REGISTRATION WHERE ARTICLE_COMMENT.ARTICLE_ID="+aid+" AND REGISTRATION.USER_ID=ARTICLE_COMMENT.USER_ID";
			
			 PreparedStatement pst = null;
			 
			 pst= conn.prepareStatement(sql);
			 
             			 
			 ResultSet rst=pst.executeQuery();

	
			 String fname=null;
			 String cat=null;
			 String path=null;
			 String content=null;
			 int totrate=0;
			 String title=null;
			 
			  while(rst.next())
			 {
			  

			 title=rst.getString("TITLE");
			 cat=rst.getString("CATEGORY");
			 fname=rst.getString("FIRSTNAME");
			 totrate=rst.getInt("TOTRATE");
			  path=rst.getString("FILE_PATH");
			  content=rst.getString("CONTENT");
			  
			 
			} 
			 
			
			 
	%>


<div id="arttable">

<table style="background-image:url(images/tblbk2.png)">
<tr>
<div >
<th id="th1" colspan="2" style="font-size:170%; padding-bottom:3%; padding-top:3%"><%=title %></th>
</tr>
<tr>
<th id="th2" style="font-size:130%">Submitted by : <%=fname %> </th>
<th id="th2" style="font-size:130%">Ratings : <%=totrate %> </th>
</tr>
</tr>
<tr><td id="td1" colspan="2"><img src="<%=path %>" width="300px" height="300px"></td></tr>
<tr><td id="td2" colspan="2" style="border-bottom-style:double; font-size:120%"><%=content %></td></tr>
			
		    
<tr bordercolor="#FFFFFF">
<th style="padding-left:23%; padding-bottom:5%;" >

<div id="comment" style="float:left; font-size:110%; padding-top:5%">
Add Comment
</div>

<form action="postComment" method="post">

<textarea rows="3" cols="80" name="txtarea">

</textarea>

<div id="sub" style="padding-top:3%; padding-left:100%">

<input type="submit" value="Post Comment"/>

</form>

</div>

</th>

</tr>

<%


PreparedStatement pst1=null;

pst1=conn.prepareStatement(sql1);

ResultSet rst1=pst1.executeQuery();

String commentcontent=null;

String username=null;

String date=null;


 while(rst1.next())
			 {
			  

		      commentcontent=rst1.getString("COMMENT_CONTENT");
		      
		       username=rst1.getString("USERNAME");
		       
		       date=rst1.getString("COMMENT_DATE");
			  
			 
			




 %>


<div id="commentSpace">

<tr bordercolor="#FFFFFF" style="font-size:110%">
<td bgcolor="#000000" id="ucomment" style="border-style:ridge; float:left">
<b>
<%=username%> posted on <%=date %>
</b>
</td>
<td bgcolor="#333333"  style="padding-bottom:2%; padding-top:2%; float:left; width:137%; border-style:ridge; font-style:italic">
<%=commentcontent %>
</td>
</tr>
<%
               
               } 

	            conn.commit();
			  
			}
			catch (SQLException e) {     
				
				out.print("DB2 Database connection Failed"+ e.getMessage());  
				 
			return;     }
				 
   
	

 %>

</div>
</table>
 

			 
</div>

<div id="footer">
Get Social  2014 | An Indian Social Forum  | All Rights Reserved   </div>
        
</body>
</html>
