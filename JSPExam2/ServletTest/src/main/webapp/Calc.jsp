<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.util.Calendar"%>
<!--함수 import 부분  -->

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">


<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

<title>Insert title here</title>
</head>

<body>

	<header>
		<h2 style="text-align: center">계산기</h2>
	</header>
	
	<form action="./calc" method="post" style="text-align: center;">
		<input type="text" name ="num1" style="width: 60px; height: 20px"> 
		<select name="Oper">
			<option value="+">+</option>
			<option value="-">-</option>
			<option value="*">*</option>
			<option value="/">/</option>
		</select> <input type="text" name="num2" style="width: 60px; height: 20px">
		<input type="submit" value="계산" >
		<input type="reset" value="다시입력">
	</form>
</body>
</html>