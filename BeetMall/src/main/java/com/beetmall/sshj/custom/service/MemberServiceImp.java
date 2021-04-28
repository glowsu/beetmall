package com.beetmall.sshj.custom.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.beetmall.sshj.custom.dao.MemberDAO;
import com.beetmall.sshj.custom.vo.MemberVO;
@Service
public class MemberServiceImp implements MemberService {
	@Inject
	MemberDAO memberDAO;
	
	@Override
	public int regiFinishiOk(MemberVO vo) {	//회원가입 완료
		return memberDAO.regiFinishiOk(vo);
	}

	@Override
	public int idOverlap(String userid) {
		
		return memberDAO.idOverlap(userid);
	}

	@Override
	public MemberVO loginOk(String userid, String userpwd) {
		
		return memberDAO.loginOk(userid, userpwd);
	}

}