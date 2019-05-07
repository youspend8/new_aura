package com.bitcamp.aura.review.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import org.apache.ibatis.type.Alias;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Entity
@Table(name="REVIEW_FILE")
@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
@Alias(value="reviewFileVo")
public class ReviewFileVO {
	@Id
	@GeneratedValue(generator="REVIEW_FILE_SEQ", strategy=GenerationType.SEQUENCE)
	@SequenceGenerator(name="REVIEW_FILE_SEQ", initialValue=1, allocationSize=1, sequenceName="REVIEW_FILE_SEQ")
	@Column(name="NUM")
	private int num;
	
	@Column(name="REVIEW_POST_NUM")
	private int postNum;
	
	@Column(name="REVIEW_FILE")
	private String filePath;
}
