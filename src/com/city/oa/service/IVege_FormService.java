package com.city.oa.service;

import java.util.List;
import com.city.oa.model.VIPModel;
import com.city.oa.model.Vege_FormModel;
import com.city.oa.model.VegetableModel;

public interface IVege_FormService {
//	public void add(Vege_FormModel em) throws Exception;
	public void add(Vege_FormModel em,VIPModel  vm,VegetableModel vege,String name,double stastic) throws Exception;
	public void add(Vege_FormModel em,VegetableModel vege,String name,double stastic) throws Exception;
	public void modify(Vege_FormModel em) throws Exception;
	public void delete(Vege_FormModel em) throws Exception;
	public List<Vege_FormModel> getvege_Form(String  name) throws Exception;
	public Vege_FormModel getvege_Form(int id) throws Exception;
	public List<Vege_FormModel> getListByAll() throws Exception;
	
}
