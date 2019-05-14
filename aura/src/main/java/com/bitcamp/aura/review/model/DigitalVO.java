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
@Alias(value="digitalVo")
public class DigitalVO extends ProductorVO {
	private int num;
	private String model;
	private String subCategory1;
	private String subCategory2;
	private String subCategory3;
	private String options;
}
