package com.city.oa.service;

import java.io.File;
import java.util.List;
import com.city.oa.model.VegetableModel;
public interface IVegetableService {
	public void add(VegetableModel  em) throws Exception;
	//修改员工
	public void modify(VegetableModel em) throws Exception;
	//删除员工
	public void delete(VegetableModel em) throws Exception;
	public VegetableModel getVegetable(int id) throws Exception;
	//取得所有的员工列表
	public List<VegetableModel> getListByAll() throws Exception;
	//按检索条件取得员工列表（有分页）
	public List<VegetableModel> getListBySearchWithPage(int departmentNo,int lowAge,int highAge,String name,int rows,int page) throws Exception;
	public void add(VegetableModel pm, File photo, String filename,String contentType) throws Exception;
	public void modify(VegetableModel pm, File photo, String filename,String contentType) throws Exception;
	public List<VegetableModel> getListByPriceWithPage(double low,double high,int rows, int page) throws Exception;
	public int getCountByPrice(double low,double high) throws Exception;
	public int getPageCountByPrice(double low,double high,int rows) throws Exception;
}
