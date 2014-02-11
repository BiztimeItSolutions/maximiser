<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head >
    <title></title>
	
<link rel="stylesheet" href="css/style.css">
	<link href="style1.css" rel="stylesheet" type="text/css">
<link href="menu_source/styles.css" rel="stylesheet" type="text/css">
<script type="text/javascript src="jQuery-Form-Validator-master/form-validator/jquery.form-validator.js"> </script>
</head>
<body bgcolor="#000000">
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
         <li class='last'><a href='BookTable.jsp'><span>Reservations</span></a></li>
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

<div id='login' style="position:absolute; left: 425px; top: 350px;">

<form method="get"  class="login" action="Login">
  <div id='type' style="position:absolute; left: 7px; top: -43px; width: 341px;">
  <p>
      <label for="login">Type:</label>
      <select name="type" id="utype" >
<option value="-1">Select</option>
                <option value="Admin">Admin</option>
                <option value="Waiter">Waiter</option>
                <option value="Manager">Manager</option>
                <option value="Chef">Chef</option>
	  </select>
    </p>
  </div>
    <p>
      <label for="login">Login ID:</label>
      <input type="text" name="uid" id="login" value="" required="required" data-validation="number">
    </p>

    <p>
      <label for="password">Password:</label>
      <input type="password" name="pass" id="password" value="" required="required">
    </p>

    <p class="login-submit">
      <button type="submit" class="login-button">Login</button>
    </p>

    <p class="forgot-password"><a href="index.html">Forgot your password?</a></p>
  </form> 

</div>



</body>
</html>