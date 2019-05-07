package com.bitcamp.aura.user.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Entity
@Table(name="USER_DEL")
@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class UserDelVO {
	@Id
	@Column(name = "NICKNAME")
	private String nickname;
	
	@Column(name = "DEL_DATE")
	private Date delDate;
}
