package com.city.oa.Controller;

import java.io.File;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.city.oa.model.VegetableModel;
import com.city.oa.service.IVegetableService;

@Controller("vegetableprocess")
public class VegetableProcessController {
	private IVegetableService vegetableservice = null;
	private VegetableModel  vegetablemodel = null;
	private int id = 0;
	private VegetableModel  a = new  VegetableModel();

	private File photo=null;
	private String photoFileName=null;
	private String photoContentType = null;
	public File getPhoto() {
		return photo;
	}
	public void setPhoto(File photo) {
		this.photo = photo;
	}


	public String getPhotoFileName() {
		return photoFileName;
	}
	public void setPhotoFileName(String photoFileName) {
		this.photoFileName = photoFileName;
	}
	public String getPhotoContentType() {
		return photoContentType;
	}
	public void setPhotoContentType(String photoContentType) {
		this.photoContentType = photoContentType;
	}
	public VegetableModel getVegetablemodel() {
		return vegetablemodel;
	}
	public void setVegetablemodel(VegetableModel vegetablemodel) {
		this.vegetablemodel = vegetablemodel;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

	@Autowired
	public void setVegetableservice(IVegetableService vegetableservice) {
		this.vegetableservice = vegetableservice;
	}


	public String add() throws Exception
	{

		//System.out.println(a.getVname());
		if(vegetablemodel.getVname().trim().equals("")){
			return "failure";
		}
		else  if(vegetablemodel!=null&&(photoFileName==null||photoFileName.trim().length()==0)){
			vegetableservice.add(vegetablemodel);
		}
		else{
			vegetableservice.add(vegetablemodel, photo, photoFileName, photoContentType);
		}
		return "add";
	}



}
