package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.DAO;
import com.ict.db.VO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class UpdateOKCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		VO vo = new VO();
		try {
			String path = request.getServletContext().getRealPath("upload");
			MultipartRequest mr = new MultipartRequest(
					request, path, 100*1024*1024, "utf-8", new DefaultFileRenamePolicy());
			vo.setIdx(mr.getParameter("idx"));
			vo.setName(mr.getParameter("name"));
			vo.setSubject(mr.getParameter("subject"));
			vo.setContent(mr.getParameter("content"));
			vo.setPwd(mr.getParameter("pwd"));
			vo.setEmail(mr.getParameter("email"));
			
			if(mr.getFile("file_name")!= null) {
				vo.setFile_name(mr.getFilesystemName("file_name"));
			}else {
				vo.setFile_name(mr.getParameter("f_name"));
			}
			int result = DAO.getUpdate(vo);
			if(result >=1 ) {
				// 기본의 session 정보 덮어쓰기하자 
				request.getSession().setAttribute("vo", vo);
			}
			
		} catch (Exception e) {
		}
		return "MyController?cmd=onelist&idx="+vo.getIdx();
		
	}
}
