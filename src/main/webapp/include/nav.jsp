<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<nav class="navbar navbar-expand-md navbar-light" >
  <a class="navbar-brand" href="${pageContext.request.contextPath}/index.jsp">메인홈</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="collapsibleNavbar">
    <ul class="navbar-nav">
    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
        소개
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="#">소개 인사말</a>
        <a class="dropdown-item" href="#">오시는 길</a>
        <a class="dropdown-item" href="#">임직원도</a>
      </div>
    </li>   
      <li class="nav-item">
        <a class="nav-link" href="#">공지사항</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">도서검색</a>
      </li>
      <c:if test="${sMid != null}">
	      <li class="nav-item">
	        <a class="nav-link" href="#">좌석예약</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="#">자유게시판</a>
	      </li>
	      <li class="nav-item dropdown">
	      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
	        고객센터
	      </a>
	      <div class="dropdown-menu">
	        <a class="dropdown-item" href="#">자주 묻는 질문</a>
	        <a class="dropdown-item" href="#">1:1문의</a>
	      </div>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="#">관리자메뉴</a>
	      </li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	      <li class="nav-item">
	        <a class="nav-link" href="#">로그아웃</a>
	      </li>
      </c:if>
      <c:if test="${sMid == null}">
	      <li class="nav-item">
	        <a class="nav-link" href="Login.common">로그인</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="#">회원가입</a>
	      </li>
       </c:if>
    </ul>
  </div>  
</nav>