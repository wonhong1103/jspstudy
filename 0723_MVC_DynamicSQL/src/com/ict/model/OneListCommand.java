package com.ict.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.BVO;
import com.ict.db.CVO;
import com.ict.db.DAO;

public class OneListCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
	  String b_idx = request.getParameter("b_idx");
	  String cPage = request.getParameter("cPage");
	  
	  // 조회수 업데이트 
	  int result = DAO.getHitUp(b_idx);
	  
	  // 내용 가져오기  
	  BVO bvo = DAO.getOneList(b_idx);
	  
	  // 수정과 삭제를 위해서 session에 저장
	  request.getSession().setAttribute("bvo", bvo);
	  
	  // b_idx를 가지고 있는 댓글 가져오기
	  List<CVO> clist = DAO.getclist(b_idx);
	  request.setAttribute("clist", clist);
	  request.setAttribute("cPage", cPage);
	  
	  return "view/onelist.jsp";
	}
}
