package com.alpha.toy.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
public class BulletinBoardImageVo {
	
	private int image_no;
	private int board_no;
	private String image_url;
	private String image_ori;
	
	public BulletinBoardImageVo() {
		super();
	}
}
