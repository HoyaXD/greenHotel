package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import db.HotelMemberDAO;

/**
 * Servlet implementation class hotelMemberServlet
 */
@WebServlet("/hotelMemberLoginServlet.do")
public class hotelMemberLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	HotelMemberDAO dao = new HotelMemberDAO();
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("application/json;charset=utf-8");
		
		String id = request.getParameter("id");
		System.out.println(id);
		String pw = request.getParameter("pw");
		System.out.println(pw);
		int result = dao.mloginCheck(id, pw);
		
		if(result == 1) {
			HttpSession session = request.getSession();
			session.setAttribute("id", id);
			request.getRequestDispatcher("mainPage.jsp").forward(request, response);
		}else {
			response.sendRedirect("hotelMemberReg.jsp");
		}
	}

}
