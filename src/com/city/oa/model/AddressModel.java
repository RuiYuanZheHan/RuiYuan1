package com.city.oa.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="address")
public class AddressModel {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int houseid;
	private String commname;
	public int getHouseid() {
		return houseid;
	}
	public void setHouseid(int houseid) {
		this.houseid = houseid;
	}
	public String getCommname() {
		return commname;
	}
	public void setCommname(String commname) {
		this.commname = commname;
	}
}
