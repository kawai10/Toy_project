package com.alpha.toy.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
public class ProjectBoardVo {

	private int board_no;
	private int category_no;
	private int member_no;
	private String title;
	private String content;
	private Date content_date;
	
	public ProjectBoardVo() {
		
	}
}
