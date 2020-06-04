package com.team3.order.service;

import java.util.List;

import com.team3.order.vo.ordersVO;

public interface orderService {
	void insertorder(ordersVO odvo);
	
	List<ordersVO> listorder(ordersVO odvo);

	List<ordersVO> orderdetail(ordersVO odvo);
}
