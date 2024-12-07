package com.nutridiet.project.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "user_table")
public class User
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="uid",nullable = false)
	int id;
	@Column(name = "uemail",nullable = false,unique = true)
	String uemail;
	@Column(name = "uname",nullable = false,length = 50)
	String uusername;	
	@Column(name = "upassword",nullable = false,length = 50)
	String upassword;
	@Column(name = "uage",nullable = false,length = 50)
	String uage;
	@Column(name = "ugender",nullable = false,length = 10)
	String ugender;
	@Column(name = "urole",nullable = false,length = 50)
	String urole;
	@Column(name = "ucontact",nullable = false,length = 10)
	String ucontact;
	@Column(name = "ubodytype",nullable = false)
	String ubodytype;
	
	
	@Override
	public String toString() {
		return "User [id=" + id + ", uemail=" + uemail + ", uusername=" + uusername + ", upassword=" + upassword
				+ ", uage=" + uage + ", ugender=" + ugender + ", urole=" + urole + ", ucontact=" + ucontact
				+ ", ubodytype=" + ubodytype + "]";
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUemail() {
		return uemail;
	}
	public void setUemail(String uemail) {
		this.uemail = uemail;
	}
	public String getUusername() {
		return uusername;
	}
	public void setUusername(String uusername) {
		this.uusername = uusername;
	}
	public String getUpassword() {
		return upassword;
	}
	public void setUpassword(String upassword) {
		this.upassword = upassword;
	}
	public String getUage() {
		return uage;
	}
	public void setUage(String uage) {
		this.uage = uage;
	}
	public String getUgender() {
		return ugender;
	}
	public void setUgender(String ugender) {
		this.ugender = ugender;
	}
	public String getUrole() {
		return urole;
	}
	public void setUrole(String urole) {
		this.urole = urole;
	}
	public String getUcontact() {
		return ucontact;
	}
	public void setUcontact(String ucontact) {
		this.ucontact = ucontact;
	}
	public String getUbodytype() {
		return ubodytype;
	}
	public void setUbodytype(String ubodytype) {
		this.ubodytype = ubodytype;
	}
	
	
	
	
}