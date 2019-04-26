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
public class ProductorVO<T> {
	private int num;
	private int category;
	private String release;
	private int price;
	private T productorType;
}
