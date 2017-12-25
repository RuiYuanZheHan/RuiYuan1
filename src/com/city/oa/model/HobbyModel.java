package com.city.oa.model;

import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name="hobby")
public class HobbyModel {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private   int hobbyid;
	private String hobbyname;
	@ManyToMany(mappedBy="hobbies")
	private Set<VIPModel> vipmodel=null;
	public int getHobbyid() {
		return hobbyid;
	}
	public void setHobbyid(int hobbyid) {
		this.hobbyid = hobbyid;
	}
	public String getHobbyname() {
		return hobbyname;
	}
	public void setHobbyname(String hobbyname) {
		this.hobbyname = hobbyname;
	}
	public Set<VIPModel> getVipmodel() {
		return vipmodel;
	}
	public void setVipmodel(Set<VIPModel> vipmodel) {
		this.vipmodel = vipmodel;
	}
}
