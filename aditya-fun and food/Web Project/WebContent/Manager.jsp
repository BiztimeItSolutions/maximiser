<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


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
    
    <link href="/menu_assets/styles.css" rel="stylesheet" type="text/css">
	<link href="menu_source/styles.css" rel="stylesheet" type="text/css">
	<link rel="stylesheet" href="css/style.css">
</head>
<body bgcolor="#373737" background="img/bg1.png" style="background-repeat: repeat; font-size: x-large; font-family: 'NFS font';">
<div id='img1' style="position:absolute; left: 378px; top: 8px; height: 161px;"><center>
<img src="images/logo.png" alt="lll" width="592" height="267"></center>
</div>
<div id='logo' style="position:absolute; left: 586px; top: 69px;">
<img src="images/logo2.png" alt="lll">
</div>


	<div id='table' style="position:absolute; left: 529px; top: 333px; width: 268px; height: 45px;">
	<table>
    <tr>
    <td>Employee Details</td> 
    <form method="get" action="AEmp.jsp">
    <td><input type="submit" value="Generate">
    </td>
    </form>
    </tr>
    <tr>
    <td>Waiter Details</td>
    <form method="get" action="WD.jsp">
    <td><input type="submit" value="Generate"></td>
    </form>
    </tr>
    <tr>
    <td>Table Details</td>
    <form method="get" action="TD.jsp">
    <td><input type="submit" value="Generate">
    </td>
    </form>
    </tr>
    <tr>
    <td>Item Details</td>
    <form method="get" action="ID.jsp">
    <td><input type="submit" value="Generate">
    </td>
    </form>
    </tr>
    </table>
	
	</div>
</body>
</html>
    