<%@ page contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>1.내장객체 범위 확인</h3>
	<%
		String pName=(String)pageContext.getAttribute("name");
		Object rName=request.getAttribute("name");
		Object sName=session.getAttribute("name");
		String aName=application.getAttribute("name").toString();
		
		String str= (String)pName;
	%>
	<h4>pageContext Name값: <%=pName %></h4>
	<h4>request Name값: <%=rName %></h4>
	<h4>session Name값: <%=sName %></h4>
	<h4>application Name값: <%=aName %></h4>
	
	
</body>
</html>