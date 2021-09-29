package com.alpha.toy.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
public class LikeVofr {

	private int like_no;
	private int member_no;
	private int board_no;

	public LikeVofr() {
		super();
	}
}