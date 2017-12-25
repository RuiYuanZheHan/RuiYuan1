package com.city.oa.interceptor;

import java.util.Map;

import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;
//登录检查拦截器
@Controller("LoginCheckInteceptor")
public class LoginCheckInteceptor implements Interceptor {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	public void destroy() {
		System.out.println("登录检查拦截器销毁方法。。。");
	}
	@Override
	public void init() {
		System.out.println("登录检查拦截器初始化方法。。。");
	}

	@Override
	public String intercept(ActionInvocation ai) throws Exception {
		System.out.println("登录检查拦截器拦截方法。。。");	
		ActionContext ac=ActionContext.getContext();
		Map<String,Object> session=ac.getSession();
		if(session.get("um")==null){
			return "login";
		}
		else{
			System.out.println("放过");	
			return 	ai.invoke();
		}
	}
}
