package com.ict.edu;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Ex01")
public class Ex01 extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public Ex01() {
        super();
    }
    // doGet() , doPost() => 둘 중 하나로 사용자에게 화면을 보여줘야 된다.
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		   // 요청(request) : 사용자가 서버에게 정보를 요청하는 것
		   // 요청에 대한 한글 처리 
		    request.setCharacterEncoding("utf-8");
		   
		   // 응답(response) : 서버가 요청을 받아서 사용자가 원하는 정보를 응답하는 것
		   // 응답에 대한 한글 처리
		   response.setContentType("text/html; charset=utf-8");
		   
		   // 내용을 화면에 보이게 하기 위한 처리 (화면처리)
		   PrintWriter out = response.getWriter();
		   
		   out.println("<p>내이름 : 홍길동</p>");
		   out.println("<p>내나이 : 30세</p>");
		   
		   int kor = 90 ;
		   int eng = 80 ;
		   int math = 90 ;
		   
		   int sum = kor + eng + math ;
		   double avg = (int)(sum/3.0 * 10) / 10.0 ;
		   
		   // 학점
		   String hak = "";
		   if(avg>=90) {
			   hak = "A";
		   }else if(avg>=80) {
			   hak = "B";
		   }else if(avg>=70) {
			   hak = "C";
		   }else {
			   hak = "F";
		   }
		   out.println("<p>국어점수 : " + kor + "</p>");
		   out.println("<p>영어점수 : " + eng + "</p>");
		   out.println("<p>수학점수 : " + math + "</p>");
		   out.println("<p>총점점수 : " + sum + "</p>");
		   out.println("<p>평균점수 : " + avg + "</p>");
		   // 학점출력
		   out.println("<p>학점 : " + hak +"</p>");
	}
}









