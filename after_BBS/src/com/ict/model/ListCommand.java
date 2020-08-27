package com.ict.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.DAO;
import com.ict.db.VO;

public class ListCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		paging page = new paging();
		
		//1. 전체 게시물의 수 구하기
		int count = DAO.getCount();
		page.setTotalRecord(count);
		
		//2. 전체 게시물의 수를 가지고 전체 페이지 수를 구하자.
		if (page.getTotalRecord()<= page.getNumPerPage()) {
			page.setTotalPage(1);
		}else {
			page.setTotalPage(page.getTotalRecord()/page.getNumPerPage());
			if (page.getTotalRecord() % page.getNumPerPage() != 0) {
				page.setTotalPage(page.getTotalRecord()+1);
			}
		}
		
		//3. 현재 페이지를 구하기
		// cmd가 list이면  cPage 파라미터가 들어오는데
		// cPage 파라미터는 현재 페이지를 의미하는 것이다.
		
		// 맨처음 index.jsp는 cPage가 안들어온다.
		// 그때는 현재페이지를 1 페이지로 지정하자(nowPge=1)
		// 그 다음부터는 cPage가 무조건 들어와야 하고
		// cPage를 nowPage로 변경시켜라
		String cPage = request.getParameter("cPage");
		page.setNowPage(Integer.parseInt(cPage));
		
		//4. 현재페이지를 이용해서  시작번호와 끝 번호를 구하자.
		 page.setBegin((page.getNowPage()-1) * page.getNumPerPage()+1); 
		 page.setEnd((page.getBegin()-1)+page.getNumPerPage());
		
		//5. DB 처리
		List<VO> list = DAO.getList(page.getBegin(), page.getEnd());
	
		//6. 현재 페이지의 시작블록과 끝블록 번호 구하기
		page.setBeginBlock((int)((page.getNowPage()-1)/page.getPagePerBlock())*page.getPagePerBlock()+1 );
		page.setEndBlock(page.getBeginBlock()+page.getPagePerBlock()-1);
		
		// 1 block => 1p ~ 3p, 2block => 4p ~ 6p, 3block => 7p ~ 9p
		
		// 주의 사항 : 계산으로 구한 endBlock의 페이지와 
		//			   실제 데이터를 가지고 구한 totalPage 값이 다를 수 있다.
		// 즉 endBlock의 값이 totalPage보다 큰 경우가 발생했을때 
		// 즉 endBlok 값을totalpage로 변경
		
		if (page.getEndBlock()> page.getTotalPage()) {
			page.setEndBlock(page.getTotalPage());
		}
		
		
		
		// 처리한 결과를 저장
		request.setAttribute("list", list);
		request.setAttribute("page", page);
		request.getSession().setAttribute("cPage", cPage);
		
		return "view/list.jsp";
	}
}
