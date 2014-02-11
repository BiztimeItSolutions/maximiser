<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

 <%@ page import="connect.*,java.io.*,java.util.*,javax.servlet.http.*,javax.servlet.*" language="java" contentType="text/html;  charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
 
 <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Get Social : Login</title>

<link rel="stylesheet" href="styles/styles.css" type="text/css" />
<link rel="shortcut icon" href="images/icon.png" type="image/png">

<body>

<%

regRegister ob=new regRegister();
List dispemp=ob.register();
Iterator it=disemp.iterator();

%>

<table>

<% 
while(it.hasNext())

{

Registration elc=(Registration)it.next();

%><td><%=out.print(""+elc.getUsername()) %></td>
<td><%=out.print(""+elc.getPassword())%></td>
<td><%=out.print(""+elc.getEmai())%></td>
<td><%=out.print(""+elc.getCity())%></td>
<td><%=out.print(""+elc.getFname())%></td>
<td><%=out.print(""+elc.getLname())%></td>
<% 
}


 %>


</table>
<div id="footer">
Get Social © 2014 | An Indian Social Forum  | All Rights Reserved   
</div>
</body>

</html>
