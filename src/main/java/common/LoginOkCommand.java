package common;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginOkCommand implements CommonInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mid = request.getParameter("mid") == null ? "" : request.getParameter("mid");
		String pwd = request.getParameter("pwd") == null ? "" : request.getParameter("pwd");
		String viewPage;
		String idStore = request.getParameter("idStore") == null ? "" : request.getParameter("idStore");
		
		if(mid.equals("admin") && pwd.equals("1234")) {
			//로그인 성공시에
			viewPage = "/WEB-INF/main/main.jsp";
			//아이디 저장 체크시 쿠키에 넣어준다.
			Cookie cookieMid = new Cookie("cMid",mid);
			cookieMid.setPath("/");
			if(idStore.equals("on")) {
				cookieMid.setMaxAge(60*60*24*7);
			} else {
				cookieMid.setMaxAge(0);
			}
			response.addCookie(cookieMid);
			//세션에 필요 정보 저장해주기
			HttpSession session = request.getSession();
			session.setAttribute("sMid", mid);
//			session.setAttribute("sName", name);
//			session.setAttribute("sGrade", grade);
		} else {
			//로그인 실패시
			viewPage = "/WEB-INF/common/login.jsp";
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
	}

}
