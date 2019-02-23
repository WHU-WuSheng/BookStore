package Controller.getbook;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;  
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;

public class getbook extends HttpServlet {  
    public void doPost(HttpServletRequest request,  
                       HttpServletResponse response)  
            throws ServletException, IOException {     
       
		   
    	
        //传送给输出jsp
        RequestDispatcher rd=request.getRequestDispatcher("/commodity.jsp");
        rd.forward(request, response);  
        
    }   
	
    public void doGet(HttpServletRequest request,   
                      HttpServletResponse response)  
      throws ServletException, IOException {  
            doPost(request,response);  
    	
    }  
}  