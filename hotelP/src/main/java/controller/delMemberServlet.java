package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.AdminDAO;

/**
 * Servlet implementation class delMemberServlet
 */
@WebServlet("/delMemberServlet.do")
public class delMemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	AdminDAO dao = new AdminDAO(); 

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("id");
				
		dao.del(id);
	}

}
