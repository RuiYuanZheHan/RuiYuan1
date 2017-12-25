package com.city.oa.service;

import java.util.List;
import com.city.oa.model.UsersModel;
public interface IUserService {
	public void add(UsersModel em) throws Exception;
	//修改员工
	public void modify(UsersModel em) throws Exception;
	//删除员工
	public void delete(UsersModel em) throws Exception;
	//验证员工是否合法
	public boolean validate(String id,String password) throws Exception;
	public UsersModel getUser(int id) throws Exception;
	public UsersModel getUser(String name) throws Exception;
	//取得所有的员工列表
	public List<UsersModel> getListByAll() throws Exception;
	//按检索条件取得员工列表（有分页）
	public boolean checkExist(String uname) throws Exception;
}
