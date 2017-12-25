package com.city.oa.Controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.city.oa.model.Vege_FormModel;
import com.city.oa.model.VegetableModel;
import com.city.oa.service.IVege_FormService;
import com.city.oa.service.IVegetableService;
@Controller("Vege_FormFrontController")
public class Vege_FormFrontController {
	private  List<VegetableModel> vegelist = null;
	private    IVegetableService   vegeservice = null;
	private  List<Vege_FormModel> vege_formlist =  null;
	private   IVege_FormService   vege_formservice = null;
	private String name=null;
	private double sum = 0;
	private String consumer = null;
	public String getConsumer() {
		return consumer;
	}
	public void setConsumer(String consumer) {
		this.consumer = consumer;
	}


	public double getSum() {
		return sum;
	}
	public void setSum(double sum) {
		this.sum = sum;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public List<Vege_FormModel> getVege_formlist() {
		return vege_formlist;
	}
	public void setVege_formlist(List<Vege_FormModel> vege_formlist) {
		this.vege_formlist = vege_formlist;
	}
	@Autowired
	public void setVege_formservice(IVege_FormService vege_formservice) {
		this.vege_formservice = vege_formservice;
	}
	public List<VegetableModel> getVegelist() {
		return vegelist;
	}
	public void setVegelist(List<VegetableModel> vegelist) {
		this.vegelist = vegelist;
	}
	@Autowired
	public void setVegeservice(IVegetableService vegeservice) {
		this.vegeservice = vegeservice;
	}
	public String tomain() throws Exception{
		System.out.println(consumer+"sssssssssssssssssssssssss");
		if(consumer==null){	
			return "tofront";

		}else{
			vegelist = vegeservice.getListByAll();
			return "tomain";
		}
	}
	public  String addconsumer(){

		return "addconsumer";
	}
	public String toview() throws Exception
	{
		if(consumer.equals("")){
			return "failure";
		}
		vege_formlist = vege_formservice.getvege_Form(consumer);
		for(  Vege_FormModel vm:vege_formlist){
			sum = sum+vm.getVege_statistics();
		}
		return "toview";
	}
}
