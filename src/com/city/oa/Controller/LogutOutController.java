package com.city.oa.Controller;
import org.springframework.stereotype.Controller;

@Controller("LogutOutController")
public class LogutOutController {
	public String logout() throws Exception{
		
		return "logout";

}
}
