package servlet3;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// @WebServlet("/oi3") //simple
@WebServlet(name = "meuServlet3", urlPatterns = "/oi3")
public class TchauJacare3 extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter out = resp.getWriter();
		
		out.println("<h1>");
		out.println("Tchau Jacaré Versão 3!");
		out.println("</h1>");
	}
}
