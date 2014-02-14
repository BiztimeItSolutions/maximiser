<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ page import="java.io.*,java.util.*,javax.servlet.http.*,javax.servlet.*" language="java" contentType="text/html;  charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>


<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Get Social : Write Article</title>

<link rel="stylesheet" href="styles/indstyle.css" type="text/css"/>
<link rel="stylesheet" href="styles/flip.css" type="text/css"/>
<link rel="shortcut icon" href="images/icon.png" type="image/png">

<script src="http://tinymce.cachefly.net/4.0/tinymce.min.js"></script>
<script>
        tinymce.init({selector:'textarea'});
</script>


 <%
 
 if(session.getAttribute("isActive")==null)
 {
 
    response.sendRedirect("login.jsp");

 }
 %>

</head>
<div class="otherheader" align="right">

<div align="center">
<img src="images/logo.png" width="50" height="50"  />
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

<table border="0px" id="headertext">
<tr>
<td >
<a href="forum.jsp" class="green" style="text-decoration:none">

Forum

</a>
</td>
<td>
<a href="index.html" class="green" style="text-decoration:none">
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

<div class="controltable2">
<table align="center" style="padding-top:30px">
<tr>
<td>

<form action="submit" method="post" enctype="multipart/form-data">

Article Title &nbsp;&nbsp;&nbsp;<input type="text" name="title" required="required"/>&nbsp;&nbsp;&nbsp;

Categoery &nbsp;&nbsp;&nbsp;
<select name="category">
<option value="" disabled="disabled" selected=false> Select Category </option>
<option value="Crime">Crime</option>
<option value="Bribe">Corruption/Bribe</option>
<option value="Traffic">Traffic</option>
<option value="Environmental">Environmental</option>
<option value="Poverty">Poverty</option>
<option value="Labour">Labour</option>
<option value="Violence">Violence</option>
<option value="Waste Management">Waste Management</option>
<option value="Economy">Economy</option>
<option value="Caste">Caste</option>
<option value="Education">Education</option>
<option value="Media">Media</option>
<option value="Alcohol & Drugs">Alcohol & Drugs</option>
<option value="Human Rights">Human Rights</option>
<option value="Health & Medical">Health & Medical</option>
<option value="Work">Work</option>
<option value="Sanitation">Sanitation</option>
<option value="Others">Others</option>


</select>
</td>
</tr>
</table>
<br />



<textarea rows="15" name="article" required="required">


</textarea>


<br/>
<div align="center">

<input type="file" name="filetoupload" value="Upload" required="required"/>

<input type="submit" value="Submit" />
</div>

</form>

<div align="center" style="padding-top:20px;">
</div>
</div>





<div id="footer" align="center">
Get Social  2014 | An Indian Social Forum  | All Rights Reserved   
</div>
        
</body>
</html>
