package com.alpha.toy.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
public class ToyProductVo {

	private int product_no;
	private int shop_no;
	private String product_name;
	private int product_price;
	private String product_image_url;
	private int product_count;
	private String product_content;
	private Date product_date;
	
	public ToyProductVo() {
		// TODO Auto-generated constructor stub
	}
}
