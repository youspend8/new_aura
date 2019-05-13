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
@Alias(value="hospitalVo")
public class HospitalVO extends PlaceVO {
	private int num;
	private int hospitalCategory;
	private int medicalCategory;
	private String subCategory;
}
