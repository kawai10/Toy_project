package com.alpha.toy.vo;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
public class BulletinBoardVo {
	
	private int board_no;
	private int member_no;
	private String board_title;
	private String board_content;
	private int board_readcount;
	@DateTimeFormat(pattern = "MM-dd")
	private Date board_writedate;
	
	public BulletinBoardVo() {
		super();
	}
}
