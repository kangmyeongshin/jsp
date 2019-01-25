<%@page import="kr.co.board1.service.MemberService"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	//세션값 제거 후 로그인 페이지 이동
	MemberService.getInstance().logout(session,response);
%>