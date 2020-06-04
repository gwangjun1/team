package com.team3.order.dao;

import java.util.List;

import com.team3.order.vo.ordersVO;

public interface orderDAO {
	void insertorder(ordersVO odvo);
	
	List<ordersVO> listorder(ordersVO odvo);
	
	List<ordersVO> orderdetail(ordersVO odvo);
}
