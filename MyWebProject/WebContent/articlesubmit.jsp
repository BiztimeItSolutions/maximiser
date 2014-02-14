<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ page import="java.io.*,java.util.*,javax.servlet.http.*,javax.servlet.*" language="java" contentType="text/html;  charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Get Social</title>
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
 
String articletitle=null;

System.out.println(request.getAttribute("title"));

if(request.getAttribute("title")!=null)
{

articletitle=(String)request.getAttribute("title");


 
}
 

 %>

</head>


<body>
<div id="h1">
<div id="logoshadow">
<img src="images/logo.png" width="200" height="200"/>
</div>
</div>


<div align="center" id="cont">
<table border="0px" align="center" width="470" height="250">
<% 
if(request.getAttribute("title")!=null)
{
%>
<td>
<h1> Thank You ! </h1>
<h3>Your Article titled <%=articletitle%> is submitted Successfully</h3>
<h2>Please wait untill it is verified </h2>
<p>&nbsp;</p>
<%}  
else
{
%>
<td>
<h1> Sorry ! </h1>
<h3>Your Article submission Failed</h3>
<h2>Please try after sometime </h2>
<p>&nbsp;</p>
<%} %>

<p>Click here to Naviagte to &gt;&gt; <a href="index.jsp" style="text-decoration:none">Dashboard</a></p></td>
</table>
  </div>



<div id="footer">
Get Social  2014 | An Indian Social Forum  | All Rights Reserved   
</div>
</body>

</html>
