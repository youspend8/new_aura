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
@Alias(value="placeVo")
public class PlaceVO extends ReviewVO {
	private int num;
	private String address1;
	private String address2;
	private String address3;
	private String addr;
	private String tel;
	private String serviceTime;
	private String waitingTime;
}
