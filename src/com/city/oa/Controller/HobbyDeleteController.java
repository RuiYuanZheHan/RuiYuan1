package com.city.oa.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.city.oa.service.IHobbyService;
@Controller("HobbyDeleteController")
public class HobbyDeleteController {
	private  IHobbyService hobbyservice = null;
	private int id = 0;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	@Autowired
	public void setHobbyservice(IHobbyService hobbyservice) {
		this.hobbyservice = hobbyservice;
	}
	public String delete() throws Exception
	{
		hobbyservice.delete(hobbyservice.gethobby(id));
		return "delete";
	}
}
