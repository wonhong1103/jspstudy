package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UpDateCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		return "view/update.jsp";
	}
}
