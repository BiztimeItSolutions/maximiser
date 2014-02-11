<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<html>
<head>
    <title></title>
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css">
  <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
  <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script>
  $(function() {
    $( "#datepicker" ).datepicker();
  });
  </script>
    <style type="text/css">
        .style1
        {
            width: 149px;
        }
    </style>
    <link href="/menu_assets/styles.css" rel="stylesheet" type="text/css">
<link href="menu_source/styles.css" rel="stylesheet" type="text/css">

<link href="style1.css" rel="stylesheet" type="text/css">
<link href="button.css" rel="stylesheet" type="text/css">

</head>
<body bgcolor="#373737" background="img/bg1.png" style="background-repeat: repeat">
<div id='img1' style="position:absolute; left: 378px; top: 8px; height: 161px;"><center>
<img src="images/logo.png" alt="lll" width="592" height="267"></center>
</div>
<div id='logo' style="position:absolute; left: 586px; top: 69px;">
<img src="images/logo2.png" alt="lll">
</div>


<div id='cssmenu' style="position:absolute; left: 378px; top: 260px; height: 65px;">
<ul>
   <li><a href='Main.jsp'><span>Home</span></a></li>
   <li class='has-sub'><a href='#'><span>Features</span></a>
      <ul>
         <li class='last'><a href='BookTable.html'><span>Reservations</span></a></li>
      </ul>
   </li>
   <li><a href='#'><span>Menus</span></a>
   <ul>
        	<li><a href='#'><span>Starters</span></a></li>
            <li><a href='#'><span>Soups</span></a></li>
            <li><a href='#'><span>Main Course</span></a></li>
            <li><a href='#'><span>Breads</span></a></li>
            <li><a href='#'><span>Desserts</span></a></li>
            <li><a href='#'><span>Beverages</span></a></li>
      </ul></li>
   <li class='has-sub'><a href='#'><span>Restaurant</span></a>
      <ul>
         <li><a href='#'><span>About</span></a></li>
         <li class='last'><a href='#'><span>Location</span></a></li>
      </ul>
   </li>
   <li class='last'><a href='#'><span>Contact</span></a></li>
   
  </ul>
</div>
<div id='heading' style="position:absolute; left: 499px; top: 225px; width: 268px; height: 45px;">
	<img src="images/bt.png" alt="a" height="222">
	
</div>

   
    <div id='book' style="position:absolute; left: 476px; top: 360px;">
<table style="width: 390px">
<tr>

<td>
    <input type="text" class="inputs" placeholder="Name" /> </td>
</tr>
<tr>
<td>
    <input type="text"class="inputs" placeholder="Number" /> </td></tr>
<tr>
<td>
    <input type="text"class="inputs" placeholder="No. Of People" /> </tr>
<tr>
<td>
<input type="text"class="inputs" placeholder="Date" id="datepicker"/>   </td></tr>
<tr>
<td>
<input type="text" class="inputs" placeholder="Time" id="datetimepicker"/>   </td></tr>

<tr>
<td> <input type="text"class="inputs" placeholder="No. Of People" />   </td>
</tr>
<tr>
<td>
    <input id="Reset1" type="reset" value="reset" />
    <script type="text/javascript"> 
function show_alert() 
{ 
alert("Table Booked!"); 
} 
</script> 
<input type="button" onClick="show_alert()" value="Submit" /></td>
</table>
</div>
</body>
</html>
    