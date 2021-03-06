package com.beetmall.sshj.custom.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.beetmall.sshj.custom.dao.ChatDAO;
import com.beetmall.sshj.custom.vo.ChatVO;
import com.beetmall.sshj.custom.vo.PointPageVO;

@Service
public class ChatServiceImp implements ChatService {
	@Inject
	ChatDAO chatdao;

	@Override
	public List<ChatVO> selectChat(PointPageVO vo) {
		
		return chatdao.selectChat(vo);
	}

	@Override
	public int getRecord(String userid) {
		
		return chatdao.getRecord(userid);
	}
	@Override
	public int outRoomSelect(String userid, int roomcode) {
		
		return chatdao.outRoomSelect(userid, roomcode);
	}
	@Override
	public int chatRoomOut(int roomcode, String usertype) {
		
		return chatdao.chatRoomOut(roomcode, usertype);
	}

	@Override
	public int roomClean() {
		
		return chatdao.roomClean();
	}

	
}
