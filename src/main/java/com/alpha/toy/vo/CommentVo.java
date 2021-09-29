package com.alpha.toy.vo;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
public class CommentVo {

	private int qacomment_no;
	private int member_no;
	private int board_no;
	private String qacomment_content;
	@DateTimeFormat(pattern = "MM-dd")
	private Date qacomment_date;
	
	public CommentVo() {
		super();
	}
}