<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.*"%>
<%@page import="connect.*;"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete Users</title>
</head>
<%
Connect C;
C=Connect.connect();
String sql = "SELECT * FROM users";
PreparedStatement ps = con.prepareStatement(sql);
ResultSet rst = ps.executeQuery();
int i=0;

%>				

<body>

<h1>Will be deleting an Existing User</h1>
<h4> List of Users</h4>
<form name=myname method=post
action="DelEmp">
<table border="1">
<tr><td>Select</td>
<td>User Type</td><td>User Name</td><td>Contact No.</td><td>UID</td>
</tr>
<%
while(rst.next()){ %>
<tr>
<td><input type="checkbox" name="check<%=i%>"
value=<%=rst.getInt(1)%>></td>
<td><%=rst.getString(1)%></td><td><%=rst.getString(2)%></td><td><%=rst.getInt(3)%></td><td><%=rst.getInt(4)%></td>
</tr>
<%}
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
<input type="submit" value="Delete"></form>
</body>
</html>