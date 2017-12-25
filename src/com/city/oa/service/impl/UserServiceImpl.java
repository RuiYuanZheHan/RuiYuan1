package com.city.oa.service.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.city.oa.model.UsersModel;
import com.city.oa.service.IUserService;
@Service("UserServiceImpl")
@Transactional
public class UserServiceImpl implements IUserService {
	private SessionFactory sf=null;
	@Autowired
	public void setSf(SessionFactory sf) {
		this.sf = sf;
	}
	@Override
	public void add(UsersModel em) throws Exception {
		// TODO Auto-generated method stub
		sf.getCurrentSession().save(em);
	}

	@Override
	public void modify(UsersModel em) throws Exception {
		// TODO Auto-generated method stub
		sf.getCurrentSession().update(em);
	}

	@Override
	public void delete(UsersModel em) throws Exception {
		// TODO Auto-generated method stub
		sf.getCurrentSession().delete(em);
	}

	@Override
	public boolean validate(String id, String password) throws Exception {
	boolean result=false;
		String hql="select count(um.uname) from UsersModel um where um.uname=:id and um.upassword=:password";
		Query query=sf.getCurrentSession().createQuery(hql);
		query.setString("id",id);
		query.setString("password", password);
		Long lcount=(Long)query.uniqueResult();
		if(lcount!=null&&lcount>0){
			result=true;
		}
		return result;
	}

	@Override
	public UsersModel getUser(int id) throws Exception {
		// TODO Auto-generated method stub
		return  sf.getCurrentSession().get(UsersModel.class, id);
	}

	@Override
	public List<UsersModel> getListByAll() throws Exception {
	
		List<UsersModel> userlist =null;
		userlist =  sf.getCurrentSession().createQuery("from UsersModel", UsersModel.class).getResultList();
		 return userlist;
	}
	@Override
	public UsersModel getUser(String name) throws Exception {
		String hql="from UsersModel um where  um.uname=:id ";
		Query query=sf.getCurrentSession().createQuery(hql);
		 query.setString("id", name);
		UsersModel   um=(UsersModel) query.getSingleResult();
		return  um;
	}
	@Override
	public boolean checkExist(String uname) throws Exception {
		Query<Long> query=sf.getCurrentSession().createQuery("select count(um.uname) from UsersModel um where um.uname=:uname",Long.class);
		query.setParameter("uname", uname);
		Long count=query.uniqueResult();
		boolean result=false;
		if(count>0){
			result=true;
		}
		return result;
	}
}
