
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Get Social : Dashboard</title>
 
 
<link rel="stylesheet" href="styles/indstyle.css" type="text/css"/>
<link rel="stylesheet" href="styles/flip.css" type="text/css"/>
<link rel="shortcut icon" href="images/icon.png" type="image/png">
<%@ page 
    import ="java.io.IOException"
    import  ="java.io.PrintWriter"
    import  ="java.sql.SQLException"
    import  ="javax.servlet.RequestDispatcher"
    import  ="javax.servlet.ServletException"

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
<font><b> Welcome </b>> <%=firstname %></font>
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

<table id="headertext" background="images/text1.png" style="width:100%">
<tr>
<td >
<a href="forumcat.jsp" class="green" style="text-decoration:none">
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


<table class="controltable1" >
<tr>
<td align="center">
<div id="textsize">
Article Controls

</div>
<br/>
</td>
</tr>

<tr>
<td>
<a href="write.jsp" style="text-decoration:none">

 .  Write New Article
</a>
</td>
</tr>
<tr>
<td>
<a href="index.jsp" style="text-decoration:none">
 .  Request Anonymous Post
</a>
</td>
</tr>
<tr>
<td>
<a href="index.jsp" style="text-decoration:none">
 .  Edit Article 
</a>
</td>
</tr>
<tr>
<td>
<a href="index.jsp" style="text-decoration:none">
 .  Delete Article
</a>
</td>
</tr>

<tr>
<td>
<a href="index.jsp" style="text-decoration:none">
 .  Submitted Article Status
</a>
</td>
</tr>
</table>


<table class="controltable1" >
<tr>
<td>
<div id="textsize">
Discussion Forum Controls
<br/>
</div>
<br/>
</td>
</tr>
<tr>
<td>
<a href="index.jsp" style="text-decoration:none">
 .  Create New Discussion
</a>
</td>
</tr>
<tr>
<td>
<a href="index.jsp" style="text-decoration:none">
 .  View Active Participants
</a>
</td>
</tr>

<tr>
<td>
<a href="index.jsp" style="text-decoration:none">
 .  View Discussion Status
</a>
</td>
</tr>

<tr>
<td>
<a href="index.jsp" style="text-decoration:none">
 .  Create Users Poll
</a>
</td>
</tr>
<tr>
<td>
<a href="index.jsp" style="text-decoration:none">
 .  View Polls Status
</a>
</td>
</tr>
</table>


<table class="controltable1">
<tr>
<td>
<div id="textsize">
User Account Controls
</div>
<br/>
</td>
</tr>
<tr>
<td>
<a href="index.jsp" style="text-decoration:none">
 .  Change Password
</a>
</td>
</tr>
<tr>
<td>
<a href="accdetails.jsp" style="text-decoration:none">
 .  View My Account Details
</a>
</td>
</tr>
<tr>
<td>
<a href="index.jsp" style="text-decoration:none">
 .  My Statistics 
</a>
</td>
</tr>
<tr>
<td>
<a href="index.jsp" style="text-decoration:none">
 .  Request Help
</a>
</td>
</tr>

<tr>
<td >
<a href="index.jsp" style="text-decoration:none">
 .  Delete Account
</a>
</td>
</tr>
</table>

<div id="footer">
Get Social  2014 | An Indian Social Forum  | All Rights Reserved   </div>
        
</body>
</html>
