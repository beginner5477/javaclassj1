<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
	Cookie[] cookies = request.getCookies();

	if(cookies != null) {
		for(int i = 0; i < cookies.length; i++) {
			if(cookies[i].getName().equals("cMid")) {
				pageContext.setAttribute("mid", cookies[i].getValue());
				break;
			}
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Insert</title>
<%@ include file="/include/bs4.jsp" %>
</head>
<body>
<%@ include file="/include/header.jsp" %>
<%@ include file="/include/nav.jsp" %>
<p><br/><p>
<div class="container">
	<form name="myform" method="post" action="LoginOk.common">
		아이디 : &nbsp;&nbsp;&nbsp;<input type="text" value="${mid}" name="mid" id="mid" placeholder="아이디를 입력해주세요." required autofocus/><br/>
		비밀번호 : <input type="password" name="pwd" id="pwd" placeholder="비밀번호를 입력해주세요." required/>
		<input type="submit" value="로그인"/><br/>
		<input type="checkbox" name="idStore" value="on"/>아이디 저장
	</form>
</div>
<p><br/><p>
<%@ include file="/include/footer.jsp" %>
</body>
</html>
