package com.city.oa.service;

import java.util.List;
import com.city.oa.model.VIPModel;

public interface IVIPService {
	public void add(VIPModel em) throws Exception;
	//修改员工
	public void modify(VIPModel em) throws Exception;
	//删除员工
	public void delete(VIPModel em) throws Exception;

	public VIPModel getvip(int id) throws Exception;
	public VIPModel getvip(String  name) throws Exception;
	//取得所有的员工列表
	public List<VIPModel> getListByAll() throws Exception;
	public void addHobby(int id, int[] aa) throws Exception;
	public VIPModel getWithhobbies(int id) throws Exception; 

}
