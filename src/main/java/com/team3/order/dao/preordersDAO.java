package com.team3.order.dao;

import java.util.List;

import com.team3.order.vo.preordersVO;

public interface preordersDAO {
	void insertorder(preordersVO ordersvo);
	
	List<preordersVO> listpre(String mb_id);

	int preSumMoney(String mb_id);

	int countpre(String mb_id);
}
