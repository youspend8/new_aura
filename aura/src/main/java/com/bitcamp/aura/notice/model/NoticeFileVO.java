package com.bitcamp.aura.notice.model;

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
@Table(name="BOARD_FILE")
@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class NoticeFileVO {
	@Id
	@Column(name="NUM")
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="BOARD_FILE_SEQ")
	@SequenceGenerator(sequenceName="BOARD_FILE_SEQ", initialValue=1, allocationSize=1, name="BOARD_FILE_SEQ")
	private Integer num;

	@Column(name="NUMBERS")
	private int postNum;

	@Column(name="BOARD_FILE")
	private String name;
}