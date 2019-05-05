package com.bitcamp.aura.review.model;

import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Getter
@Service
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class SearchParams {
	private int type;
	private String keyword;
	private String title;
	private String orderStars;
	private String orderPop;
	private String[] address1;
	private String[] address2;
	private String[] address3;
	private int category;
}
