package com.ict.edu;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Ex09")
public class Ex09 extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		out.println("<h1>성적입력</h1>");
		String id = request.getParameter("id");
		int kor = Integer.parseInt("kor");
		int eng = Integer.parseInt("eng");
		int math = Integer.parseInt("math");
		
		int sum = kor+eng+math;
		Double avg = (int)(sum/3.0*10)/10.0;
		String hak="";
		if (avg>=90) {
			hak = "A";
			} else if (avg>=80) {
				hak = "B";
			} else if (avg>=70) {
				hak = "C";
			} else  {
				hak = "F";
			}
	
			out.println("<h2><ul>");		
			out.println("<li>이름 : "+ id +"</li>");
			out.println("<li>국어 : "+ kor +"</li>");
			out.println("<li>영어 : "+ eng +"</li>");
			out.println("<li>수학 : "+ math +"</li>");
			out.println("<li>총점 : "+ sum +"</li>");
			out.println("<li>평균 : "+ avg +"</li>");
			out.println("<li>학점 : "+ hak +"</li>");
			out.println("</ul></h2>");

		
	}

}
