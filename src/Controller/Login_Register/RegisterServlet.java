package Controller.Login_Register;

import java.io.IOException;
import java.util.Random;
import java.util.UUID;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.UserDAO;
import Entity.User;

public class RegisterServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setHeader("content-type", "text/html;charset=UTF-8");
		resp.setCharacterEncoding("UTF-8");
		req.setCharacterEncoding("UTF-8"); 

		
		//分派地址forward, 分派对象dispatcher
		String forward = null;
		RequestDispatcher dispatcher = null;

		Random r=new Random();
		int s=r.nextInt(4)+1;
		
		//获取表单中的用户参数
		String username = req.getParameter("username");
		String pwd = req.getParameter("pwd");
		String tel = req.getParameter("phoneNumber");
		String Email=req.getParameter("Email");
		String type="3";
		String description="这个人太懒，什么都没写...";
		String user_id= UUID.randomUUID().toString().replaceAll("-","");
		String image="../../static/image/"+s+".png";

		User user=new User(user_id,tel,username,pwd,type,Email,description,image);
		
		//判断用户名和手机号是否非空
		if (null == username || "".equals(username) ) {
			req.setAttribute("msg", "用户名不能为空！");
			forward = "register(2).jsp";
			dispatcher = req.getRequestDispatcher(forward);
			dispatcher.forward(req, resp);
			return;
			
		} else if(null == tel || "".equals(tel)) {
			req.setAttribute("msg", "手机号不能为空！");
			forward = "register(2).jsp";
			dispatcher = req.getRequestDispatcher(forward);
			dispatcher.forward(req, resp);
			return;
		} else if(null == pwd || "".equals(pwd)) {
			req.setAttribute("msg", "密码不能为空！");
			forward = "register(2).jsp";
			dispatcher = req.getRequestDispatcher(forward);
			dispatcher.forward(req, resp);
			return;
		}

		//建立数据库连接，并尝试查询
		UserDAO userdao = new UserDAO();
		try {
		    if(userdao.getUserBy("name",username)!=null) {
                if (userdao.getUserBy("name", username).size() > 1) {//若有重复用户名
                    req.setAttribute("msg", "用户名已存在");
                    RequestDispatcher rd = req.getRequestDispatcher("register(2).jsp");
                    rd.forward(req, resp);
                } else if (userdao.getUserBy("tel", tel).size() > 1) {//若手机号存在
                    req.setAttribute("msg", "手机号已被绑定");
                    RequestDispatcher rd = req.getRequestDispatcher("register(2).jsp");
                    rd.forward(req, resp);
                }
            }else {//允许插入
				boolean result=userdao.insertUser(user);
				//注册成功，跳转到Login,再次登录
				RequestDispatcher rd = req.getRequestDispatcher("login(2).jsp");
				rd.forward(req, resp);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
