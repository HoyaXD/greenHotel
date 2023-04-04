package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import db.AdminDAO;


@WebServlet("/aLcServlet.do")
public class aLcServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	AdminDAO dao = new AdminDAO();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("application/json;charset=utf-8");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		int result = dao.loginCheck(id, pw);
		
		if(result == 1) {
			HttpSession session = request.getSession();
			session.setAttribute("id", id);
			request.getRequestDispatcher("mainPage.jsp").forward(request, response);
		}else {
			response.sendRedirect("adminLogin.jsp");
		}
	}

}
