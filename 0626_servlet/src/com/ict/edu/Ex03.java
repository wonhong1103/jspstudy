package com.ict.edu;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Ex03")
public class Ex03 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		// 1. 요청에 대한 한글처리
		// 2. 응답에 대한 한글처리 및 HTML문서
		response.setContentType("text/html; charset=UTF-8");
		// 3. 웹 브라우저에 HTML 출력하게 하는 코딩처리
		PrintWriter out = response.getWriter();
		
		out.println("<!DOCTYPE html><br>");
		out.println("<html><br>");
		out.println("<head><br>");
		out.println("<meta charset='UTF-8'><br>");
		out.println("<title>오늘의 운세</title><br>");
		out.println("</head><br>");
		out.println("<body><br>");
		out.println("<h1> 오늘의 운세 </h1><br>");
		// 오늘날짜구하기
		Calendar now = Calendar.getInstance();
		int year = now.get(Calendar.YEAR);
		int month = now.get(Calendar.MONTH)+1;
		int day = now.get(Calendar.DATE);
		int lucky = (int)(Math.random()*101); // 0~101까지 랜덤값 구하기
		out.println(year+". "+month+". "+day+".  의 운수는 "+lucky+"%입니다.");
		out.println("<hr>");
		
		
		// 요청정보들을 출력해 보자
		out.println("<h3><ul>");
		out.println("<li>"+request.getRemoteAddr()+"</li>");
		out.println("<li>"+request.getRemoteHost()+"</li>");
		out.println("<li>"+request.getRemotePort()+"</li>");
		out.println("<li>"+request.getRemoteUser()+"</li>");
		out.println("<li>"+request.getContextPath()+"</li>");
		out.println("<li>"+request.getRequestURI()+"</li>");
		out.println("</ul3></h3>");
		
		out.println("</body><br>");	
		out.println("</html><br>");	 
		
		
	}

}
