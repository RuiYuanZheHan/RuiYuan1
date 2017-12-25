package com.city.oa.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.city.oa.service.IVIPService;

@Controller("VIPDeleteController")
public class VIPDeleteController {
	private int id = 0;
	private IVIPService vipservice = null;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	@Autowired
	public void setVipservice(IVIPService vipservice) {
		this.vipservice = vipservice;
	}
	public String delete() throws Exception{
		vipservice.delete(vipservice.getvip(id));
		return "delete";
	}
}
