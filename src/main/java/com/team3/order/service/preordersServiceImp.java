package com.team3.order.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.team3.order.dao.preordersDAO;
import com.team3.order.vo.preordersVO;

@Service
public class preordersServiceImp implements preordersService {

	@Inject
	preordersDAO ordersdao;
	
	@Override
	public void insertorder(preordersVO ordersvo) {
		ordersdao.insertorder(ordersvo);
	}

	@Override
	public List<preordersVO> listpre(String mb_id) {
	
		return ordersdao.listpre(mb_id);
	}

	@Override
	public int preSumMoney(String mb_id) {
		
		return ordersdao.preSumMoney(mb_id);
	}

	@Override
	public int countpre(String mb_id) {
		// TODO Auto-generated method stub
		return ordersdao.countpre(mb_id);
	}

	

	
}
