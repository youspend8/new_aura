package com.bitcamp.aura.user.model;

import java.util.Date;

import org.apache.ibatis.type.Alias;

@Alias(value="userVo")
public class UserVO {
	private String nickname;
	private String email;
	private String password;
	private String tel;
	private String name;
	private int gender;
	private String address;
	private Date reg_date;
	private int reg_location;
	private Date del_date;
	private int isAdmin;
	private String access_Token;
	private String refresh_Token;
	private int pw_Miss_Count;
	private int author_Type;
	private String profile;
	private String userId;
	
	public UserVO() {
		
	}

	public UserVO(String nickname, String email, String password, String tel, String name, int gender, String address,
			Date reg_date, int reg_location, Date del_date, int isAdmin, String access_Token, String refresh_Token,
			int pw_Miss_Count, int author_Type, String profile, String userId) {
		this.nickname = nickname;
		this.email = email;
		this.password = password;
		this.tel = tel;
		this.name = name;
		this.gender = gender;
		this.address = address;
		this.reg_date = reg_date;
		this.reg_location = reg_location;
		this.del_date = del_date;
		this.isAdmin = isAdmin;
		this.access_Token = access_Token;
		this.refresh_Token = refresh_Token;
		this.pw_Miss_Count = pw_Miss_Count;
		this.author_Type = author_Type;
		this.profile = profile;
		this.userId = userId;
	}
	
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getGender() {
		return gender;
	}
	public void setGender(int gender) {
		this.gender = gender;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	public int getReg_location() {
		return reg_location;
	}
	public void setReg_location(int reg_location) {
		this.reg_location = reg_location;
	}
	public Date getDel_date() {
		return del_date;
	}
	public void setDel_date(Date del_date) {
		this.del_date = del_date;
	}
	public int getIsAdmin() {
		return isAdmin;
	}
	public void setIsAdmin(int isAdmin) {
		this.isAdmin = isAdmin;
	}
	public String getAccess_Token() {
		return access_Token;
	}
	public void setAccess_Token(String access_Token) {
		this.access_Token = access_Token;
	}
	public String getRefresh_Token() {
		return refresh_Token;
	}
	public void setRefresh_Token(String refresh_Token) {
		this.refresh_Token = refresh_Token;
	}
	public int getPw_Miss_Count() {
		return pw_Miss_Count;
	}
	public void setPw_Miss_Count(int pw_Miss_Count) {
		this.pw_Miss_Count = pw_Miss_Count;
	}
	public int getAuthor_Type() {
		return author_Type;
	}
	public void setAuthor_Type(int author_Type) {
		this.author_Type = author_Type;
	}
	public String getProfile() {
		return profile;
	}
	public void setProfile(String profile) {
		this.profile = profile;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	@Override
	public String toString() {
		return "UserVO [nickname=" + nickname + ", email=" + email + ", password=" + password + ", tel=" + tel
				+ ", name=" + name + ", gender=" + gender + ", address=" + address + ", reg_date=" + reg_date
				+ ", reg_location=" + reg_location + ", del_date=" + del_date + ", isAdmin=" + isAdmin
				+ ", access_Token=" + access_Token + ", refresh_Token=" + refresh_Token + ", pw_Miss_Count="
				+ pw_Miss_Count + ", author_Type=" + author_Type + ", profile=" + profile + ", userId=" + userId + "]";
	}
	
}
