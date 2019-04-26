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
public class HospitalVO {
	private int num;
	private int category;
	private boolean delivery;
	private boolean takeOut;
}
