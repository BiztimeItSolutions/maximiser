package p1;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddAdi
 */
@WebServlet("/Add")
public class Add extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /*
     * @see HttpServlet#HttpServlet()
     */
    public Add() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			//PrintWriter out=response.getWriter();
			String link=request.getParameter("addemp");
			//out.print(link);
			String link2="C:\\"+link;
			CSVLoader loader = new CSVLoader(Connect.connect());
			loader.loadCSV(link2, "EMPDETAILS", false);
			try
			{
				RequestDispatcher rd = request.getRequestDispatcher("AEmp.jsp");
				 rd.forward(request, response);
			}
			
				 
       finally
       {
    	  
    	   
       System.out.println("done");
       }
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
