package com.alpha.toy.vo;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
public class TechVo {

	private int tech_no;
	private int member_no;
	private String tech_title;
	private String tech_content;
	private int tech_readcount;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date tech_date;

	public TechVo() {
		super();
	}
}
