package common;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("*.common")
public class CommonController extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String com = request.getRequestURI();
		String viewPage = "/WEB-INF/common";
		CommonInterface command = null;
		com = com.substring(com.lastIndexOf("/") + 1,com.lastIndexOf("."));
		
		if(com.equals("Login")) {
			viewPage += "/login.jsp"; 
		} else if(com.equals("LoginOk")) {
			command = new LoginOkCommand();
			command.execute(request, response);
			return;
		}
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
	}
}
