package com.city.oa.service.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.city.oa.model.VIPModel;
import com.city.oa.model.Vege_FormModel;
import com.city.oa.model.VegetableModel;
import com.city.oa.service.IVege_FormService;
@Service("Vege_FormServiceImpl")
@Transactional
public class Vege_FormServiceImpl implements IVege_FormService {
	private SessionFactory sf=null;
	@Autowired
	public void setSf(SessionFactory sf) {
		this.sf = sf;
	}
	@Override
	public void modify(Vege_FormModel em) throws Exception {
		// TODO Auto-generated method stub
		sf.getCurrentSession().update(em);
	}

	@Override
	public void delete(Vege_FormModel em) throws Exception {
		// TODO Auto-generated method stub
		sf.getCurrentSession().delete(em);
	}


	@Override
	public Vege_FormModel getvege_Form(int id) throws Exception {
		// TODO Auto-generated method stub
		return  sf.getCurrentSession().get(Vege_FormModel.class, id);
	}

	@Override
	public List<Vege_FormModel> getListByAll() throws Exception {
		// TODO Auto-generated method stub
		return sf.getCurrentSession().createQuery("from Vege_FormModel", Vege_FormModel.class).getResultList();

	}
	@Override
	public void add(Vege_FormModel em, VIPModel vm, VegetableModel vege, String name, double stastic) throws Exception {
		// TODO Auto-generated method stub
		em.setConsumer(name);
		em.setVege_statistics(stastic);
		em.setVegetable(vege);
		em.setVipmodel(vm);
		sf.getCurrentSession().save(em);
	}
	@Override
	public void add(Vege_FormModel em, VegetableModel vege, String name, double stastic) throws Exception {
		// TODO Auto-generated method stub
		em.setVege_statistics(stastic);
		em.setConsumer(name);

		em.setVegetable(vege);
		sf.getCurrentSession().save(em);
	}

	@Override
	public List<Vege_FormModel> getvege_Form(String name) throws Exception {
		//String hql="from Vege_FormModel dm inner join fetch dm.vipmodel em where dm.vipid=:id";
		String hql="from Vege_FormModel dm   where dm.consumer=:id";
		Query query=sf.getCurrentSession().createQuery(hql);
		List<Vege_FormModel> vege_formlist = null;
		query.setString("id", name);
		vege_formlist=(List<Vege_FormModel>)query.getResultList();
		
		return vege_formlist;
	}
}
