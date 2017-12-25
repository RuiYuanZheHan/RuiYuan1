package com.city.oa.Controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.city.oa.model.HobbyModel;
import com.city.oa.model.VIPModel;
import com.city.oa.model.Vege_FormModel;
import com.city.oa.service.IHobbyService;
import com.city.oa.service.IVIPService;
import com.city.oa.service.IVege_FormService;

@Controller("VIPToViewController")
public class VIPToViewController {
	private  IVIPService  vipservice = null;
	private  VIPModel  vipmodel = null;
	private String name;
	private  IVege_FormService  vege_formservice = null;
	private  List<Vege_FormModel>    vegelist = null;
	private int id=0;


	@Autowired
	public void setVege_formservice(IVege_FormService vege_formservice) {
		this.vege_formservice = vege_formservice;
	}

	public List<Vege_FormModel> getVegelist() {
		return vegelist;
	}

	public void setVegelist(List<Vege_FormModel> vegelist) {
		this.vegelist = vegelist;
	}

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public VIPModel getVipmodel() {
		return vipmodel;
	}
	public void setVipmodel(VIPModel vipmodel) {
		this.vipmodel = vipmodel;
	}

	@Autowired
	public void setVipservice(IVIPService vipservice) {
		this.vipservice = vipservice;
	}
	public   String  detail () throws Exception{

		vipmodel = vipservice.getWithhobbies(id);
		if(vipmodel==null){
			vipmodel = vipservice.getvip(id);
			vegelist = null;
			return "detail";
		}
		vegelist= vege_formservice.getvege_Form(vipmodel.getVip_name());
		return "detail";
	}
}
