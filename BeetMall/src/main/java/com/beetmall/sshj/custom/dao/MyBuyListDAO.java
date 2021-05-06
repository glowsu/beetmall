package com.beetmall.sshj.custom.dao;

import java.util.List;

import com.beetmall.sshj.custom.vo.MyBuyListVO;

public interface MyBuyListDAO {
	public List<MyBuyListVO> selectBuyList(String userid);
	public int orderCommit(int ordernum);
	public int orderCancel(int ordernum);
	public int orderCancelOk(int ordernum);
}
