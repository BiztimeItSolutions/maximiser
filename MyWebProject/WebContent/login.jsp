<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ page import="java.io.*,java.util.*,javax.servlet.http.*,javax.servlet.*" language="java" contentType="text/html;  charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>

<%


if(session.getAttribute("uid")!=null)

{

  response.sendRedirect("index.jsp");
        
        
 }



else {
  
       
        response.setHeader("Cache-Control","no-cache");
        response.setHeader("Cache-Control","no-store");
        response.setHeader("Pragma","no-cache");
        response.setDateHeader ("Expires", 0);
  
   
     
    }


 %>


<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Get Social : Login</title>
<link rel="stylesheet" href="styles/styles.css" type="text/css" />
<link rel="stylesheet" href="styles/flip.css" type="text/css"/>
<link rel="shortcut icon" href="images/icon.png" type="image/png">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js">
</script>


</head>

<body>
<div id="h1">
<div id="logoshadow">
<img src="images/logo.png" width="100" height="100"/>

<img src="images/getsocial.png" width="350" height="120" />
</div>

<!--<h1> Get Social </h1>-->

</div>
<div id="h2">
<img src="images/tagw.png" width="300px" height="45px" />
</div>


<div align="center" id="cont">
<table border="1px" align="center" width="470" height="250">
<td style="background-image:url(images/logbk.png)">
<h3>Sign In</h3>
<form id="login" action="Login"  method="post">
Username &nbsp;&nbsp;&nbsp;<input type="text" name="username" required="required"></input><br><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Password&nbsp;&nbsp;&nbsp;<input name="pass" type="password" required="required" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br><br>
<input type="submit" class="button" value="Login"></input>
</br>
<h6>
<font color="#FF0000">
<% 

String msg=(String)session.getAttribute("msg");
if(msg=="fail")
{
out.print("Login Failed !<br> Please Check your Username or Password");
}
 %>
 </font>
 </h6>

</form>
</td>
</table>
  </div>
<div id="register">
<a href="registration.jsp" class="green" style="text-decoration:none">Register New Account Here</a>
</div>

<div id="footer">
Get Social  2014 | An Indian Social Forum  | All Rights Reserved   
</div>
</body>

</html>
