package kang1327.farmstory.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kang1327.farmstory.controller.CommonAction;

public class EventService implements CommonAction{
	@Override
	public String requestProc(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		return "/event/event.jsp";
	}

}
