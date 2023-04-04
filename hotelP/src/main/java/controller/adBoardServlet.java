package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import VO.AdminBoardVO;
import db.AdBoardDAO;

/**
 * Servlet implementation class adBoardServlet
 */
@WebServlet("/adBoardServlet.do")
public class adBoardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	AdBoardDAO dao = new AdBoardDAO(); 
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("application/json;charset=utf-8");
		
		int num = Integer.parseInt(request.getParameter("num"));
		String id = request.getParameter("id");
		String title = request.getParameter("title");
		String contents = request.getParameter("contents");
		
		AdminBoardVO v = new AdminBoardVO();
		
		v.setNum(num);
		v.setTitle(title);
		v.setContents(contents);
		v.setId(id);
		
		dao.admboard(v);
		
		request.getRequestDispatcher("mainPage.jsp").forward(request, response);
	}
}
