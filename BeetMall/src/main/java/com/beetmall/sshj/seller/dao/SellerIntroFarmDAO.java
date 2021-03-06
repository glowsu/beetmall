package com.beetmall.sshj.seller.dao;

import com.beetmall.sshj.seller.vo.SellerIntroFarmVO;

public interface SellerIntroFarmDAO {
	//intro 접속시 판매자 데이터 가져오기
	public SellerIntroFarmVO selectInfo(String userid);
	//intro 접속시 즐겨찾기 수 가져오기
	public int selectFavorite(String userid);
	//할인율 확인
	public SellerIntroFarmVO discountSelect(String userid);
}
