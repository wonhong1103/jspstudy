package com.ict.edu;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Ex06")
public class Ex06 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	  // 1. 요청에 의한 한글 처리 
	  // 2. 응답에 의한 한글 처리 및 문서 처리 
		response.setContentType("text/html; charset=UTF-8");
	  // 3. 출력 처리 
		PrintWriter out = response.getWriter();

		out.println("");
		out.print("<!DOCTYPE html>");
		out.print("<html>");
		out.print("<head>");
		out.print("<meta charset='UTF-8'>");
		out.print("<title>링크</title>");		
		out.print("</head>");
		out.print("<body>");
		
		out.println("<a href='http://www.google.com'>구글가기1</a>");
		out.println("<a href='http://www.google.com' target='_blank'>구글가기2</a>"); // 새창이 뜸
		out.println("<a href='/0626_servlet/Ex04'>문서04</a>");
		out.println("<a href='"+request.getContextPath()+"/Ex05'>문서05</a>");
		
		out.print("</body>");
		out.print("</html>");
	}
}






