package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.DAO;
import com.ict.db.VO;

public class UpdateOKCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 실제 DB 정보 수정하기 
		VO vo = (VO)request.getSession().getAttribute("vo");
		String idx = vo.getIdx();
		
		String name = request.getParameter("name");
		String subject = request.getParameter("subject");
		String email = request.getParameter("email");
		String content = request.getParameter("content");
		
		// 파라미터로 받은 값을 vo에 넣자 
		vo.setName(name);
		vo.setSubject(subject);
		vo.setEmail(email);
		vo.setContent(content);
		
		// 기존에 있는 vo에 현재 변경된 내용을 덮어쓰자 
		request.getSession().setAttribute("vo", vo);
		
		// DB도 변경하자 
		int result = DAO.getUpdate(vo);
		
		
		return "MyController?cmd=onelist&idx="+idx;
	}
}
