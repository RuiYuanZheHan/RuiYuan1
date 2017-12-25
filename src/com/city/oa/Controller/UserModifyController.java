package com.city.oa.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.city.oa.model.UsersModel;
import com.city.oa.service.IUserService;
@Controller("UserModifyController")
public class UserModifyController {
	private IUserService  userservice = null;
	private UsersModel modifymodel = null;
	int id = 0 ;
	
	@Autowired
	public void setUserservice(IUserService userservice) {
		this.userservice = userservice;
	}
	public UsersModel getModifymodel() {
		return modifymodel;
	}
	public void setModifymodel(UsersModel modifymodel) {
		this.modifymodel = modifymodel;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String modify() throws Exception
	{
		userservice.modify(modifymodel);
		return "modify";
	}
	public String tomodify() throws Exception
	{
		modifymodel =  userservice.getUser(id);
		return "tomodify";
	}


}
