package com.city.oa.service.impl;

import java.util.List;

import javax.transaction.Transactional;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.city.oa.model.HobbyModel;
import com.city.oa.model.VIPModel;
import com.city.oa.service.IVIPService;
@Service("VIPServiceImpliiiii")
@Transactional
public class VIPServiceImpl implements IVIPService {
	private SessionFactory sf=null;
	@Autowired
	public void setSf(SessionFactory sf) {
		this.sf = sf;
	}
	@Override
	public void add(VIPModel em) throws Exception {
		// TODO Auto-generated method stub
		sf.getCurrentSession().save(em);
	}

	@Override
	public void modify(VIPModel em) throws Exception {
		// TODO Auto-generated method stub
		sf.getCurrentSession().update(em);
	}

	@Override
	public void delete(VIPModel em) throws Exception {
		// TODO Auto-generated method stub
		sf.getCurrentSession().delete(em);
	}


	@Override
	public VIPModel getvip(int id) throws Exception {
		// TODO Auto-generated method stub
		return  sf.getCurrentSession().get(VIPModel.class, id);
	}

	@Override
	public List<VIPModel> getListByAll() throws Exception {
		// TODO Auto-generated method stub
		return sf.getCurrentSession().createQuery("from VIPModel", VIPModel.class).getResultList();
	}
	@Override
	public void addHobby(int id, int[] aa) throws Exception {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
		VIPModel vm=sf.getCurrentSession().get(VIPModel.class, id);
		for(int bno:aa){
			HobbyModel bm=sf.getCurrentSession().get(HobbyModel.class, bno);
			vm.getHobbies().add(bm);
			bm.getVipmodel().add(vm);
		}
	}
	@Override
	public VIPModel getWithhobbies(int id) throws Exception {
		String hql="from VIPModel dm inner join fetch dm.hobbies em where dm.vipid=:id";
		Query query=sf.getCurrentSession().createQuery(hql);
		query.setInteger("id", id);
		VIPModel dm=(VIPModel)query.uniqueResult();
		return dm;
	}
	@Override
	public VIPModel getvip(String name) throws Exception {
		// TODO Auto-generated method stub
		String hql = "from  VIPModel vm where vm.vip_name=:id";
		Query query=sf.getCurrentSession().createQuery(hql);
		query.setString("id", name);
		VIPModel dm=(VIPModel)query.uniqueResult();
		return   dm;
	}
}
