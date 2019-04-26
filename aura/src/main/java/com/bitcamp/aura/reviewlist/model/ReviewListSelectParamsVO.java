package com.bitcamp.aura.reviewlist.model;

import java.util.Date;

import com.bitcamp.aura.category.model.ReviewCategoryVO;

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
public class ReviewListSelectParamsVO {
	private int postNum;
	private int reviewType;
	private String nickname;
}
