package com.alpha.toy.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
public class MessageVo {
	private int message_no;
	private int member_no;
	private String member_receive_name;
	private String member_send_name;
	private String message_title;
	private String message_content;
	private int message_receivedelete;
	private int message_senddelete;
	private int message_readcount;
	private Date message_writedate;

	public MessageVo() {
		// TODO Auto-generated constructor stub
	}

}
