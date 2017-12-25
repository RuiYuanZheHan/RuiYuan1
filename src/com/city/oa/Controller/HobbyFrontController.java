package com.city.oa.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.city.oa.model.HobbyModel;
import com.city.oa.service.IHobbyService;

@Controller("HobbyFrontController")
public class HobbyFrontController {
	private  IHobbyService hobbyservice = null;
	private  List<HobbyModel>hobbyllist = null;
	private   String bianhao;
	private String   hobbyname;
	private String operate;
    private String update;
    private String delete;
    private String specify;
    
	public String getBianhao() {
		return bianhao;
	}
	public void setBianhao(String bianhao) {
		this.bianhao = bianhao;
	}
	public String getHobbyname() {
		return hobbyname;
	}
	public void setHobbyname(String hobbyname) {
		this.hobbyname = hobbyname;
	}
	public String getOperate() {
		return operate;
	}
	public void setOperate(String operate) {
		this.operate = operate;
	}
	public String getUpdate() {
		return update;
	}
	public void setUpdate(String update) {
		this.update = update;
	}
	public String getDelete() {
		return delete;
	}
	public void setDelete(String delete) {
		this.delete = delete;
	}
	public String getSpecify() {
		return specify;
	}
	public void setSpecify(String specify) {
		this.specify = specify;
	}
	public List<HobbyModel> getHobbyllist() {
		return hobbyllist;
	}
	public void setHobbyllist(List<HobbyModel> hobbyllist) {
		this.hobbyllist = hobbyllist;
	}
	@Autowired
	public void setHobbyservice(IHobbyService hobbyservice) {
		this.hobbyservice = hobbyservice;
	}
	public String tomain() throws Exception
	{
		hobbyllist=hobbyservice.getListByAll();
		return "tomain";
	}
	public String toadd() throws Exception
	{
		return "toadd";
	}
	public String toadd1() throws Exception
	{
		return "toadd";
	}
}
