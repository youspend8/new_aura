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
public class RestaurantVO extends PlaceVO {
	private int num;
	private int category;
	private boolean delivery;
	private boolean takeOut;
	private String menu;
}
