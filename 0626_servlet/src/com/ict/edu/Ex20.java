package com.ict.edu;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.model.Com04;
import com.ict.model.Com05;
import com.ict.model.Com06;


@WebServlet("/Ex20")
public class Ex20 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		String cmd = request.getParameter("cmd");
		
		// 1-3 다시 html로 돌아가는 것(페이지이동)
		// request와 response가 필요 하면     포워딩
		//                      필요 없으면   리다이렉트 
		
		//4-6 일처리한 결과를 받는 변수
		String result = "";
		String msg="";
		switch (cmd) {
				case "1":
					response.sendRedirect("ex21_1.html");
					break;
				case "2":
					response.sendRedirect("ex21_2.html");
					break;
				case "3":
					response.sendRedirect("ex21_3.html");
					break;
				case "4":
					msg = "성적 결과";
					// 성적 (Com04)
					Com04 com4 = new Com04();
					result = com4.exec(request, response);
					break;
				case "5":
				    // 사직연산(Com05)
					msg = "사칙연산 결과";
					Com05 com5 = new Com05();
					result = com5.exec(request, response);
					break;
				case "6":
					// 알바비(Com06)
					msg = "알바비 결과";
					Com06 com6 = new Com06();
					result = com6.exec(request, response);
					break;
				}
				out.println("<h2> 결과 </h2>");
				out.println("<h2>"+result+"</h2>");
	}
}
