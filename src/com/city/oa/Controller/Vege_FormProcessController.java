package com.city.oa.Controller;

import java.util.Calendar;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.city.oa.model.VIPModel;
import com.city.oa.model.Vege_FormModel;
import com.city.oa.model.VegetableModel;
import com.city.oa.service.IVIPService;
import com.city.oa.service.IVege_FormService;
import com.city.oa.service.IVegetableService;

@Controller("Vege_FormProcessController")
public class Vege_FormProcessController {
	private IVege_FormService vege_formservice = null;
	private Vege_FormModel vege_formmodel = new Vege_FormModel();
	private  int id = 0;
	private  VegetableModel  vegemodel = null;
	private IVegetableService  vegeservice = null;
	private String consumer = null;
	private VIPModel   vipmodel = null;
	private IVIPService vipservice = null;
	private double statistics =0;


	Calendar c = Calendar.getInstance();
	String year = String.valueOf(c.get(Calendar.YEAR));
	String month = String.valueOf(c.get(Calendar.MONTH) + 1);
	String day = String.valueOf(c.get(Calendar.DAY_OF_MONTH));

	String date = year + "-" + month + "-" + day;




	public double getStatistics() {
		return statistics;
	}
	public void setStatistics(double statistics) {
		this.statistics = statistics;
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
	public String getConsumer() {
		return consumer;
	}
	public void setConsumer(String consumer) {
		this.consumer = consumer;
	}

	public VegetableModel getVegemodel() {
		return vegemodel;
	}

	public void setVegemodel(VegetableModel vegemodel) {
		this.vegemodel = vegemodel;
	}
	@Autowired
	public void setVegeservice(IVegetableService vegeservice) {
		this.vegeservice = vegeservice;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Vege_FormModel getVege_formmodel() {
		return vege_formmodel;
	}

	public void setVege_formmodel(Vege_FormModel vege_formmodel) {
		this.vege_formmodel = vege_formmodel;
	}
	@Autowired
	public void setVege_formservice(IVege_FormService vege_formservice) {
		this.vege_formservice = vege_formservice;
	}
	public String add() throws Exception
	{	
		if(consumer.equals("")){
			return "failure";
		}
		vegemodel = vegeservice.getVegetable(id);	
		vipmodel = vipservice.getvip(consumer);
		vege_formmodel.setVege_time(date);
		if(vipmodel!=null){
			statistics = (vegemodel.getVprice()*(vipmodel.getPrivilege())/10.0);
			vege_formservice.add(vege_formmodel,vipmodel , vegemodel, consumer, statistics);
		}else{
			statistics = vegemodel.getVprice();
			vege_formservice.add(vege_formmodel, vegemodel, consumer, statistics);
		}
		return "add";
	}
}
