package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Text_DataCommand05 {
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		StringBuffer sb = new StringBuffer();
		sb.append("1,ȫ�浿,24,����/");
		sb.append("2,��浿,23,����/");
		sb.append("3,���Ѹ�,14,����/");
		sb.append("4,������,28,����/");
		sb.append("5,����,3,����/");
		return sb.toString();
	}
}
