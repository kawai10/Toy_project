package com.alpha.toy.vo;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.AllArgsConstructor;

import lombok.Setter;

import lombok.Getter;

@Getter
@Setter
@AllArgsConstructor
public class ProjectRoomVo {

	private int room_no;
	private int member_no;
	private String title;
	private String simpleContent;
	private int people;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date startDate;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date lastDate;
	private String address;
	private String status;
	
	public ProjectRoomVo() {
		super();
	}
}
