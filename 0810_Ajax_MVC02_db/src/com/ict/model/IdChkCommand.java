package com.ict.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.DAO;
import com.ict.db.VO;

public class IdChkCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String m_id = request.getParameter("m_id");
		
		// 파라미터값을 받은 아이디가 DB에 존재하는지 검사하자 
		List<VO> list = DAO.getIdChk(m_id);
		
		String msg = null;
		if(list.size() > 0) {
			msg = "1";
		}else {
			msg = "0";
		}
		return msg;
	}
}










