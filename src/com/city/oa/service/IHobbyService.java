package com.city.oa.service;

import java.util.List;

import com.city.oa.model.HobbyModel;
import com.city.oa.model.VIPModel;

public interface IHobbyService {
	public void add(HobbyModel em) throws Exception;
	//修改员工
	public void modify(HobbyModel em) throws Exception;
	//删除员工
	public void delete(HobbyModel em) throws Exception;

	public HobbyModel gethobby(int id) throws Exception;
	//取得所有的员工列表
	public List<HobbyModel> getListByAll() throws Exception;
	public HobbyModel getWithvip(int id) throws Exception; 
	public HobbyModel getWithvvips(int id) throws Exception; 
}
