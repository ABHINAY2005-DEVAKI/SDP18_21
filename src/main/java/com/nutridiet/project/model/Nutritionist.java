package com.nutridiet.project.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "nutritionist_table")
public class Nutritionist
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	int id;
	@Column(name = "nname",nullable = false)
	private String nname;
	@Column(name = "nemail",nullable = false,unique = true)
	private String nemail;
	@Column(name = "nage",nullable = false)
	private String nage;
	@Column(name = "ngender",nullable = false)
	private String ngender;
	@Column(name = "ncontact",nullable = false,unique = true)
	private String ncontact;
	@Column(name = "nspecification",nullable = false)
	private String nspecification;
	@Column(name = "nexperience",nullable = false)
	private String nexperience;
	@Column(name = "neducation",nullable = false)
	private String neducation;
	@Column(name = "npassword",nullable = false)
	private String npassword;
	@Column(name="nstatus",nullable=false,length = 50)
	private String status;
	
	
	
	@Override
	public String toString() {
		return "Nutritionist [id=" + id + ", nname=" + nname + ", nemail=" + nemail + ", nage=" + nage + ", ngender="
				+ ngender + ", ncontact=" + ncontact + ", nspecification=" + nspecification + ", nexperience="
				+ nexperience + ", neducation=" + neducation + ", npassword=" + npassword + ", status=" + status + "]";
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNname() {
		return nname;
	}
	public void setNname(String nname) {
		this.nname = nname;
	}
	public String getNemail() {
		return nemail;
	}
	public void setNemail(String nemail) {
		this.nemail = nemail;
	}
	public String getNage() {
		return nage;
	}
	public void setNage(String nage) {
		this.nage = nage;
	}
	public String getNgender() {
		return ngender;
	}
	public void setNgender(String ngender) {
		this.ngender = ngender;
	}
	public String getNcontact() {
		return ncontact;
	}
	public void setNcontact(String ncontact) {
		this.ncontact = ncontact;
	}
	public String getNspecification() {
		return nspecification;
	}
	public void setNspecification(String nspecification) {
		this.nspecification = nspecification;
	}
	public String getNexperience() {
		return nexperience;
	}
	public void setNexperience(String nexperience) {
		this.nexperience = nexperience;
	}
	public String getNeducation() {
		return neducation;
	}
	public void setNeducation(String neducation) {
		this.neducation = neducation;
	}
	public String getNpassword() {
		return npassword;
	}
	public void setNpassword(String npassword) {
		this.npassword = npassword;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	
	

}
