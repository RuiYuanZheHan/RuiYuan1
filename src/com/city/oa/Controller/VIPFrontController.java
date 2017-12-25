package com.city.oa.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.city.oa.model.HobbyModel;
import com.city.oa.model.VIPModel;
import com.city.oa.service.IHobbyService;
import com.city.oa.service.IVIPService;

@Controller("VIPFrontControllerii")
public class VIPFrontController {
	private IVIPService vipservice = null;
	private  IHobbyService  hobbyservice = null;
	private List<VIPModel>  viplist = null;
	private List<HobbyModel> hobbylist=null;
	public List<VIPModel> getViplist() {
		return viplist;
	}

	public List<HobbyModel> getHobbylist() {
		return hobbylist;
	}

	public void setHobbylist(List<HobbyModel> hobbylist) {
		this.hobbylist = hobbylist;
	}
	@Autowired
	public void setHobbyservice(IHobbyService hobbyservice) {
		this.hobbyservice = hobbyservice;
	}

	public void setViplist(List<VIPModel> viplist) {
		this.viplist = viplist;
	}
	@Autowired
	public void setVipservice(IVIPService vipservice) {
		this.vipservice = vipservice;
	}

	public String tomain() throws Exception
	{
		hobbylist=hobbyservice.getListByAll();
		viplist=vipservice.getListByAll();
		return "tomain";
	}
	public String toadd() throws Exception
	{
		return "toadd";
	}
}
