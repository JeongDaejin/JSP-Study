<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import="java.util.Calendar" %>
<!DOCTYPE html>


<%
Calendar c =Calendar.getInstance();
int hour=c.get(Calendar.HOUR_OF_DAY);
int minute=c.get(Calendar.MINUTE);
int second=c.get(Calendar.SECOND);
%>
<html>
<head>
<title>구구단</title>
<h2 style="text-align: center;">구구단</h2>
</head>
<body>
<TABLE border="1" style="text-align: center;">

<!-- 행 담당 -->
<% for(int i=0; i<10;i++){
	%>
	<tr>
	<!--  열 담당-->
	<% for(int j=1; j<10; j++){
		
		%>
			<!-- 빈칸 -->
		<% if(i==0 && j==1){%>
			<td></td>
			<!-- 단 -->
			<% } else if (i==0){%>
			<td><%=j %>단</td>
			
			<!-- 숫자 -->
			<%} else if(j==1){%>
			<td><%= i%></td>
			<!-- 구구단 내용 -->
			<%} else{ %>
			
		<td style="width: 200pt;"><%=j %>x<%=i %>=<%=i*j %></td>
		<%} %>
<% 
	}
	%>
	</tr>
	<% 
} %>

</TABLE>

</body>
</html>