<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" 
    
      %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 128px;
        }
        .style2
        {
            width: 167px;
        }
    </style>
    
    <link href="/menu_assets/styles.css" rel="stylesheet" type="text/css" >
	<link href="menu_source/styles.css" rel="stylesheet" type="text/css">
	<link rel="stylesheet" href="css/style.css">
<%-- <%

if(session.getAttribute("uid")==null)
{
response.sendRedirect("Login.jsp");
}

 %> --%>
</head>
<div style="position:absolute;left: 1200px; top: 8px; height: 161px; "> 
<a href="Logout.jsp">Log Out</a></div>
<body bgcolor="#373737" background="img/bg1.png" style="background-repeat: repeat; font-size: x-large; font-family: 'NFS font';">
<div id='img1' style="position:absolute; left: 378px; top: 8px; height: 161px;"><center>
<img src="images/logo.png" alt="lll" width="592" height="267"></center>
</div>
<div id='logo' style="position:absolute; left: 586px; top: 69px;">
<img src="images/logo2.png" alt="lll">
</div>


	<div id='heading' style="position:absolute; left: 516px; top: 221px; width: 268px; height: 45px;">
	<img src="images/admin.png" alt="a" height="184">
	
	</div>
        <div id='opt' style="position:absolute; left: 349px; top: 396px;">
      
        
        <table style="width: 575px; height: 37px"; border-color:#C0C0C0>
        <tr>
        <td>
        <fieldset style="border-color:#C0C0C0"><legend style="font-family: 'times New Roman', Times, serif; font-size: medium; font-style: italic; color: #C0C0C0; text-decoration: underline;">Add Employee</legend>
        <form  method="get" action="Add" >
   			<p>
   			 <input type="file" name="addemp" id='addEmp'>
 			 </p>
  			<p> 
   			 <button type="submit"  value="Submit">Submit</button>
 			 </p>
		 </form> 
         </fieldset>
        </td>
        <td>
        <fieldset style="border-color:#C0C0C0"><legend style="font-family: 'times New Roman', Times, serif; font-size: medium; font-style: italic; color: #C0C0C0; text-decoration: underline;">Edit Employee</legend>
            <form method="get" action="EditE" >
   			<p>
  		 	 <input type="file" name="editEmp">
 		    </p>
 			 <p> 
  			  
   			 <button type="submit"  value="Submit1">Submit</button>
  			</p>	 
			</form></fieldset></td>
        <td >
        <fieldset style="border-color:#C0C0C0"><legend style="font-family: 'times New Roman', Times, serif; font-size: medium; font-style: italic; color: #C0C0C0; text-decoration: underline;">Delete Employee</legend>
        <form method="get" action="DelEmp">
   			<p>
  		 	 <input name="uid" type="text" class="inputs" placeholder="Enter Employee ID" required="required" />
 		    </p>
 			 <p> 
  			  
   			 <button type="submit"  value="Submit4">Submit</button>
  </p>	 
             
		</form></fieldset></td>
        
        </tr>
			<tr>
            <td >
            <fieldset style="border-color:#C0C0C0"><legend style="font-family: 'times New Roman', Times, serif; font-size: medium; font-style: italic; color: #C0C0C0; text-decoration: underline;">Add Item</legend>
            <form method="get" action="AddItem">
   			 <p>
  		 	 <input type="file" name="addItem">
 		    </p>
 			 <p> 
   			 <button type="submit"  value="Submit2">Submit</button>
  			</p>	 
			</form></fieldset></td>
			<td>
            <fieldset style="border-color:#C0C0C0"><legend style="font-family: 'times New Roman', Times, serif; font-size: medium; font-style: italic; color: #C0C0C0; text-decoration: underline;">Edit Item</legend>
            <form method="get" action="EditItem">
   			 <p>
  		 	 <input type="file" name="editItem">
 		    </p>
 			 <p> 
  			  
   			 <button type="submit"  value="Submit3">Submit</button>
  			  </p>	 
			  </form></fieldset></td>
            <td>
            <fieldset style="border-color:#C0C0C0"><legend style="font-family: 'times New Roman', Times, serif; font-size: medium; font-style: italic; color: #C0C0C0; text-decoration: underline;">Delete Item</legend>
            
            <form method="get" action="DelItem">
   			 <p>
  		 	 <input name="item" type="text" class="inputs" placeholder="Enter Item ID" required="required" />
 		    </p>
 			 <p> 
  			  
   			 <button type="submit"  value="Submit5">Submit</button>
  			</p>	 
			</form></fieldset></td>
            

        </tr>
        </table>

        </div>
        

</body>
</html>
    