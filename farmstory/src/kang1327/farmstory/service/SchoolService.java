package kang1327.farmstory.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kang1327.farmstory.controller.CommonAction;

public class SchoolService implements CommonAction{
	@Override
	public String requestProc(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		return "/croptalk/school.jsp";
	}

}
