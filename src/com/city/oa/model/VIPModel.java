package com.city.oa.model;

import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="vip")
public class VIPModel {	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int vipid;
	private String vip_name=null;
	private String vphone=null;
	private float privilege;
	private String vip_email=null;
	@OneToMany(mappedBy="vipmodel")
	private Set<Vege_FormModel>  vege_form=null;
	
	@ManyToMany
	@JoinTable(
			name="relationship",
			joinColumns={@JoinColumn (name="vipid")},
			inverseJoinColumns={@JoinColumn(name="hobbyid")}	
			)
	private Set<HobbyModel>hobbies=null;
	
	
	
	public Set<HobbyModel> getHobbies() {
		return hobbies;
	}
	public void setHobbies(Set<HobbyModel> hobbies) {
		this.hobbies = hobbies;
	}
	public Set<Vege_FormModel> getVege_form() {
		return vege_form;
	}
	public void setVege_form(Set<Vege_FormModel> vege_form) {
		this.vege_form = vege_form;
	}
	public int getVipid() {
		return vipid;
	}
	public void setVipid(int vipid) {
		this.vipid = vipid;
	}
	public String getVip_name() {
		return vip_name;
	}
	public void setVip_name(String vip_name) {
		this.vip_name = vip_name;
	}
	public String getVphone() {
		return vphone;
	}
	public void setVphone(String vphone) {
		this.vphone = vphone;
	}

	public float getPrivilege() {
		return privilege;
	}
	public void setPrivilege(float privilege) {
		this.privilege = privilege;
	}
	public String getVip_email() {
		return vip_email;
	}
	public void setVip_email(String vip_email) {
		this.vip_email = vip_email;
	}
}
