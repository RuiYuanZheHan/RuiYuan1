package com.city.oa.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.city.oa.model.UsersModel;
import com.city.oa.service.IUserService;

@Controller("userfront")
public class UserFrontController {
	private  IUserService userservice = null;
	private  List<UsersModel> usermodellist = null;
	private  UsersModel um=null;
	public List<UsersModel> getUsermodellist() {
		return usermodellist;
	}
	public void setUsermodellist(List<UsersModel> usermodellist) {
		this.usermodellist = usermodellist;
	}
	@Autowired
	public void setUserservice(IUserService userservice) {
		this.userservice = userservice;
	}
	
	public UsersModel getUm() {
		return um;
	}
	public void setUm(UsersModel um) {
		this.um = um;
	}
	public String tomain() throws Exception
	{
		
		usermodellist=userservice.getListByAll();
		return "tomain";
	}
	
	public String toadd() throws Exception
	{
		return "toadd";
	}

}
