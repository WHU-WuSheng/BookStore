/**
 * 
 */
package Controller.Login_Register;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.UserDAO;
import Entity.User;


/**
 * @author wang
 *
 */
@SuppressWarnings("serial")
public class LoginServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp); 
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
		//获取表单中的用户参数
		String username = req.getParameter("username");
		String pwd = req.getParameter("pwd");

		//建立数据库连接，并尝试查询
		UserDAO userdao = new UserDAO();
		try {
		    List<User> list=userdao.getUserBy("name",username);
		    if(list.size()==0){
		        req.setAttribute("msg","用户名不存在");
		        req.getRequestDispatcher("main.jsp").forward(req,resp);
            }
			//若查到了，跳转主界面main.jsp
			else {
		        User user=list.get(0);
                if (user.getPassword().equals(pwd)) {
                    HttpSession hs = req.getSession();
                    hs.setAttribute("LoginUser", user);
                    hs.setMaxInactiveInterval(3600);
                    RequestDispatcher rd = req.getRequestDispatcher("main.jsp");
                    rd.forward(req, resp);
                } else {
                    req.setAttribute("msg", "密码错误");
                    RequestDispatcher rd = req.getRequestDispatcher("login(2).jsp");
                    rd.forward(req, resp);
                }
            }
		} catch (Exception e) {
			e.printStackTrace();

		}
	}
}
