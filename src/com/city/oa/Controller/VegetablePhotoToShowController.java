package com.city.oa.Controller;

import java.io.InputStream;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.city.oa.model.VegetableModel;
import com.city.oa.service.IVegetableService;


@Controller("VegetablePhotoToShowController")
public class VegetablePhotoToShowController {
	private IVegetableService vegeservice=null;
	private VegetableModel vm=null;
	private int id=0;

	public VegetableModel getVm() {
		return vm;
	}

	public void setVm(VegetableModel vm) {
		this.vm = vm;
	}
	@Autowired
	public void setVegeservice(IVegetableService vegeservice) {
		this.vegeservice = vegeservice;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public InputStream getInputStream() throws Exception
	{
		InputStream result=null;
		vm=vegeservice.getVegetable(id);

		if(vm!=null&&vm.getFilename()!=null){
			result=vm.getPhoto().getBinaryStream();
		}
		return result;
	}
	public String show() throws Exception
	{
		return "sucsess";
	}
	public String toview() throws Exception
	{
		vm=vegeservice.getVegetable(id);
		return "toview";
	}
}
