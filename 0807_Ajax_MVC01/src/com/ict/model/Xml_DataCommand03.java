package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Xml_DataCommand03 {
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		StringBuffer sb = new StringBuffer();
		sb.append("<?xml version=\"1.0\" encoding=\"UTF-8\"?>");
		sb.append("<products>");
		sb.append("<product price=\"1000\">�������</product>");
		sb.append("<product price=\"1000\">���ڿ���</product>");
		sb.append("<product price=\"1000\">Ŀ�ǿ���</product>");
		sb.append("<product price=\"900\">�׳ɿ���</product>");
		sb.append("</products>");
		
		return sb.toString();
	}
}
