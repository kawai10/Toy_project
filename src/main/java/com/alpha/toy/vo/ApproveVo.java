package com.alpha.toy.vo;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
public class ApproveVo {

	private int approve_no;
	private int room_no;
	private int member_no;
	private String application_content;
	private String examination;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date approve_date;

	public ApproveVo() {
		super();
	}
}
