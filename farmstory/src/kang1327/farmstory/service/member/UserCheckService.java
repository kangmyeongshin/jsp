package kang1327.farmstory.service.member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.google.gson.Gson;

import kang1327.farmstory.config.DBConfig;
import kang1327.farmstory.config.SQL;
import kang1327.farmstory.controller.CommonAction;



public class UserCheckService implements CommonAction{

	@Override
	public String requestProc(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		String uid = req.getParameter("uid");
		String nick = req.getParameter("nick");
		String email = req.getParameter("email");
		String ph = req.getParameter("ph");
		
		Connection conn=DBConfig.getConnection();
		
		PreparedStatement psmt = conn.prepareStatement(SQL.SELECT_UID_COUNT);

		psmt.setString(1,uid);
		
		ResultSet rs = psmt.executeQuery();
		
		int count = 0;
		if(rs.next()){
			count = rs.getInt(1);
		}
		
		rs.close();
		psmt.close();
		conn.close();
		
		//JSON 포맷으로 변환
		JSONObject json = new JSONObject();
		json.put("result", count);
		
		
		
		
		return json.toJSONString();
	}

}
