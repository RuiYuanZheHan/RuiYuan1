package com.city.oa.service.impl;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.sql.Blob;
import java.util.List;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.city.oa.model.VegetableModel;
import com.city.oa.service.IVegetableService;
@Service("VegetableServiceImpl")
@Transactional
public class VegetableServiceImpl implements IVegetableService {
	private SessionFactory sf=null;
	@Autowired
	public void setSf(SessionFactory sf) {
		this.sf = sf;
	}
	@Override
	public void add(VegetableModel em) throws Exception {
		// TODO Auto-generated method stub
		double i = 10/0.0;
		System.out.println("aaa"+10/0);
		sf.getCurrentSession().save(sf);

	}

	@Override
	public void modify(VegetableModel em) throws Exception {
		// TODO Auto-generated method stub
		sf.getCurrentSession().update(em);

	}

	@Override
	public void delete(VegetableModel em) throws Exception {
		// TODO Auto-generated method stub
		sf.getCurrentSession().delete(em);
	}


	@Override
	public VegetableModel getVegetable(int id) throws Exception {
		// TODO Auto-generated method stub
		return  sf.getCurrentSession().get(VegetableModel.class, id);
	}

	@Override
	public List<VegetableModel> getListByAll() throws Exception {
		// TODO Auto-generated method stub
		return sf.getCurrentSession().createQuery("from VegetableModel", VegetableModel.class).getResultList();
	}

	@Override
	public List<VegetableModel> getListBySearchWithPage(int departmentNo, int lowAge, int highAge, String name,
			int rows, int page) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void add(VegetableModel em, File photo, String filename, String contentType) throws Exception {
		em.setFilename(filename);
		em.setPhototype(contentType);
		InputStream fin=new FileInputStream(photo);
		Blob blobphoto=sf.getCurrentSession().getLobHelper().createBlob(fin, fin.available());
		em.setPhoto(blobphoto);
		sf.getCurrentSession().save(em);
	}
	@Override
	public void modify(VegetableModel pm, File photo, String filename, String contentType) throws Exception {
		// TODO Auto-generated method stub
		pm.setFilename(filename);
		pm.setPhototype(contentType);
		InputStream fin=new FileInputStream(photo);
		Blob blobphoto=sf.getCurrentSession().getLobHelper().createBlob(fin, fin.available());
		pm.setPhoto(blobphoto);
		sf.getCurrentSession().update(pm);
	}
	@Override
	public List<VegetableModel> getListByPriceWithPage(double low, double high, int rows, int page) throws Exception {
		StringBuffer hql=new StringBuffer("from VegetableModel vm where 1=1  ");
		if(low!=0){
			hql.append(" and vm.vprice>=:low");
		}
		if(high!=0){
			hql.append(" and vm.vprice<=:high");
		}
		Query query=sf.getCurrentSession().createQuery(hql.toString());
		if(low!=0){
			query.setDouble("low",low);
		}
		if(high!=0){
			query.setDouble("high",high);
		}
		//第rows*(page-1)条记录开始
		query.setFirstResult(rows*(page-1));
		//可以使用Query.setMaxResults方法简单地设置需要查询的最大结果集。
		query.setMaxResults(rows);
		List<VegetableModel> list=query.list();
		return list;
	}
	@Override
	public int getCountByPrice(double low, double high) throws Exception {
		// TODO Auto-generated method stub
		String hql="from VegetableModel vm where  vm.vprice between ? and ? ";
		//		String hql="from VegetableModel vm where  vm.vprice between ? and ?? ";

		Query query=sf.getCurrentSession().createQuery(hql);
		query.setDouble(0,low);
		query.setDouble(1, high);
		List<VegetableModel> list=query.list();
		return list.size();
	}
	@Override
	public int getPageCountByPrice(double low, double high, int rows) throws Exception {
		// TODO Auto-generated method stub
		int pagecount =0;
		int count =	getCountByPrice(low,high);
		int sums = (int) Math.ceil(count/(rows+0.0));
		return sums;
	}

}
