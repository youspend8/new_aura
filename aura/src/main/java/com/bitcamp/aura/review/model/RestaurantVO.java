package com.bitcamp.aura.review.model;

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
@Alias(value="restaurantVo")
public class RestaurantVO {
	private int num;
	private String title;
	private String contents;
	private int stars;
	private int goods;
	private int bookmark;
	private int shares;
	private int readCount;
	private String addDate;
	private String address;
	private String tel;
	private String serviceTime;
	private String waitingTime;
	private int category;
	private boolean delivery;
	private boolean takeOut;
}
