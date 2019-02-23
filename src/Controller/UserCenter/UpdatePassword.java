package Controller.UserCenter;

import DAO.UserDAO;
import Entity.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class UpdatePassword extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException{
        String userID=request.getParameter("Name");
        String newPassword=request.getParameter("Password");

        UserDAO userdao=new UserDAO();
        boolean result=userdao.updatepassword(userID,newPassword);
        User user=(User)request.getSession().getAttribute("LoginUser");
        user.setPassword(newPassword);
        request.getSession().setAttribute("LoginUser",user);

        PrintWriter out=response.getWriter();
        String fin =String.valueOf(result);
        out.print(fin);
    }
}
