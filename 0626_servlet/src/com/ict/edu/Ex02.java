package com.ict.edu;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/hello")
public class Ex02 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Ex02() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//서블릿은 자바기반에서 HTML태그를 사용하여, 웹 브라우저에 표현하는 것이다.
		
		// 2. 응답에 대한 한글처리
		response.setContentType("text/html; charset=UTF-8;");
		// 3. 브라우저에 출력
		PrintWriter out = response.getWriter();
		
		out.println("<h1>서블릿 예제</h1>");
		out.println("<h2>hello world</h2>");
		out.print("서블릿 예제");
		out.print("hello world");
	}

}
