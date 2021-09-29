package com.alpha.toy.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
public class ReviewMemberVo {

	private int rating_no;
	private int room_no;
	private int sender_no;
	private int receiver_no;
	private int rating_score;
	private String one_line_review;
	
	public ReviewMemberVo() {
	}
}
