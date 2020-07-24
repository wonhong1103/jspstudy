package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Com06 {
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String msg=""; // 결과를 받아 저장하는 변수
		
		// 알바비(8시간 초과하면 초과분의 1.5배, 단가 8590 
		int time = Integer.parseInt(request.getParameter("time"));
		int dan = 8590;
		int pay = 0;
		if(time > 8) {
			pay =  (8*dan)+(int)((time-8)*dan*1.5);
		}else {
			pay = time * dan ;
		}
		msg = "일한시간 : " + time + ", 알바비 : "+ pay ;
		return msg;
	}
}
