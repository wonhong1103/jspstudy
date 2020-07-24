package com.ict.edu;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Ex03")
public class Ex03 extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public Ex03() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		out.println("<h2>내이름은 김삼순 </h2>");
		
		// 클라이언트가 서버에게 정보를 요청하면서 힌트를 제공할 수도 있다.
		// 이러한 힌트를 요청정보 또는 파라미터라고 한다.
		
		// 파라미터는 같은이름의 정보가 하나면   String
		//            같은이름의 정보가 여러개면 String[]
		
		// 파라미터를 저장하는 방법
		// String aaa = request.getParameter("name");
		// String[] bbb = request.getParameterValues("name");
		
		
		// name과 age가 넘어온다가 가정하고 
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		
		out.println("<h2>받은 이름 : " + name + "</h2>");
		out.println("<h2>받은 나이 : " + age + "</h2>");
		
		// su1 , su2 가 넘어온다. 더하기한 결과를 출력하자
	}
}









