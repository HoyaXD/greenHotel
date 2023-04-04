package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.HotelMemberDAO;

/**
 * Servlet implementation class memberUpdateServlet
 */
@WebServlet("/memberUpdateServlet.do")
public class memberUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	HotelMemberDAO dao = new HotelMemberDAO(); 

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("application/json;charset=utf-8");
		
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String tel = request.getParameter("tel");
		String id = request.getParameter("id");
		
		System.out.println(id);
		System.out.println(pw);
		System.out.println(name);
		System.out.println(tel);

		
		
		
		dao.update(pw, name, tel, id);
		
		request.getRequestDispatcher("mainPage.jsp").forward(request, response);

	}

}
