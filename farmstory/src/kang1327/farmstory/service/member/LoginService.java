package kang1327.farmstory.service.member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kang1327.farmstory.config.DBConfig;
import kang1327.farmstory.config.SQL;
import kang1327.farmstory.controller.CommonAction;
import kang1327.farmstory.vo.MemberVO;

public class LoginService implements CommonAction{
	@Override
	public String requestProc(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		HttpSession session = req.getSession();
		//String method = req.getMethod();
		//System.out.println("method : "+method);
			if(req.getMethod().equals("POST")) {
				//POST ��û�� ���
			String redirectUrl = null;
			String uid  = req.getParameter("uid");
			String pass = req.getParameter("pass");
			

			Connection conn = DBConfig.getConnection();
			PreparedStatement psmt = conn.prepareStatement(SQL.SELECT_LOGIN);
			psmt.setString(1, uid);
			psmt.setString(2, pass);
			
			ResultSet rs = psmt.executeQuery();
			
			if(rs.next()){
				// ���̵�� ��й�ȣ�� ��ġ�ϴ� ȸ���� ���̺� ���� ���
				MemberVO vo = new MemberVO();
				vo.setSeq(rs.getInt(1));
				vo.setUid(rs.getString(2));
				vo.setPass(rs.getString(3));
				vo.setName(rs.getString(4));
				vo.setNick(rs.getString(5));
				vo.setEmail(rs.getString(6));
				vo.setHp(rs.getString(7));
				vo.setGrade(rs.getInt(8));
				vo.setZip(rs.getString(9));
				vo.setAddr1(rs.getString(10));
				vo.setAddr2(rs.getString(11));
				vo.setRegip(rs.getString(12));
				vo.setRdate(rs.getString(13));
				
				session.setAttribute("member", vo);
				
				redirectUrl = "/farmstory/index.do";
			}else{
				// ���̵�� ��й�ȣ�� ��ġ�ϴ� ȸ���� ���̺� ���� ���
				redirectUrl = "/farmstory/member/login.do?result=fail";
			}
			
			// 6�ܰ�
			rs.close();
			psmt.close();
			conn.close();
			
			return "redirect:" +redirectUrl;

	
		}else {
			//�α����� �ƴ��� üũ
			
			
			
			if(session.getAttribute("member") !=null) {
			return "redirect:/farmstory/index.do";
			}else {
				return "/member/login.jsp";
				}
		}

}
}