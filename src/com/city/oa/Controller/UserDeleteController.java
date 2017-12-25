package com.city.oa.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.city.oa.service.IUserService;

@Controller("UserDeleteController")
public class UserDeleteController {
	private  IUserService userservice = null;
	int id = 0;
	@Autowired
	public void setUserservice(IUserService userservice) {
		this.userservice = userservice;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String delete() throws Exception
	{
		userservice.delete(userservice.getUser(id));
		return "delete";
	}
}
