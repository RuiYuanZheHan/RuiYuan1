package com.city.oa.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "vege_form")
public class Vege_FormModel {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int vege_id;

	@ManyToOne
	@JoinColumn(name = "vid")
	private VegetableModel vegetable = null;

	@ManyToOne
	@JoinColumn(name = "VIP_ID")
	private VIPModel vipmodel;
	private String consumer;

	private String vege_time;
	private double vege_statistics;

	public int getVege_id() {
		return vege_id;
	}

	public void setVege_id(int vege_id) {
		this.vege_id = vege_id;
	}

	public String getConsumer() {
		return consumer;
	}

	public void setConsumer(String consumer) {
		this.consumer = consumer;
	}

	public VegetableModel getVegetable() {
		return vegetable;
	}

	public void setVegetable(VegetableModel vegetable) {
		this.vegetable = vegetable;
	}

	public VIPModel getVipmodel() {
		return vipmodel;
	}

	public void setVipmodel(VIPModel vipmodel) {
		this.vipmodel = vipmodel;
	}

	public String getVege_time() {
		return vege_time;
	}

	public void setVege_time(String vege_time) {
		this.vege_time = vege_time;
	}

	public double getVege_statistics() {
		return vege_statistics;
	}

	public void setVege_statistics(double vege_statistics) {
		this.vege_statistics = vege_statistics;
	}


}
