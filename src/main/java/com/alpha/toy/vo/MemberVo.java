package com.alpha.toy.vo;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
public class MemberVo {
	
	private int member_no;
	private String member_id;
	private String member_pw;
	private String member_name;
	@DateTimeFormat(pattern = "MM-dd")
	private Date member_date;
	
	public MemberVo() {
	}
}
