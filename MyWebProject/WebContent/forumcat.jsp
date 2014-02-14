
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Get Social : Categories</title>
<link rel="stylesheet" href="styles/indstyle.css" type="text/css"/>
<link rel="stylesheet" href="styles/flip.css" type="text/css"/>
<link rel="shortcut icon" href="images/icon.png" type="image/png">
</head>
<div class="header_container" align="right">
<span id="wel">



<style>


		/* simple */
		.flip-container {
			-webkit-perspective: 1000;
			-moz-perspective: 1000;
			-ms-perspective: 1000;
			perspective: 1000;

			-ms-transform: perspective(1000px);
			-moz-transform: perspective(1000px);
    			-moz-transform-style: preserve-3d; 
    			-ms-transform-style: preserve-3d; 

			
		}

			/*
			.flip-container:hover .flipper, .flip-container.hover .flipper, #flip-toggle.flip .flipper {
				-webkit-transform: rotateY(180deg);
				-moz-transform: rotateY(180deg);
				-ms-transform: rotateY(180deg);
				transform: rotateY(180deg);
				filter: FlipH;
    			-ms-filter: "FlipH";
			}
			*/


			/* START: Accommodating for IE */
			.flip-container:hover .back, .flip-container.hover .back {
    -webkit-transform: rotateY(0deg);
    -moz-transform: rotateY(0deg);
    -o-transform: rotateY(0deg);
    -ms-transform: rotateY(0deg);
    transform: rotateY(0deg);
}

.flip-container:hover .front, .flip-container.hover .front {
    -webkit-transform: rotateY(180deg);
    -moz-transform: rotateY(180deg);
    -o-transform: rotateY(180deg);
    transform: rotateY(180deg);
}
		
		/* END: Accommodating for IE */

		.flip-container, .front, .back {
			width: 200px;
			height: 120px;
		}

		.flipper {
			-webkit-transition: 0.6s;
			-webkit-transform-style: preserve-3d;
			-ms-transition: 0.6s;

			-moz-transition: 0.6s;
			-moz-transform: perspective(1000px);
			-moz-transform-style: preserve-3d;
			-ms-transform-style: preserve-3d;

			transition: 0.6s;
			transform-style: preserve-3d;

			position: relative;
		}

		.front, .back {
			-webkit-backface-visibility: hidden;
			-moz-backface-visibility: hidden;
			-ms-backface-visibility: hidden;
			backface-visibility: hidden;

		    -webkit-transition: 0.6s;
		    -webkit-transform-style: preserve-3d;

		    -moz-transition: 0.6s;
		    -moz-transform-style: preserve-3d;

		    -o-transition: 0.6s;
		    -o-transform-style: preserve-3d;

		    -ms-transition: 0.6s;
		    -ms-transform-style: preserve-3d;

		    transition: 0.6s;
		    transform-style: preserve-3d;

			position: absolute;
			top: 0;
			left: 0;
		}

		.front {
			-webkit-transform: rotateY(0deg);
			-ms-transform: rotateY(0deg);
			z-index: 2;
		}

		.back {
	
			-webkit-transform: rotateY(-180deg);
		    -moz-transform: rotateY(-180deg);
		    -o-transform: rotateY(-180deg);
		    -ms-transform: rotateY(-180deg);
		    transform: rotateY(-180deg);
		}

		.front .name {
			font-size: 2em;
			display: inline-block;
			background: rgba(33, 33, 33, 0.9);
			color: #f8f8f8;
			font-family: Courier;
			bottom: 50px;
			left: 25%;
			position: absolute;
			text-shadow: 0.1em 0.1em 0.05em #333;
			display: none;

			-webkit-transform: rotate(-20deg);
			-moz-transform: rotate(-20deg);
			-ms-transform: rotate(-20deg);
			transform: rotate(-20deg);
		}



	

		.back p {
			position: absolute;
			bottom: 20px;
			left: 0;
			right: 0;
			text-align: center;
			font-family:Verdana, Geneva, sans-serif;
			font-size:90%;
			padding-left:5%;
			padding-right:5%;
		
		}


		.front p {
			position: absolute;
			bottom: 7px;
			left: 0;
			right: 0;
			text-align: center;
		
		}

		
		
		/* vertical */
		.vertical.flip-container {
			position: relative;
		}

			.vertical .back {
				-webkit-transform: rotateX(180deg);
				-moz-transform: rotateX(180deg);
				-ms-transform: rotateX(180deg);
				transform: rotateX(180deg);
			}

			.vertical.flip-container .flipper {
				-webkit-transform-origin: 100% 213.5px;
				-moz-transform-origin: 100% 213.5px;
				-ms-transform-origin: 100% 213.5px;
				transform-origin: 100% 213.5px;
			}

			/*
			.vertical.flip-container:hover .flipper {
				-webkit-transform: rotateX(-180deg);
				-moz-transform: rotateX(-180deg);
				-ms-transform: rotateX(-180deg);
				transform: rotateX(-180deg);
			}
			*/

			/* START: Accommodating for IE */
			.vertical.flip-container:hover .back, .vertical.flip-container.hover .back {
			    -webkit-transform: rotateX(0deg);
			    -moz-transform: rotateX(0deg);
			    -o-transform: rotateX(0deg);
			    -ms-transform: rotateX(0deg);
			    transform: rotateX(0deg);
			}

			.vertical.flip-container:hover .front, .vertical.flip-container.hover .front {
			    -webkit-transform: rotateX(180deg);
			    -moz-transform: rotateX(180deg);
			    -o-transform: rotateX(180deg);
			    transform: rotateX(180deg);
			}
		/* END: Accommodating for IE */
	</style>


<% 

String firstname=(String)session.getAttribute("fname"); 


 %>
<font><b> Welcome </b>> <% out.print(firstname); %> </font>
</span>
<img src="images/logo.png" width="30" height="30" />
<img src="images/getsocial.png" width="100px" height="30px" style="padding-right:30%"/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="index.jsp" class="green" style="text-decoration:none">
Contact Us
</a>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="logout.jsp" class="green" style="text-decoration:none">
Logout
</a>
</div>
<!--
<div id="logo" align="center">
<img src="images/logo.png" width="80" height="80" />

<div id="getsocial">
<img src="images/getsocial.png" width="200px" height="60px"/>
<div id="h2">
<img src="images/tagw.png" width="270px" height="40px"  />
</div>
</div>
 -->
<body>
<h1 style="padding-left:15%"> Select a Categoery </h1>
<table style="padding-left:3%; padding-right:3%;" align="center" id="cattable">

<tr>
<td>
<a href="forum.jsp?cid=1" style="text-decoration:none;">
	<div class="flip-container" ontouchstart="this.classList.toggle('hover');">
		<div class="flipper">
			<div class="front" style="background:url(images/tblbk.png) 0 0 no-repeat;">
            <p> Crime</p>
			</div>
			<div class="back" style="background-image:url(images/logbk.png)">
			

				<p><b>Unlawful Acts Punishable by Law</b></p>
			</div>
		</div>
	</div>
</a>
</td>

<td>
<a href="forum.jsp?cid=2" style="text-decoration:none;">
	<div class="flip-container" ontouchstart="this.classList.toggle('hover');">
		<div class="flipper">
			<div class="front" style="background:url(images/tblbk.png) 0 0 no-repeat;">
              <p>Bribe</p>
			</div>
			<div class="back" style="background-image:url(images/logbk.png)">
			

				<p><b> Bribery in</br>Bureaucracy </b></p>
			</div>
		</div>
	</div>
</a>

</td>

<td>
<a href="forum.jsp?cid=3" style="text-decoration:none;">
	<div class="flip-container" ontouchstart="this.classList.toggle('hover');">
		<div class="flipper">
			<div class="front" style="background:url(images/tblbk.png) 0 0 no-repeat;">
              <p> Traffic</p>
			</div>
			<div class="back" style="background-image:url(images/logbk.png)">
			

				<p><b>Reported Traffic Violations Conducted</b></p>
			</div>
		</div>
	</div>
</a>
</td>

<td>
<a href="forum.jsp?cid=4" style="text-decoration:none;">
	<div class="flip-container" ontouchstart="this.classList.toggle('hover');">
		<div class="flipper">
			<div class="front" style="background:url(images/tblbk.png) 0 0 no-repeat;">
              <p>Environment</p>
			</div>
			<div class="back" style="background-image:url(images/logbk.png)">
			

			 <p><b>Reported Environmental Violations</b></p>
			</div>
		</div>
	</div>
</a></td>

<td>
<a href="forum.jsp?cid=5" style="text-decoration:none;">
	<div class="flip-container" ontouchstart="this.classList.toggle('hover');">
		<div class="flipper">
			<div class="front" style="background:url(images/tblbk.png) 0 0 no-repeat;">
            <p>Poverty</p>
			</div>
			<div class="back" style="background-image:url(images/logbk.png)">
			

					<p><b>Social Issues reported on death by poverty etc</b></p>
			</div>
		</div>
	</div>
</a>
</td>

<td>
<a href="forum.jsp?cid=6" style="text-decoration:none;">
	<div class="flip-container" ontouchstart="this.classList.toggle('hover');">
		<div class="flipper">
			<div class="front" style="background:url(images/tblbk.png) 0 0 no-repeat;">
            <p>Labour</p>
			</div>
			<div class="back" style="background-image:url(images/logbk.png)">
			

					<p><b> Labour Related Issues raised</b></p>
			</div>
		</div>
	</div>
</a>
</td>
</tr>

<tr>
<td>
<a href="forum.jsp?cid=7" style="text-decoration:none;">
	<div class="flip-container" ontouchstart="this.classList.toggle('hover');">
		<div class="flipper">
			<div class="front" style="background:url(images/tblbk.png) 0 0 no-repeat;">
            <p>Violence</p>
			</div>
			<div class="back" style="background-image:url(images/logbk.png)">
			

					<p><b>Gang-Violence/ Other Violences reported in an area</b></p>
			</div>
		</div>
	</div>
</a>
</td>

<td>

<a href="forum.jsp?cid=8" style="text-decoration:none;">
	<div class="flip-container" ontouchstart="this.classList.toggle('hover');">
		<div class="flipper">
			<div class="front" style="background:url(images/tblbk.png) 0 0 no-repeat;">
            <p>Waste </br>Management</p>
			</div>
			<div class="back" style="background-image:url(images/logbk.png)">
			

					<p><b>Issues related </br> to Collection &amp; Processing of Waste Materials </b></p>
			</div>
		</div>
	</div>
</a>
</td>

<td>
<a href="forum.jsp?cid=9" style="text-decoration:none;">
	<div class="flip-container" ontouchstart="this.classList.toggle('hover');">
		<div class="flipper">
			<div class="front" style="background:url(images/tblbk.png) 0 0 no-repeat;">
            <p>Economy</p>
			</div>
			<div class="back" style="background-image:url(images/logbk.png)">
			

				<p><b>Economy related public issues raised</b></p>
			</div>
		</div>
	</div>
</a>
</td>

<td>
<a href="forum.jsp?cid=10" style="text-decoration:none;">
	<div class="flip-container" ontouchstart="this.classList.toggle('hover');">
		<div class="flipper">
			<div class="front" style="background:url(images/tblbk.png) 0 0 no-repeat;">
			<p>Caste</p>
            </div>
			<div class="back" style="background-image:url(images/logbk.png)">
			

				<p><b>Caste / Religion related issues raised</b></p>
			</div>
		</div>
	</div>
</a>
</td>

<td>
<a href="forum.jsp?cid=11" style="text-decoration:none;">
	<div class="flip-container" ontouchstart="this.classList.toggle('hover');">
		<div class="flipper">
			<div class="front" style="background:url(images/tblbk.png) 0 0 no-repeat;">
            <p>Education</p>
			</div>
			<div class="back" style="background-image:url(images/logbk.png)">
			

				<p><b>Issues raised on Educational requirments and concerns</b></p>
			</div>
		</div>
	</div>
</a></td>

<td>
<a href="forum.jsp?cid=12" style="text-decoration:none;">
	<div class="flip-container" ontouchstart="this.classList.toggle('hover');">
		<div class="flipper">
			<div class="front" style="background:url(images/tblbk.png) 0 0 no-repeat;">
            <p>Media</p>
			</div>
			<div class="back" style="background-image:url(images/logbk.png)">
			

				<p><b>Biased information broadcasting by Media's or other Media related issues</b></p>
			</div>
		</div>
	</div>
</a>
</td>
</tr>

<tr>
<td>
<a href="forum.jsp?cid=13" style="text-decoration:none;">
	<div class="flip-container" ontouchstart="this.classList.toggle('hover');">
		<div class="flipper">
			<div class="front" style="background:url(images/tblbk.png) 0 0 no-repeat;">
			<p>Alcohol </br>&amp; Drugs</p>
            </div>
			<div class="back" style="background-image:url(images/logbk.png)">
			

				<p><b>Illegal Drugs &amp; Alcohol related concerns raised</b></p>
			</div>
		</div>
	</div>
</a></td>

<td>
<a href="forum.jsp?cid=14" style="text-decoration:none;">
	<div class="flip-container" ontouchstart="this.classList.toggle('hover');">
		<div class="flipper">
			<div class="front" style="background:url(images/tblbk.png) 0 0 no-repeat;">
            <p>Human </br>Rights</p>
			</div>
			<div class="back" style="background-image:url(images/logbk.png)">
			

				<p><b>Issues raised on Human Rights</b></p>
			</div>
		</div>
	</div>
</a></td>

<td>
<a href="forum.jsp?cid=15" style="text-decoration:none;">
	<div class="flip-container" ontouchstart="this.classList.toggle('hover');">
		<div class="flipper">
			<div class="front" style="background:url(images/tblbk.png) 0 0 no-repeat;">
            <p>Health &amp; </br> Medicine</p>
			</div>
			<div class="back" style="background-image:url(images/logbk.png)">
			

				<p><b>Issued Raised on Public Health &amp; Medical requirments</b></p>
			</div>
		</div>
	</div>
</a>
</td>

<td>
<a href="forum.jsp?cid=16" style="text-decoration:none;">
	<div class="flip-container" ontouchstart="this.classList.toggle('hover');">
		<div class="flipper">
			<div class="front" style="background:url(images/tblbk.png) 0 0 no-repeat;">
            <p>Work</p>
			</div>
			<div class="back" style="background-image:url(images/logbk.png)">
			

				<p><b>Work / Occupation related concerns</b></p>
			</div>
		</div>
	</div>
</a></td>

<td>
<a href="forum.jsp?cid=17" style="text-decoration:none;">
	<div class="flip-container" ontouchstart="this.classList.toggle('hover');">
		<div class="flipper">
			<div class="front" style="background:url(images/tblbk.png) 0 0 no-repeat;">
			<p>Sanitation</p>
            </div>
			<div class="back" style="background-image:url(images/logbk.png)">
			

				<p><b>Public Sanitation concerns</b></p>
			</div>
		</div>
	</div>
</a></td>

<td>
<a href="forum.jsp?cid=18" style="text-decoration:none;">
	<div class="flip-container" ontouchstart="this.classList.toggle('hover');">
		<div class="flipper">
			<div class="front" style="background:url(images/tblbk.png) 0 0 no-repeat;">
            <p>Others</p>
			</div>
			<div class="back" style="background-image:url(images/logbk.png)">
			

				<p><b>Issues related to other categories</b></p>
			</div>
		</div>
	</div>
</a>
</td>
</tr>


<br />

<div id="footer1" style="padding-left:33%">
Get Social  2014 | An Indian Social Forum  | All Rights Reserved   </div>
        
</body>
</html>
