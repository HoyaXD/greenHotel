package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;

import VO.MemberBoardVO;
import db.MemberBoardDAO;

/**
 * Servlet implementation class myBoardListViewServlet
 */
@WebServlet("/myBoardListViewServlet.do")
public class myBoardListViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	MemberBoardDAO dao = new MemberBoardDAO();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("application/json;charset=utf-8");
		
		String id = request.getParameter("id");
		System.out.println(id);
		ArrayList<MemberBoardVO> list = dao.mboardlist(id);
		
		JSONArray jobj = new JSONArray(list);
		PrintWriter out = response.getWriter();
		out.print(jobj);
	}

}
