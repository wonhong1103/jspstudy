package com.ict.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.model.Xml_DataCommand01;
import com.ict.model.Xml_DataCommand02;
import com.ict.model.Xml_DataCommand03;

@WebServlet("/MyController03")
public class MyController03 extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/xml; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		Xml_DataCommand03 xml03 = new Xml_DataCommand03();
		String result =  xml03.exec(request, response);
		out.print(result);
	}
}
