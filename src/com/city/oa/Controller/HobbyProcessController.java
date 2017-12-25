package com.city.oa.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.city.oa.model.HobbyModel;
import com.city.oa.service.IHobbyService;
import com.opensymphony.xwork2.ActionSupport;

@Controller("HobbyProcessController")
@Scope("prototype")
public class HobbyProcessController extends ActionSupport{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private  HobbyModel  hobbymodel = null;
	private  IHobbyService hobbyservice = null;
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
	public void setHobbyservice(IHobbyService hobbyservice) {
		this.hobbyservice = hobbyservice;
	}

	public void validate() {
			if(hobbymodel.getHobbyname().length()==0)
			{
				this.addFieldError("hobbymodel.hobbyname", "爱好名不能为空");
			}
			else  if((hobbymodel.getHobbyname().trim().length()>6)){
				this.addFieldError("hobbymodel.hobbyname", "爱好名必须小于6位");
			}
		}
	
	public String add() throws Exception
	{
		hobbyservice.add(hobbymodel);
		return "add";
	}


}
