package com.city.oa.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.city.oa.model.VIPModel;
import com.city.oa.service.IVIPService;
@Controller("VIPProcessController")
public class VIPProcessController {
	private IVIPService  vipservice = null;
	private VIPModel vipmodel = null;
	int []aa;
	public int[] getAa() {
		return aa;
	}
	public void setAa(int[] aa) {
		this.aa = aa;
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
	public String add() throws Exception
	{
		if(vipmodel.getVip_name().trim().equals("")){
			return "failure";
		}
		vipservice.add(vipmodel);
		vipservice.addHobby(vipmodel.getVipid(), aa);
		return "add";
	}
}
