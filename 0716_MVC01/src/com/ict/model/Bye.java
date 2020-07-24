package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Bye {

	// 요청을 실행할 메소드를 만들자
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String name = "장길산";
		int age = 33;
		String msg = "Bye";

		// request에 저장(view에서 호출하기 위해)
		request.setAttribute("name", name);
		request.setAttribute("age", age);
		request.setAttribute("msg", msg);
				
		// 리턴은 결과를 표시할 뷰(jsp)를 지정한다.
		return "view/result3.jsp";
	}
}
