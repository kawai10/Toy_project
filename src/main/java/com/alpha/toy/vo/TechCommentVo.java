package com.alpha.toy.vo;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
public class TechCommentVo {

	private int Tcomment_no;
	private int tech_no;
	private int member_no;
	private String Tcomment_content;
	@DateTimeFormat(pattern = "MM-dd")
	private Date Tcomment_date;
	
	public TechCommentVo() {
	
	}
}
