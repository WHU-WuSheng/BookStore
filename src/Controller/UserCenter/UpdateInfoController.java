package Controller.UserCenter;

import DAO.UserDAO;
import Entity.User;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


public class UpdateInfoController extends HttpServlet {

    public void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException {

        String userID=request.getParameter("userID");
        String email=request.getParameter("email");
        String username=request.getParameter("username");
        String tel=request.getParameter("tel");
        String description=request.getParameter("description");
        String type="3";

        User user=new User();
        user.setUserID(userID);
        user.setName(username);
        user.setTelephone(tel);
        user.setEmail(email);
        user.setDescription(description);
        user.setType(type);

        UserDAO userdao=new UserDAO();
        boolean result=userdao.updatebasicInfo(user);
        try {
            User a = userdao.getUserBy("user_id", userID).get(0);
            request.setAttribute("user",a);
            request.getSession().setAttribute("LoginUser",a);
        }catch (Exception e){
            e.printStackTrace();
        }


        request.getRequestDispatcher("/WEB-INF/jsp/center.jsp").forward(request,response);
    }
}
