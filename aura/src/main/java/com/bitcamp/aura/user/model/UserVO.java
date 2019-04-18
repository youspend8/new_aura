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
	private String ssn;
	private int gender;
	private String address;
	private Date regDate;
	private int regLocation;
	private Date delDate;
	private int isAdmin;
	private String accessToken;
	private String refreshToken;
	private int pwMissCount;
	private int authorType;
	private String profile;
	private String userId;
	
	public UserVO() {
		// TODO Auto-generated constructor stub
	}
	
	public UserVO(String nickname, String email, String password, String tel, String name, String ssn, int gender,
			String address, Date regDate, int regLocation, Date delDate, int isAdmin, String accessToken,
			String refreshToken, int pwMissCount, int authorType, String profile, String userId) {
		this.nickname = nickname;
		this.email = email;
		this.password = password;
		this.tel = tel;
		this.name = name;
		this.ssn = ssn;
		this.gender = gender;
		this.address = address;
		this.regDate = regDate;
		this.regLocation = regLocation;
		this.delDate = delDate;
		this.isAdmin = isAdmin;
		this.accessToken = accessToken;
		this.refreshToken = refreshToken;
		this.pwMissCount = pwMissCount;
		this.authorType = authorType;
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
	public String getSsn() {
		return ssn;
	}
	public void setSsn(String ssn) {
		this.ssn = ssn;
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
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public int getRegLocation() {
		return regLocation;
	}
	public void setRegLocation(int regLocation) {
		this.regLocation = regLocation;
	}
	public Date getDelDate() {
		return delDate;
	}
	public void setDelDate(Date delDate) {
		this.delDate = delDate;
	}
	public int getIsAdmin() {
		return isAdmin;
	}
	public void setIsAdmin(int isAdmin) {
		this.isAdmin = isAdmin;
	}
	public String getAccessToken() {
		return accessToken;
	}
	public void setAccessToken(String accessToken) {
		this.accessToken = accessToken;
	}
	public String getRefreshToken() {
		return refreshToken;
	}
	public void setRefreshToken(String refreshToken) {
		this.refreshToken = refreshToken;
	}
	public int getPwMissCount() {
		return pwMissCount;
	}
	public void setPwMissCount(int pwMissCount) {
		this.pwMissCount = pwMissCount;
	}
	public int getAuthorType() {
		return authorType;
	}
	public void setAuthorType(int authorType) {
		this.authorType = authorType;
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
				+ ", name=" + name + ", ssn=" + ssn + ", gender=" + gender + ", address=" + address + ", regDate="
				+ regDate + ", regLocation=" + regLocation + ", delDate=" + delDate + ", isAdmin=" + isAdmin
				+ ", accessToken=" + accessToken + ", refreshToken=" + refreshToken + ", pwMissCount=" + pwMissCount
				+ ", authorType=" + authorType + ", profile=" + profile + ", userId=" + userId + "]";
	}
	
}
