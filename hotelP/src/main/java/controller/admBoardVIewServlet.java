package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;

import VO.AdminBoardVO;
import db.AdminDAO;

@WebServlet("/admBoardVIewServlet.do")
public class admBoardVIewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	AdminDAO dao = new AdminDAO();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("application/json;charset=utf-8");
		List<AdminBoardVO> list = dao.mboardlist();
		JSONArray jobj = new JSONArray(list);
		PrintWriter out = response.getWriter();
		out.print(jobj);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
