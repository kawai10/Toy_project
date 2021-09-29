package com.alpha.toy.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
public class BoardVo {
	
	private int no;
	private int board_no;
	private int member_no;
	private String board_title;
	private String board_content;
	private int board_readcount;
	private Date board_writedate;
	
	public BoardVo() {
		super();
	}
}