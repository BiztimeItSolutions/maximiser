<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Get Social : Write Article</title>
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
<link rel="shortcut icon" href="images/icon.png" type="image/png">
<script>


function getXMLHttpRequest() 
{
  var xmlHttpReq = false;

  if (window.XMLHttpRequest) {

    xmlHttpReq = new XMLHttpRequest();

  } else if (window.ActiveXObject) 
  
  {
    try {
    
      xmlHttpReq = new ActiveXObject("Msxml2.XMLHTTP");
  
    } 
    
    catch (exp1) {
    
      try {
   
    
        xmlHttpReq = new ActiveXObject("Microsoft.XMLHTTP");
      } 
      
      catch (exp2) {
      
        xmlHttpReq = false;
      }
    }
  }
  return xmlHttpReq;
}





function showCities(str) 
{
 
  var xmlHttpRequest = getXMLHttpRequest();

  xmlHttpRequest.onreadystatechange = getReadyStateHandler(xmlHttpRequest);

  xmlHttpRequest.open("POST", "getCitylist.my?val="+str, true);

  xmlHttpRequest.setRequestHeader("Content-Type","application/x-www-form-urlencoded");

  xmlHttpRequest.send(null);

}


function getReadyStateHandler(xmlHttpRequest)

 {
 
  return function() 
  {
     if (xmlHttpRequest.readyState == 4) 
     {
      if (xmlHttpRequest.status == 200)
      
       {
      
         document.getElementById("dispcity").innerHTML=xmlHttpRequest.responseText;
      
      } 
      
      else 
      {
        alert("HTTP error " + xmlHttpRequest.status + ": " + xmlHttpRequest.statusText);
      }
    
    }
    
  };

}
</script>


<script>
function checkPass()
{

  var x1=document.forms["login"]["pass1"].value;
  var x2=document.forms["login"]["pass2"].value;
  if(x1 != x2)
  {
  
      document.getElementById("passerr").innerHTML="Password Mismatch Error ";
      return false;
   
  }
  else
  {
    
    return true;
  
  }
	
	
}


function resetForm()
{


 document.getElementById("login").reset();

}

</script>

</head>

<body>
<div class="otherheader" align="right">

<div align="center" style="padding-top:1%">
<a href="login.jsp"><img src="images/logo.png" width="60" height="60" /></a>
<img src="images/getsocial.png" width="150px" height="47px"/>
</div>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="login.jsp" class="green" style="text-decoration:none">
Login
</a>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="index.html" class="green" style="text-decoration:none">
Contact Us
</a>
</br>
<h1 id="he">Register New Account</h1> 

</div>



<br />
<br />
<br />
<h7>
     <h8 id="passerr">
     
     
     </h8>


<%

    String con1=(String)request.getAttribute("emailqry");
    String con2=(String)request.getAttribute("unameqry");
   if(con1=="exist")
   {
   
       %>
     <h8>
      Sorry ! This Email-id is already Registered with Us 
      </h8>
     <%
   }
   
    if(con2=="exist")
   {
   
    %>
    
       Sorry ! This Username is already taken. Please Choose a different one !
     
      
     <%
   
   }
   
 %></h7>


<div id="tab">
<table align="center" cellspacing="10%" >
<form id="login" onsubmit="return checkPass()" action="register" method="post" >
<tr> <td>Email </td><td><input type="email" required="required" name="email"/></td></tr><br />
<tr> <td>Username </td><td><input type="text" required="required" name="username"/></td></tr><br />
<tr><td>Password </td><td><input type="password" required="required" name="pass1"/></td></tr><br />
<tr><td>Confirm Password </td><td><input type="password" required="required"  name="pass2"/></td></tr><br />     <h8 id="passerr">

<tr> <td>First Name</td><td><input type="text" required="required" name="fname"/></td></tr><br />
<tr> <td>Last Name </td><td><input type="text" required="required" name="lname"/></td></tr><br />
<tr> <td>State </td><td>

<select name="state" default="Select State" onchange="showCities(this.value)">
	<option value=""> Select State </option>
    <option value="Andaman and Nicobar Islands">Andaman &amp; Nicobar</option>
    <option value="Andhra Pradesh">Andhra Pradesh</option>
    <option value="Arunachal Pradesh">Arunachal Pradesh</option>
    <option value="Assam">Assam</option>
    <option value="Bihar">Bihar</option>
    <option value="Chandigarh">Chandigarh</option>
    <option value="Chattisgarh">Chhattisgarh</option>
     <option value="Delhi">Delhi</option>
     <option value="Goa">Goa</option>
     <option value="Gujarat">Gujarat</option>
     <option value="Haryana">Haryana</option>
     <option value="Himachal Pradesh">Himachal Pradesh</option>
     <option value="Jammu and Kashmir">Jammu &amp; Kashmir</option>
     <option value="Jharkhand">Jharkhand</option>
     <option value="Karnataka">Karnataka</option>
     <option value="Kerala">Kerala</option>
     <option value="Madhya Pradesh">Madhya Pradesh</option>
     <option value="Maharashtra">Maharashtra</option>
     <option value="Manipur">Manipur</option>
     <option value="Meghalaya">Meghalaya</option>
     <option value="Mizoram">Mizoram</option>
     <option value="Nagaland">Nagaland</option>
     <option value="Orissa">Orissa</option>
     <option value="Pondicherry">Pondicherry</option>
     <option value="Punjab">Punjab</option>
     <option value="Rajasthan">Rajasthan</option>
     <option value="Sikkim">Sikkim</option>
     <option value="Tamil Nadu">Tamilnadu</option>
     <option value="Tripura">Tripura</option>
     <option value="Uttaranchal">Uttaranchal</option>
     <option value="Uttar Pradesh">Uttar Pradesh</option>
     <option value="West Bengal">West Bengal</option>



</select>    







</td></tr><br />
<tr> <td>City </td><td>
<select name="city" id="dispcity">
<option value="Other">Other</option>

</select>



</td></tr><br />
<tr> <td>Upload Photo</td><td> <input type="file"/></td></tr><br />
<tr><td><input type="submit" value="Reset Fields" onclick="resetForm()" /></td>
<td><input type="submit" value="Register" style="width:80%" /></td></tr>
</form>
</table>
</div>






<div id="footer1" align="center">
Get Social  2014 | An Indian Social Forum  | All Rights Reserved   
</div>
        
</body>
</html>
