package com.bitcamp.aura.review.model;

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
public class PlaceVO<T> {
	private int num;
	private String address1;
	private String address2;
	private String address3;
	private String detailAddr;
	private String tel;
	private String serviceTime;
	private String waitingTime;
	private T placeType;
}
