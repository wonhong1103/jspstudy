package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Com05 {
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String msg=""; // 결과를 받아 저장하는 변수
		// 사칙연산
		int su1 = Integer.parseInt(request.getParameter("su1"));
		int su2 = Integer.parseInt(request.getParameter("su2"));
		String op = request.getParameter("op");
		
		switch (op) {
		case "+": msg = su1 + op + su2 + "=" + (su1+su2); break;
		case "-": msg = su1 + op + su2 + "=" + (su1-su2); break;
		case "*": msg = su1 + op + su2 + "=" + (su1*su2); break;
		case "/": msg = su1 + op + su2 + "=" + (su1/su2); break;
		}
		return msg;
	}
}
