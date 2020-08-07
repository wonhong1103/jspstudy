package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Xml_DataCommand02 {
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		StringBuffer sb = new StringBuffer();
		sb.append("<?xml version=\"1.0\" encoding=\"UTF-8\"?>");
		sb.append("<products>");
		sb.append("<product name=\"딸기우유\" price=\"1000\" />");
		sb.append("<product name=\"초코우유\" price=\"1000\" />");
		sb.append("<product name=\"커피우유\" price=\"1000\" />");
		sb.append("<product name=\"그냥우유\" price=\"900\" />");
		sb.append("</products>");
		return sb.toString();
	}
}
