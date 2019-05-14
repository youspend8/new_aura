package com.bitcamp.aura.review.model;

import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@Service
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class SearchParams {
	private int type;
	private String keyword;
	private String restGroup;
	private String hospitalGroup;
	private String digitalGroup;
	private String[] restLoc;
	private String[] hosLoc;
	private int[] restCategory;
	private int[] medCategory;
	private int start;
	private int end;
}
