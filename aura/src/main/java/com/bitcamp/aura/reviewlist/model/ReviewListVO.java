package com.bitcamp.aura.reviewlist.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Entity
@Table(name="REVIEW_LIST")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class ReviewListVO {
	@Id
	@Column(name="REVIEW_NUM")
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="REVIEW_LIST_SEQ")
	@SequenceGenerator(name="REVIEW_LIST_SEQ", sequenceName="REVIEW_LIST_SEQ", allocationSize=1, initialValue=1)
	private int num;
	
	@Column(name="REVIEW_POST_NUM")
	private int postNum;
	
	@Column(name="NICKNAME", length=30)
	private String nickname;
	
	@Column(name="REVIEW_TYPE")
	private int type;

	@Column(name="REVIEW_DATE")
	private Date date;
	
}
