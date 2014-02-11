package p1;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

/**
 * Servlet implementation class Connect
 */
@WebServlet("/Connect")
public class Connect extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	static Connection Conn=null;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public static Connection connect() {
        try{
        	Class.forName("com.ibm.db2.jcc.DB2Driver");
			Conn=DriverManager.getConnection("jdbc:db2://localhost:50000/ABB","Administrator","admin");
        }
        catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		return Conn;
        // TODO Auto-generated constructor stub
    }
    public static void clos()
	{
		try {
			Conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
