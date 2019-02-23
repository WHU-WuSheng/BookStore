package Controller.Logout;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class LogOutController extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException{
        request.getSession().removeAttribute("LoginUser");
        request.getRequestDispatcher("/main.jsp").forward(request,response);
    }

}