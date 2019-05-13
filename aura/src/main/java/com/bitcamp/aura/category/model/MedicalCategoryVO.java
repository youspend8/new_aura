/*
 * 진료과목 카테고리 Model
 */

package com.bitcamp.aura.category.model;

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
@Table(name="MEDICAL_CATEGORY")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class MedicalCategoryVO {
	@Id
	@Column(name="CATEGORY_NUM")
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="MEDICAL_CATEGORY_SEQ")
	@SequenceGenerator(name="MEDICAL_CATEGORY_SEQ", initialValue=1, allocationSize=1, sequenceName="MEDICAL_CATEGORY_SEQ")
	private int num;
	
	@Column(name="CATEGORY_NAME")
	private String name;
}
