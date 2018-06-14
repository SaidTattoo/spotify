import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class Session extends HttpServlet {
	
	public void init() throws ServletException{
		System.out.println("Hola Mundo");
	}
	public void doGet (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter objeto = response.getWriter();

		String user =request.getParameter("usuario");
		String pass =request.getParameter("contra");

		HttpSession ses=request.getSession();
		ses.setAttribute("usuario",user);
		ses.setAttribute("contraseña",pass);
	}
	public void destroy(){}
}

