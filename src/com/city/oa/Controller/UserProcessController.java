package com.city.oa.Controller;

import java.io.PrintWriter;
import java.util.HashMap;

import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.json.annotations.JSON;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import com.city.oa.model.UsersModel;
import com.city.oa.service.IUserService;
import com.opensymphony.xwork2.ActionSupport;

import net.sf.json.JSONObject;

@Controller("UserProcessController")
public class UserProcessController extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private IUserService userservice = null;
	private UsersModel usermodel = null;
	private String uname =null;
	private Map<String,Object> dataMap;
	private String key = "Just see see";
	
	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public UsersModel getUsermodel() {
		return usermodel;
	}

	public void setUsermodel(UsersModel usermodel) {
		this.usermodel = usermodel;
	}

	@Autowired
	public void setUserservice(IUserService userservice) {
		this.userservice = userservice;
	}

	public String add() throws Exception {
		userservice.add(usermodel);
		return "add";
	}

	public String validataUser() throws Exception {

        dataMap = new HashMap<String, Object>();
		if (userservice.checkExist(uname)) {
			dataMap.put("result", "Y");

		} else {
			dataMap.put("result", "N");
		}
		return "ok";

	}
	
    public Map<String, Object> getDataMap() {
        return dataMap;
    }

    //设置key属性不作为json的内容返回
    @JSON(serialize=false)
    public String getKey() {
        return key;
    }

}
