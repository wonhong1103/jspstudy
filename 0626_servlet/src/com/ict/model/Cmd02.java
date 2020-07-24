package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Cmd02 {
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String msg=""; // 결과를 받을 html파일 이름
		// 일처리
		
		// msg = String.valueOf((int)(Math.random()*101));
		msg = "오늘의 운세는"+((int)(Math.random()*101))+"%";
		
		
		return msg;
	}
}
