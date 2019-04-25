/*
 * 진료과목 카테고리 Model
 */

package com.bitcamp.aura.category.model;

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
public class MedicalCategoryVO {
	private int num;
	private String name;
}
