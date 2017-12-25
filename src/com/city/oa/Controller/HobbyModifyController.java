package com.city.oa.Controller;

import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.city.oa.model.HobbyModel;
import com.city.oa.model.VIPModel;
import com.city.oa.service.IHobbyService;
import com.city.oa.service.IVIPService;

@Controller("HobbyModifyController")
public class HobbyModifyController {
	private  HobbyModel modifyhobby = null;
	private  IHobbyService hobbyservice = null;
	private List<VIPModel> viplist = null;
	private Set<VIPModel>  vipset = null;
	private IVIPService  vipservice = null;
	private int id= 0;
	public IVIPService getVipservice() {
		return vipservice;
	}
	@Autowired
	public void setVipservice(IVIPService vipservice) {
		this.vipservice = vipservice;
	}
	public Set<VIPModel> getVipset() {
		return vipset;
	}
	public void setVipset(Set<VIPModel> vipset) {
		this.vipset = vipset;
	}
	public List<VIPModel> getViplist() {
		return viplist;
	}
	public void setViplist(List<VIPModel> viplist) {
		this.viplist = viplist;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

	public HobbyModel getModifyhobby() {
		return modifyhobby;
	}
	public void setModifyhobby(HobbyModel modifyhobby) {
		this.modifyhobby = modifyhobby;
	}
	@Autowired
	public void setHobbyservice(IHobbyService hobbyservice) {
		this.hobbyservice = hobbyservice;
	}
	public String tomodify() throws Exception

	{
		viplist=vipservice.getListByAll();
		vipset=hobbyservice.gethobby(id).getVipmodel();
		modifyhobby =  hobbyservice.gethobby(id);
		return "tomodify";
	}
	public String modify() throws Exception
	{
		modifyhobby.setVipmodel(vipset);
		hobbyservice.modify(modifyhobby);
		return "modify";
	}
}
