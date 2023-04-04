package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import VO.MemberBoardVO;
import db.AdminDAO;
import db.HotelMemberDAO;

/**
 * Servlet implementation class hmBoard
 */
@WebServlet("/hmBoard.do")
public class hmBoard extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	HotelMemberDAO dao = new HotelMemberDAO(); 
    
    public hmBoard() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("application/json;charset=utf-8");
		String id = request.getParameter("id");
		String title = request.getParameter("title");
		String contents = request.getParameter("contents");
		
		MemberBoardVO v = new MemberBoardVO();
		
		v.setTitle(title);
		v.setContents(contents);
		v.setId(id);
		dao.mboard(v);
		
		request.getRequestDispatcher("mainPage.jsp").forward(request, response);

		
	}

}
