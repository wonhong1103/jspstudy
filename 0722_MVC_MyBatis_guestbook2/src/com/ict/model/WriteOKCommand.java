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
		try {
			String path = request.getServletContext().getRealPath("/upload");
			MultipartRequest mr = new MultipartRequest(
					request,
					path,
					100*1024*1024,
					"utf-8",
					new DefaultFileRenamePolicy());
			VO vo = new VO();
			vo.setName(mr.getParameter("name"));
			vo.setSubject(mr.getParameter("subject"));
			vo.setContent(mr.getParameter("content"));
			vo.setPwd(mr.getParameter("pwd"));
			vo.setEmail(mr.getParameter("email"));
			if(mr.getFile("file_name")!=null) {
				vo.setFile_name(mr.getFilesystemName("file_name"));
			}else {
				vo.setFile_name("");
			}
			
			int result = DAO.getInsert(vo);
			
		} catch (Exception e) {
		}
		return "MyController?cmd=list";
	}
}











