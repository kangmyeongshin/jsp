<%@page import="kr.co.board1.vo.MemberVO"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	MemberVO member = (MemberVO)session.getAttribute("member");

	if(member == null){
		//로그인을 안했으면		
		pageContext.forward("./login.jsp");
	}else{
		//로그인을 했으면	
		pageContext.forward("./list.jsp");
	}

%>