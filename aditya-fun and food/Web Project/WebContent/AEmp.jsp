<%@ page 
    import ="java.io.IOException"
import  ="java.io.PrintWriter"
import  ="java.sql.Connection"
import  ="java.sql.DriverManager"
import  ="java.sql.PreparedStatement"
import  ="java.sql.ResultSet"
import  ="java.sql.SQLException"
import ="java.sql.Statement"
import  ="javax.servlet.RequestDispatcher"
import  ="javax.servlet.ServletException"
import= "p1.Connect"

language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
    
    
</head>
<body bgcolor="#373737" background="img/bg1.png" style="background-repeat: repeat; ">
<div id='img1' style="position:absolute; left: 378px; top: 8px; height: 161px;"><center>
<img src="images/logo.png" alt="lll" width="592" height="267"></center>
</div>
<div id='logo' style="position:absolute; left: 586px; top: 69px;">
<img src="images/logo2.png" alt="lll">
</div>

<div id='det' style="position:absolute ; left: 460px; top: 321px; ">
<%
			Connection c = null;
			Statement st=null;
			
			
	try {

	c=Connect.connect();
		
	
		
	
			String sql = "select * from ADMINISTRATOR.EMPDETAILS";
			 PreparedStatement pst = null;
			 pst= c.prepareStatement(sql); 
			 
 			//st.executeUpdate(sql);
			 
			ResultSet rst=pst.executeQuery();

			 String DbUserName=null;
			 String  DbType=null;
			 int DbID;
			 int DbPh;
%>
<table border="5px"  background-color="#FFF" style="font-color:white; font-family:Georgia, Garamond, Serif; background-color:#FFF;">
			 <tr>	<td>User ID</td><td>User Type</td><td>User Name</td><td>User Ph.No</td>	</tr>
<%
			 while(rst.next())
			 {
			 DbType=rst.getString(1);
			 DbUserName=rst.getString(2);
			 DbPh=(Integer.parseInt(rst.getString(3)));
			 DbID=(Integer.parseInt(rst.getString(4)));
			 %>
			 <tr>		 
			 <td><%= DbID %>
			 <td><%= DbType %></input>
						 
			 <td><%= DbUserName %>
			 
			 
			 			 
			 <td><%= DbPh %>
			 
			 </tr>
			 <%
               }
			 
		    		  
	   
	            c.commit();
			  
			}
			catch (SQLException e) {     
				
				out.print("DB2 Database connection Failed"+ e.getMessage());  
				 
			return;     }
				 
       finally
       {
    	  
    	   
       System.out.println("done");
       }
       
          
	
	

 %>
 </table>
</div>




</body>
</html>