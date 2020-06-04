package com.team3.cart.vo;

public class cartDTO {
	private int cart_idx;
	private String mb_id;
	private int pd_idx;
	private String pd_name;
	private String pd_img;
	private String pd_size;
	private int price;
	private int money;
	private int amount;
	
	
	public int getPrice() {
		return price;
	}


	public void setPrice(int price) {
		this.price = price;
	}

	
	


	public int getPd_idx() {
		return pd_idx;
	}


	public void setPd_idx(int pd_idx) {
		this.pd_idx = pd_idx;
	}


	public String getPd_name() {
		return pd_name;
	}


	public void setPd_name(String pd_name) {
		this.pd_name = pd_name;
	}


	public String getPd_img() {
		return pd_img;
	}


	public void setPd_img(String pd_img) {
		this.pd_img = pd_img;
	}


	public String getPd_size() {
		return pd_size;
	}


	public void setPd_size(String pd_size) {
		this.pd_size = pd_size;
	}





	


	public int getAmount() {
		return amount;
	}


	public void setAmount(int amount) {
		this.amount = amount;
	}


	public cartDTO() {}
	
	

	public int getCart_idx() {
		return cart_idx;
	}


	public void setCart_idx(int cart_idx) {
		this.cart_idx = cart_idx;
	}


	public String getMb_id() {
		return mb_id;
	}
	public void setMb_id(String mb_id) {
		this.mb_id = mb_id;
	}



	public int getMoney() {
		return money;
	}
	public void setMoney(int money) {
		this.money = money;
	}

	
	
}
