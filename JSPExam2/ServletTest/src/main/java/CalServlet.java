import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.Calendar;

public class CalServlet extends HttpServlet {
										// 요청처리 						 응답처리
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
    	doPost(request, response);
    }
    
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException{
    
    response.setContentType("text/html");
        response.setCharacterEncoding("euc-kr");
       
        PrintWriter out = response.getWriter();
        
        int num1 = Integer.parseInt(request.getParameter("num1"));
        int num2 = Integer.parseInt(request.getParameter("num2"));
        char Oper=request.getParameter("Oper").charAt(0);
        
        
        float result;
        
        Calculator calc = new Calculator(num1, num2, Oper);
        result = calc.getResult();
        //Calculator ca=new Calculator();
        
        String html="<!DOCTYPE html><br>"
        		   +"<head><br>"
        		   +"<meta charset=\"EUC-KR\"><br>"
        		   +"<title>계산기</title><br>"
        		   +"</head><br>"
        		   +"<body><br>"
        		   +"<h1 align=\"center\">계산기</h1><br>"
        		   +"<p align=\"center\">"
        		   + num1 + " " + Oper + " " + num2 + " = " + calc.getResult()//객체생성한 ca클래스의 ca함수 호출, 매개변수 전달
        		   +"</p>"
        		   +"<div align=\"center\">"
        		   +"<a href=\"javascript:history.back();\">"//history.back(); 이전 페이지로 돌아가게 해주는 함수.
        		   +"메인으로 돌아가기"
        		   +"</a>"
        		   +"</div>"
        		   +"</body><br>"
        		   +"</html><br>";

        		out.print(html);
  
    }
}