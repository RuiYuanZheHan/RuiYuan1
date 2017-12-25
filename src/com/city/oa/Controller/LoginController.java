package com.city.oa.Controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.city.oa.model.UsersModel;
import com.city.oa.service.IUserService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
@Controller("LoginController")
@Scope("prototype")
public class LoginController extends ActionSupport{
	private    IUserService   userservice = null;
	private   String  name = null;
	private String password = null;
	private String identifier = null;
	private boolean  check = false;
	
	public String getIdentifier() {
		return identifier;
	}
	public void setIdentifier(String identifier) {
		this.identifier = identifier;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Autowired
	public void setUserservice(IUserService userservice) {
		this.userservice = userservice;
	}

	public void validate() {
		if(name.length()==0)
		{
			this.addFieldError("name", "名不能为空bc");
		}	else  if((name.length()>3)){
			this.addFieldError("name", "名字必须小于3位");
		}


		if(password.length()==0){
			this.addFieldError("password", "密码不能为空bc");
		}
		else  if((password.length()>6)){
			this.addFieldError("password", "密码必须小于6位");
		}
	}

	public String login() throws Exception{
		
		HttpServletRequest request = ServletActionContext.getRequest();
		request.getSession();
		HttpSession session1 = request.getSession();
		
		check =( userservice.validate(name, password) && session1.getAttribute("authCode").equals(identifier));
		
		if(check){
			UsersModel um=userservice.getUser(name);
			//非耦合方式
			ActionContext ac=ActionContext.getContext();
			Map <String,Object> session=(Map) ac.getSession();
			session.put("um", um);
			return "login";
		}
		else{
			return "falure";
		}		
	}
	
	
	

}
