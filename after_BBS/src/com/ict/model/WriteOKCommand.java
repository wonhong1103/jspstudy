package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.DAO;
import com.ict.db.VO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class WriteOKCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 첨부파일을 했는지 안했는지 모르기 때문에 첨부파일을 했다고 가정하고 일처리
		try {
			String path = request.getServletContext().getRealPath("/upload");
			MultipartRequest mr = new MultipartRequest(request,
					path, 100*1024*1024,"utf-8", new DefaultFileRenamePolicy());
			
			VO vo = new VO();
			vo.setSubject(mr.getParameter("subject"));
			vo.setWriter(mr.getParameter("writer"));
			vo.setContent(mr.getParameter("content"));
			vo.setPwd(mr.getParameter("pwd"));
			
			// 파일이 있는 경우와 없는 경우 처리
			if(mr.getFile("file_name") != null) {
				vo.setFile_name(mr.getFilesystemName("file_name"));
			}else {
				// 없는경우
				vo.setFile_name("");
			}
			
			int result = DAO.getInsert(vo);
			String cPage = (String)request.getSession().getAttribute("cPage");
			if(result>0) {
				return "MyController?cmd=list&cPage=1";//글쓰기 완료되면 1페이지로 
													   // 댓글이면 "MyController?cmd=list&cPage="+${cPage};
			}else {
				return "MyController?cmd=write";
			}
			
		} catch (Exception e) {
		}
		return null;
	}
}






