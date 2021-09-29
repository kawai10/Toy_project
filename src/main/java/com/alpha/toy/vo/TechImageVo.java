package com.alpha.toy.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
public class TechImageVo {

	private int image_no;
	private int tech_no;
	private String image_url;
	private String image_ori;
	
	public TechImageVo() {
	
	}
}
