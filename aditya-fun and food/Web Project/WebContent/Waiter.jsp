<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<html>
<head>
    <title></title>
    <style type="text/css">
        .style2
        {
            width: 153px;
        }
        #Button1
        {
            width: 122px;
        }
        #Button2
        {
            width: 171px;
        }
        .style4
        {
            width: 200px;
        }
        </style>
    <link href="/menu_assets/styles.css" rel="stylesheet" type="text/css">
	<link href="menu_source/styles.css" rel="stylesheet" type="text/css">
	<link rel="stylesheet" href="css/style.css">
</head>
<body bgcolor="#373737" background="img/bg1.png" style="background-repeat: repeat;" >
<div id='img1' style="position:absolute; left: 378px; top: 8px; height: 161px;"><center>
<img src="images/logo.png" alt="lll" width="592" height="267"></center>
</div>
<div id='logo' style="position:absolute; left: 586px; top: 69px;">
<img src="images/logo2.png" alt="lll">
</div>


<div id='heading' style="position:absolute; left: 515px; top: 225px; width: 268px; height: 45px;">
	<img src="images/waiter.png" alt="a" height="222">
	
	</div>

<div id='table' style="position:absolute; left: 425px; top: 383px;">
<table style="width: 100%; height: 126px;">
        <tr>
            <td class="style2">
            <form method="get" action="TakeOrder.html">
   			 <button type="submit">Take Order</button>
			</form>
                </td>
            <td class="style4">
                <form method="get" action="ChangeOrder1.html">
    			<button type="submit">Change Order</button>
				</form>
                </td>
            <td>
                <form method="get" action="CancelOrder.html">
    			<button type="submit">Cancel Order</button>
				</form></td>
        </tr>
        </table>
		
        
</div>
</body>
</html>
    