package com.beetmall.sshj.admin.dao;

import java.util.List;

import com.beetmall.sshj.admin.vo.AdminBoardVO;
import com.beetmall.sshj.admin.vo.Admin_Board_PageVO;
import com.beetmall.sshj.admin.vo.adminkPageSearchVO;
import com.beetmall.sshj.admin.vo.AdminReviewVO; 
  
public interface AdminReviewDAO {
	public List<AdminReviewVO> reviewListA(adminkPageSearchVO pageVO); //공지 글 목록 보기 

	public int reviewListOnetotalRecord(adminkPageSearchVO pageVO);
}