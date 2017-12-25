package com.city.oa.model;

import java.sql.Blob;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
@Entity
@Table(name="vegetable")
public class VegetableModel {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private  int vid;
	private String vname;
	private float vprice;
	private String vkind;
	private Blob photo;
	private String filename;
	private String phototype;
	private String remark;
	@OneToMany(mappedBy="vegetable")
	private Set<Vege_FormModel>  vege_form=null;
	
	public int getVid() {
		return vid;
	}
	
	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public void setVid(int vid) {
		this.vid = vid;
	}
	public String getVname() {
		return vname;
	}
	public void setVname(String vname) {
		this.vname = vname;
	}
	public float getVprice() {
		return vprice;
	}
	public void setVprice(float vprice) {
		this.vprice = vprice;
	}
	public String getVkind() {
		return vkind;
	}
	public void setVkind(String vkind) {
		this.vkind = vkind;
	}
	public Blob getPhoto() {
		return photo;
	}
	public void setPhoto(Blob photo) {
		this.photo = photo;
	}
	public String getPhototype() {
		return phototype;
	}
	public void setPhototype(String phototype) {
		this.phototype = phototype;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	
}
