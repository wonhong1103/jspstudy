package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Com04 {
	
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String msg=""; // 결과를 받아 저장하는 변수
		// 성적처리
		// 파라미터값 받아서 일처리 
		String name = request.getParameter("name");
		int kor = Integer.parseInt(request.getParameter("kor"));
		int eng = Integer.parseInt(request.getParameter("eng"));
		int math = Integer.parseInt(request.getParameter("math"));
		
		int total = kor + eng + math ;
		double avg = (int)(total/3.0*10)/10.0;
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
		
		msg = "이름:"+name+","+"총점:"+total+","+"평균:"+avg+","+"학점:"+hak;
		return msg;
	}
}
