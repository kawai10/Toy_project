package com.alpha.toy.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
public class ToyShopVo {

	private int shop_no;
	private int member_no;
	private String shop_name;
	private String shop_image_url;
	private String shop_content;
	private Date shop_date;
	
	public ToyShopVo() {
		// TODO Auto-generated constructor stub
	}
}
