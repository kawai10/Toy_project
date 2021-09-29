package com.alpha.toy.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
public class DoPersonVo {

	private int dop_no;
	private int room_no;
	private int member_no;
	private int tdboard_no;

	public DoPersonVo() {
		super();
	}
}
