package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Json_DataCommand04 {
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		StringBuffer sb = new StringBuffer();
		sb.append("[");
		sb.append("{\"name\":\"Ŀ�ǿ���\", \"price\":\"950\"},");
		sb.append("{\"name\":\"�̿�����\", \"price\":\"1500\"},");
		sb.append("{\"name\":\"ź���\", \"price\":\"1900\"},");
		sb.append("{\"name\":\"ī���\", \"price\":\"2400\"}");
		sb.append("]");
		
		return sb.toString();
	}
}
