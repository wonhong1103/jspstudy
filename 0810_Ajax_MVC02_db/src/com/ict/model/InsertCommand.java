package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.DAO;
import com.ict.db.VO;

public class InsertCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		VO vo = new VO();
		vo.setM_id(request.getParameter("m_id"));
		vo.setM_pw(request.getParameter("m_pw"));
		vo.setM_name(request.getParameter("m_name"));
		vo.setM_age(request.getParameter("m_age"));
	
		int result = DAO.getInsert(vo);
		
		return String.valueOf(result);
	}
}
