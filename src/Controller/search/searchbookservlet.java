package Controller.search;

import java.io.IOException;
import java.sql.*;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.BookDAO;
import Entity.Book;

public class searchbookservlet extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setHeader("content-type", "text/html;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");

		String key = request.getParameter("searchtext");// 获取搜索数据

        try {
            BookDAO bookdao = new BookDAO();
            List<Book> result=bookdao.getBookby("name", key);
            request.setAttribute("response", result);
        }catch (Exception e){
            e.printStackTrace();
        }
		// 传送给输出jsp
		RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/jsp/search.jsp");
		rd.forward(request, response);
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);

	}
}