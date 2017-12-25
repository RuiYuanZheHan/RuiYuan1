package com.city.oa.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.city.oa.model.VegetableModel;
import com.city.oa.service.IVegetableService;

@Controller("Vege_FormSearchController")
public class Vege_FormSearchController {
	private   IVegetableService  vegeservice = null;
	private   List< VegetableModel>   vegelist = null;
	private  float  lowprice= 0;
	private  float highprice = 0;
	private  int row = 1;
	private int page = 1;
	private int counts = 0;
	private int pages = 0;
	public int getCounts() {
		return counts;
	}
	public void setCounts(int counts) {
		this.counts = counts;
	}
	public int getPages() {
		return pages;
	}
	public void setPages(int pages) {
		this.pages = pages;
	}
	public List<VegetableModel> getVegelist() {
		return vegelist;
	}
	public void setVegelist(List<VegetableModel> vegelist) {
		this.vegelist = vegelist;
	}
	public float getLowprice() {
		return lowprice;
	}
	public void setLowprice(float lowprice) {
		this.lowprice = lowprice;
	}
	public float getHighprice() {
		return highprice;
	}
	public void setHighprice(float highprice) {
		this.highprice = highprice;
	}
	public int getRow() {
		return row;
	}
	public void setRow(int row) {
		this.row = row;
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	@Autowired
	public void setVegeservice(IVegetableService vegeservice) {
		this.vegeservice = vegeservice;
	}
	public String search() throws Exception{
		counts = vegeservice.getCountByPrice(lowprice, highprice);
		pages =  vegeservice.getPageCountByPrice(lowprice, highprice, row);
		
		if(counts<=0){
			counts=1;
		}
		if(pages<=0){
			pages=0;
		}
		//当前页要显示的程序
		vegelist=vegeservice.getListByPriceWithPage(lowprice, highprice, row, page);
		return "search";
	}

}
