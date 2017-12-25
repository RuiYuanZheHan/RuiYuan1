package com.city.oa.Controller;

import java.io.File;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.city.oa.model.VegetableModel;
import com.city.oa.service.IVegetableService;
@Controller("VegetableModifyController")
public class VegetableModifyController {
	private IVegetableService vegetableservice = null;
    private int id = 0;
    private VegetableModel modifyvegetable = null;           
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
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public VegetableModel getModifyvegetable() {
		return modifyvegetable;
	}
	public void setModifyvegetable(VegetableModel modifyvegetable) {
		this.modifyvegetable = modifyvegetable;
	}
	@Autowired
	public void setVegetableservice(IVegetableService vegetableservice) {
		this.vegetableservice = vegetableservice;
	}

	public String tomodify() throws Exception
	{
		modifyvegetable =  vegetableservice.getVegetable(id);
		return "tomodify";
	}
	
	public String modify() throws Exception
	{
		
		
		if(photoFileName==null||photoFileName.trim().length()==0){
			vegetableservice.modify(modifyvegetable);
		}
		else{
			vegetableservice.modify(modifyvegetable, photo, photoFileName, photoContentType);
		}
		return "modify";
	}

	
}
