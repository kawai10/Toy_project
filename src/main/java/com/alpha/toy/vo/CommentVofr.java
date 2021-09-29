package com.alpha.toy.vo;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
public class CommentVofr {

	private int comment_no;
	private int board_no;
	private int member_no;
	private String comment_content;
	@DateTimeFormat(pattern = "MM-dd")
	private Date comment_writedate;

	public CommentVofr() {
		super();
	}
}
