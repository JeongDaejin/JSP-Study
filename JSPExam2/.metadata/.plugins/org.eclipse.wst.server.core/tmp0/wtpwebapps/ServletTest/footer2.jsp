<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
footer.jsp에서 출력한 메시지입니다.
<hr>
	<%=request.getParameter("email") %>
	<%=request.getParameter("tel") %>
</body>
</html>