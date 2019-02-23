package Controller.gotocarts;

import java.io.IOException;  
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;  
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
   
  
public class gotocartsservlet extends HttpServlet {  
    public void doPost(HttpServletRequest request,  
                       HttpServletResponse response)  
            throws ServletException, IOException {     
       
		   
		   //传送给输出jsp
       RequestDispatcher rd=request.getRequestDispatcher("WEB-INF/jsp/carts.jsp");
        rd.forward(request, response);  
        
    }   
	
    public void doGet(HttpServletRequest request,   
                      HttpServletResponse response)  
      throws ServletException, IOException {  
            doPost(request,response);  
    	
    }  
}