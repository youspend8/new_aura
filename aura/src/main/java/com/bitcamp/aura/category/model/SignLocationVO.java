package com.bitcamp.aura.category.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Entity
@Table(name="REG_LOCATION")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class SignLocationVO {
	@Id
	@Column(name="LOCATION_NUM")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int num;
	
	@Column(name="LOCATION_NAME", length=30)
	private String name;
}
