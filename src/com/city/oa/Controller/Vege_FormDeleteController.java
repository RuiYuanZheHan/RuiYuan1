package com.city.oa.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import com.city.oa.service.IVege_FormService;

@Controller("Vege_FormDeleteController")
public class Vege_FormDeleteController {
	private     IVege_FormService  vegeformservice = null;
	private int id = 0;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	@Autowired
	public void setVegeformservice(IVege_FormService vegeformservice) {
		this.vegeformservice = vegeformservice;
	}
	public  String    delete() throws Exception{
		vegeformservice.delete(vegeformservice.getvege_Form(id));
		return "delete";
	}
} 
