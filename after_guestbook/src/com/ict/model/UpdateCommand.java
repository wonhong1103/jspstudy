package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UpdateCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 실제로 업데이트하는 것이 아니라
		// 업데이트할 수 있는 화면으로 이동
		return "view/update.jsp";
	}
}
