package edu.hnpu.bean;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;
/**
 * 用户信息表
 * @author dengpf
 *
 */
@Entity
@Table(name = "user_info")
public class UserInfo implements Serializable{
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(generator="system-uuid")
	@GenericGenerator(name = "system-uuid",strategy="uuid")
	@Column(name = "id" ,unique = true, nullable = false)
	private String id;
	@Column(name = "user_name" , nullable = true)
	private String userName;
	@Column(name = "user_pwd" , nullable = true)
	private String userPwd;
	@Column(name = "mobile" , nullable = true)
	private String mobile;
	@Column(name = "email" , nullable = true)
	private String email;
	@Column(name = "address" , nullable = true)
	private String address;
	@Column(name = "hobby" , nullable = true)
	private String hobby;
	@Column(name="age_group" ,nullable = true)
	private String ageGroup;
	
	public String getAgeGroup() {
		return ageGroup;
	}
	public void setAgeGroup(String ageGroup) {
		this.ageGroup = ageGroup;
	}
	public String getId() {
		return id;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPwd() {
		return userPwd;
	}
	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getHobby() {
		return hobby;
	}
	public void setHobby(String hobby) {
		this.hobby = hobby;
	}
}
