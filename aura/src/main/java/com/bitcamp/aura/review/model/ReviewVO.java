package com.bitcamp.aura.review.model;

import java.util.List;

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
@Alias(value="reviewVo")
public class ReviewVO {
	private int num;
	private String title;
	private String contents;
	private int type;
	private double stars;
	private int starCount;
	private int goods;
	private int bookmark;
	private int shares;
	private int comments;
	private int readCount;
	private String addDate;
	private List<String> files;
}
