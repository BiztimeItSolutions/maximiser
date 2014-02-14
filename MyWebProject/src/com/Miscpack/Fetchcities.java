package com.Miscpack;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import com.Registration.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Fetchcities")
public class Fetchcities extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	public Fetchcities() {
        super();
   
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		PrintWriter out=response.getWriter();
		
		String state=request.getParameter("val");
		
		System.out.print(state);
		
		ConnectionClass conn=null;
		
		Statement stm=null;
		
		ResultSet rst=null;
		
		
		
		try 
		{
			stm=conn.con().createStatement();
			
			String sql="SELECT * FROM ADMINISTRATOR.CITIES WHERE STATE='"+state+"'";
			
			
			rst=stm.executeQuery(sql);
			
			String city=null;
			
			while(rst.next())
			{


				city=rst.getString("CITY_NAME");
				
				out.print("<option value='");
				
				out.print(city);
				
				out.print("'>");
				
				out.print(city);
				
				out.print("</option>");
				
				System.out.print(city);
				
				
				
			}
			
			
			
		}
		
		catch (SQLException e)
		
		{
			
			e.printStackTrace();
		}
		
		

	
	
	}


}
