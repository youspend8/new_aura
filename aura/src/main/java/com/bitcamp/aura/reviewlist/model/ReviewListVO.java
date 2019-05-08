package com.bitcamp.aura.reviewlist.model;

import org.apache.ibatis.type.Alias;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
@Alias(value="reviewListVo")
public class ReviewListVO {
	private int num;
	private int postNum;
	private String nickname;
	private int reviewType;
	private String date;
	private String title;
}
