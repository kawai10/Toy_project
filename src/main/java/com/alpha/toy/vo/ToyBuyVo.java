package com.alpha.toy.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
public class ToyBuyVo {

	private int buy_no;
	private int member_no;
	private int product_no;
	private String buy_address;
	private int buy_count;
	private Date buy_date;
	
	public ToyBuyVo() {
		// TODO Auto-generated constructor stub
	}
}
