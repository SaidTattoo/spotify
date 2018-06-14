import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

public class login extends HttpServlet{
public void doGet(HttpServletRequest request,
 HttpServletResponse response) throws ServletException, IOException {
PrintWriter objeto = response.getWriter();
try{
		//3306
		String valor3=request.getParameter("usuario");
    	String valor4=request.getParameter("contra");
		String base="jdbc:mysql://localhost/test?serverTimezone=UTC";
		Class.forName("com.mysql.jdbc.Driver");
		Connection conexion = DriverManager.getConnection(base,"root","");
		//String sql=" SELECT *  from usuarios where user = '"+valor3+"' and pass = '"+valor4+"'";
		String sql=" SELECT *  from usuarios where user = ? and pass = ?";
		//Statement consulta=conexion.createStatement();
		CallableStatement consulta=conexion.prepareCall(sql);
		/////////////////NOquery
		//ResultSet rs= consulta.executeQuery(sql);
		 consulta.setString(1,valor3);
		 consulta.setString(2,valor4);
		ResultSet rs= consulta.executeQuery();
		/*while(rs.next()){

			objeto.print(rs.getString("user"));
			objeto.print(registro.getString("pass"));
		}*/

		if(rs.next());
		 if((rs.getString("user").equals(valor3))&&(rs.getString("pass").equals(valor4)));
	

		 		HttpSession ses = request.getSession();
		 		ses.setAttribute("usuario",valor3);
		        response.sendRedirect("spotify.jsp");
	}catch(Exception ex){
		objeto.print(ex);
		response.sendRedirect("index.jsp");
	}





}
}