package com.alpha.toy.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
public class ChattingVo {
	private int chatting_no;
	private int channel_no;
	private int member_no;
	private String content;
	private String content_date;
	
	public ChattingVo() {
		// TODO Auto-generated constructor stub
	}
}
