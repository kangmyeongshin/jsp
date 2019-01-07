<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>로그아웃 처리</h3>
	//세션값 제거 후 로그인 페이지 이동
	session.invalidate();
	response.sendRedirect("./login.jsp");
</body>
</html>