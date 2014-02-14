<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>


<%@ page import="java.io.*,java.util.*,javax.servlet.http.*,javax.servlet.*" language="java" contentType="text/html;  charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Get Social : Login</title>
<link rel="stylesheet" href="styles/styles.css" type="text/css" />
<link rel="stylesheet" href="styles/flip.css" type="text/css"/>
<link rel="shortcut icon" href="images/icon.png" type="image/png">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js">
</script>

 <%

if(session.getAttribute("isActive")==null)
 {
 
    response.sendRedirect("login.jsp");

 }

 %>


</head>


<body>
<div id="h1">
<div id="logoshadow">
<img src="images/logo.png" width="200" height="200"/>
</div>
</div>
<% 

 if(request.getSession(false)!=null)
 {

         request.getSession().removeAttribute("isActive");
         request.getSession().invalidate();
         response.setHeader("Cache-Control","no-cache"); //HTTP 1.1 
         response.setHeader("Pragma","no-cache"); //HTTP 1.0 
         response.setDateHeader ("Expires", 0); //prevents caching at the proxy server  
         
 }

%>

<div align="center" id="cont">
<table border="0px" align="center" width="470" height="250">
<td>
<h2> You have Successfully Logged out ! </h2>
<h1> Thank you for using Get Social </h1>
<a href="login.jsp" style="text-decoration:none">Click Here to Login</a>
</td>
</table>
  </div>










<div id="footer">
Get Social  2014 | An Indian Social Forum  | All Rights Reserved   
</div>
</body>

</html>
