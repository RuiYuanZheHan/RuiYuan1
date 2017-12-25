package com.city.oa.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.city.oa.model.VegetableModel;
import com.city.oa.service.IVegetableService;



@Controller("vegetablefront")
public class VegetableFrontController {
	private  IVegetableService vegeservice = null;
	private  List<VegetableModel> vegellist = null;
	private VegetableModel vegemodel = null;
   private int id= 0;
   
	public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
	public List<VegetableModel> getVegellist() {
		return vegellist;
	}
	public void setVegellist(List<VegetableModel> vegellist) {
		this.vegellist = vegellist;
	}
	@Autowired
	public void setVegeservice(IVegetableService vegeservice) {
		this.vegeservice = vegeservice;
	}


	public VegetableModel getVegemodel() {
		return vegemodel;
	}
	public void setVegemodel(VegetableModel vegemodel) {
		this.vegemodel = vegemodel;
	}
	public String tomain() throws Exception
	{
		vegellist=vegeservice.getListByAll();
		return "tomain";
	}
	public String toadd() throws Exception
	{
		return "toadd";
	}

}
