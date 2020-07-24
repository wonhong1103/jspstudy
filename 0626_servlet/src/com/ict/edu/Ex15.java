package com.ict.edu;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Ex15")
public class Ex15 extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		// 페이지 이동(a링크, 리다이렉트, 포워딩)
		// 1. a링크는 파라미터값을 가지고 갈 수도 있고 
		//				안가져 갈 수 도 있다.
		// 2. 현재 화면이 보이고 화면에서 a 링크 부분을 클릭해야만 이동			
		
		
		// 파라미터 id와 pw를 받아서 저장하자
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		out.println("<h2> Ex15 </h2>");
		out.println("<h3>");
		out.println("id : "+ id+"<br>");
		out.println("id : "+ pw);
		out.println("</h3>");
		
		out.println("<a href='Ex16'> 서블릿으로 이동, 정보X</a>");
		out.println("<a href='Ex16?id="+id+"&pw="+pw+"'> 서블릿으로 이동, 정보O</a>");
		out.println("<a href='ex16.html'> html문서로 이동, 정보X</a>");
		out.println("<a href='ex16.html?id="+id+"&pw="+pw+"'> html문서로 이동, 정보O</a>");
		
	}

}
