package com.city.oa.Controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.city.oa.model.HobbyModel;
import com.city.oa.service.IHobbyService;
@Controller("HobbyToViewController")
public class HobbyToViewController {
	private IHobbyService hobbyyservice = null;
	private   HobbyModel  hobbymodel = null;
	private int id = 0;
	public HobbyModel getHobbymodel() {
		return hobbymodel;
	}
	public void setHobbymodel(HobbyModel hobbymodel) {
		this.hobbymodel = hobbymodel;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	@Autowired
	public void setHobbyyservice(IHobbyService hobbyyservice) {
		this.hobbyyservice = hobbyyservice;
	}
	public   String  detail () throws Exception{
		hobbymodel = hobbyyservice.getWithvip(id);
		if(hobbymodel==null){
			return "detail1";
		}
		return "detail";
	}
	public  String detail1() throws Exception{
		hobbymodel = hobbyyservice.gethobby(id);
		return  "detail1";
	}
}
