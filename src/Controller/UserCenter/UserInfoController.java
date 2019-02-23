package Controller.UserCenter;

import Entity.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;



public class UserInfoController extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException {
        HttpSession session = request.getSession();
        if (session == null) {
            response.sendRedirect("/login(2).jsp");
            return;
        }
        request.getRequestDispatcher("WEB-INF/jsp/center.jsp").forward(request, response);
    }
}
