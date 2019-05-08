package com.bitcamp.aura.notice.model;


import org.apache.ibatis.type.Alias;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
@Alias(value="noticeVo")
public class NoticeVO {
	private int num;
	private String title;
	private String contents;
	private String writerDate;
	private int isNotice;
}
