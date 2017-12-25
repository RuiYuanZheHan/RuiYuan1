package com.city.oa.interceptor;

import java.util.Map;

import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;
@Controller("LoginCountInteceptor")
public class LoginCountInteceptor  implements Interceptor{
	private int i = 0;
	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void init() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public String intercept(ActionInvocation ai) throws Exception {
		// TODO Auto-generated method stub
		ActionContext ac=ActionContext.getContext();	
		Map<String,Object> app = ac.getApplication();
		++i;
		app.put("num", i);
		return ai.invoke();
	} 

}
