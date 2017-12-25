package com.city.oa.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.city.oa.model.VegetableModel;
import com.city.oa.service.IVegetableService;
@Controller("VegetableDeleteController")
public class VegetableDeleteController {
    private int id = 0;
    private IVegetableService vegetableservice = null;
    private  VegetableModel  vm= null;
	@Autowired
	public void setVegetableservice(IVegetableService vegetableservice) {
		this.vegetableservice = vegetableservice;
	}
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String delete() throws Exception
	{
		System.out.println(vm.getVname()+"ooooooooooooooooooooo");

		vegetableservice.delete(vegetableservice.getVegetable(id));
		return "delete";
	}
}
