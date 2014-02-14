package com.SubmitArticle;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Registration.ConnectionClass;

@WebServlet("/Postcomment")
public class Postcomment extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public Postcomment() {
        super();
        
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	  String comment=request.getParameter("txtarea");
	  
	  HttpSession session=request.getSession();
	  
	  Integer uid=(Integer)session.getAttribute("uid");
	  
	  Integer aid=(Integer)session.getAttribute("articleid");
	  
	  PrintWriter out=response.getWriter();
	  
	  Connection con=null;
	  
	  Statement stmt=null;
	  
	  boolean result=false;
	  
	  try
	  
	  {
	  
		  
		  con=ConnectionClass.con();
		  
		  
		   stmt=con.createStatement();
		   
		   String sql="INSERT INTO ADMINISTRATOR.ARTICLE_COMMENT (COMMENT_CONTENT, COMMENT_DATE, USER_ID, ARTICLE_ID) VALUES ('"+comment+"',CURRENT_DATE,"+uid+","+aid+")";
	  
	       stmt.executeUpdate(sql);
	       
	       result=true;
	 
	  
	  }
	  
	  catch(Exception e)
	  {
		  
		  out.print("Could Not Connect to Database");
		  
		  e.printStackTrace();
		 
	  }
	  
		
	  if(result)
	  {
		   
		  
		  RequestDispatcher rd=request.getRequestDispatcher("articledisplay.jsp?id="+aid+"");
		  
		  rd.forward(request, response);
		  
	  }
		
		
	}

}
