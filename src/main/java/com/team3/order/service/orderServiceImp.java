package com.team3.order.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.team3.order.dao.orderDAO;
import com.team3.order.vo.ordersVO;

@Service
public class orderServiceImp implements orderService {

	@Inject
	orderDAO orderdao;
	
	@Override
	public void insertorder(ordersVO odvo) {
		orderdao.insertorder(odvo);
	}





	@Override
	public List<ordersVO> orderdetail(ordersVO odvo) {
		
		return orderdao.orderdetail(odvo);
	}





	@Override
	public List<ordersVO> listorder(ordersVO odvo) {
		return orderdao.listorder(odvo);
	}



	

	

	
}
