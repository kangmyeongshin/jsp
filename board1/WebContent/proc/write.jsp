<%@page import="kr.co.board1.vo.MemberVO"%>
<%@page import="kr.co.board1.config.SQL"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="kr.co.board1.config.DBConfig"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String title=request.getParameter("subject");
	String content=request.getParameter("content");
	String regip=request.getRemoteAddr();
	
	
	MemberVO member =(MemberVO)session.getAttribute("member");
	String uid =member.getUid();
	
	
	Connection conn = DBConfig.getConnection();
	//1~2단계 포함
	//3단계
	
	
	PreparedStatement psmt = conn.prepareStatement(SQL.INSERT_BOARD);
	psmt.setString(1,title);
	psmt.setString(2,content);
	psmt.setString(3,uid);
	psmt.setString(4,regip);
	
	
	//4단계
	psmt.executeUpdate();
	//5단계(select가 아니므로 없다!!!!!)
	//6단계
	psmt.close();
	conn.close();
	
	//단계
	response.sendRedirect("../list.jsp");
%>