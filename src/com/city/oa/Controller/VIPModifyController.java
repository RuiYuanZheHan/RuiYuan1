package com.city.oa.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.city.oa.model.VIPModel;
import com.city.oa.service.IVIPService;

@Controller("VIPModifyController")
public class VIPModifyController {
	private   IVIPService   vipservice = null;
	private   VIPModel  vipmodel = null;
	private   int id = 0;
	
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
   public  String  tomodify() throws Exception{
	   vipmodel = vipservice.getvip(id);
	   return "tomodify";
   }
   public String modify()  throws Exception{
	   vipservice.modify(vipmodel);
	   return "modify";
   }
}
