package com.team3.cart.service;

import java.util.List;

import com.team3.cart.vo.cartDTO;

public interface cartService {
	 
	    void insert(cartDTO cartdto);
	    List<cartDTO> listCart(String mb_id);
	    void delete(cartDTO cartdto);
	    void deleteAll(String mb_id);

	    int cartmoney(String mb_id);
	    int countCart(String mb_id, int pd_idx);
	    void updateCart(cartDTO cartdto);
	    void modifyCart(cartDTO cartdto);
}
