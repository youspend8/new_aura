package com.bitcamp.aura.reviewlist.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import org.apache.ibatis.type.Alias;

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
@Alias(value="reviewListVo")
public class ReviewListVO {
	private int num;
	private int postNum;
	private String nickname;
	private ReviewCategoryVO reviewType;
	private Date date;
}
