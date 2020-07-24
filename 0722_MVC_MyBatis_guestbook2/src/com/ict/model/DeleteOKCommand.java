package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.DAO;
import com.ict.db.VO;

public class DeleteOKCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		VO vo = (VO)request.getSession().getAttribute("vo");
		String idx = vo.getIdx();
		int result = DAO.getDelete(idx);
		
		return "MyController?cmd=list";
	}
}
