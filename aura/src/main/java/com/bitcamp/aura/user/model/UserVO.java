package com.bitcamp.aura.user.model;

import org.apache.ibatis.type.Alias;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
@Alias(value="userVo")
public class UserVO {
	private String nickname;
	private String email;
	private String password;
	private String tel;
	private String name;
	private String ssn;
	private int gender;
	private String address;
	private String regDate;
	private int regLocation;
	private String delDate;
	private int isAdmin;
	private String accessToken;
	private String refreshToken;
	private int pwMissCount;
	private int authorType;
	private String profile;
	private String userId; 
	private int ageRange;
	private int comments;
	private int goods;
	private int bookmarks;
	private int shares;
	private String addr;
	private String addr_code;
	private String addr_Detail;
}
