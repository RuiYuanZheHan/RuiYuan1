package com.city.oa.service.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.city.oa.model.HobbyModel;
import com.city.oa.service.IHobbyService;
@Service("HobbyServiceImpl")
@Transactional
public class HobbyServiceImpl implements IHobbyService {
	private SessionFactory sf=null;
	@Autowired
	public void setSf(SessionFactory sf) {
		this.sf = sf;
	}
	@Override
	public void add(HobbyModel em) throws Exception {
		// TODO Auto-generated method stub
		sf.getCurrentSession().save(em);
	}

	@Override
	public void modify(HobbyModel em) throws Exception {
		// TODO Auto-generated method stub
		sf.getCurrentSession().update(em);
	}

	@Override
	public void delete(HobbyModel em) throws Exception {
		// TODO Auto-generated method stub
		sf.getCurrentSession().delete(em);
	}



	@Override
	public HobbyModel gethobby(int id) throws Exception {
		// TODO Auto-generated method stub
		return  sf.getCurrentSession().get(HobbyModel.class, id);
	}

	@Override
	public List<HobbyModel> getListByAll() throws Exception {
		// TODO Auto-generated method stub
		return sf.getCurrentSession().createQuery("from HobbyModel", HobbyModel.class).getResultList();
	}
	@Override
	public HobbyModel getWithvip(int id) throws Exception {
		// TODO Auto-generated method stub
		String hql="from HobbyModel dm inner join fetch dm.vipmodel em where dm.hobbyid=:id";
		Query query=sf.getCurrentSession().createQuery(hql);
		query.setInteger("id", id);
		HobbyModel dm=(HobbyModel)query.uniqueResult();
		return dm;
	}
	@Override
	public HobbyModel getWithvvips(int id) throws Exception {
		String hql="from HobbyModel hm inner join fetch hm.vipmodel em where hm.hobbyid=:id";
		Query query=sf.getCurrentSession().createQuery(hql);
		query.setInteger("id", id);
		HobbyModel hm=(HobbyModel)query.uniqueResult();
		//System.out.println(hm.getHobbies().size()+"ssssssssssssssssssssssssssssssssss");
		return hm;
	}
	
}