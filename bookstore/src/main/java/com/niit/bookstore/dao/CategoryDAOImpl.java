package com.niit.bookstore.dao;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.bookstore.model.Category;
@EnableTransactionManagement
@Repository
public class CategoryDAOImpl implements CategoryDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	public CategoryDAOImpl(SessionFactory sessionFactory)
	{
		
		try 
		{
			this.sessionFactory = sessionFactory;
		} 
		catch (Exception e)
		{
			e.printStackTrace();
		}
	}

	@Transactional
	public boolean delete(String id) {
		Category category = new Category();
		category.setId(id);
		try {
			sessionFactory.getCurrentSession().delete(category);
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}
	
@Transactional
	public Category get(String id) {
		String hql = "from Category where id =" + "'" + id + "'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Category> list = (List<Category>) query.list();
		if (list != null && !list.isEmpty()) {
			return list.get(0);
		}
		return null;
	}

@Transactional
	public List<Category> list() {
		@SuppressWarnings("unchecked")
		List<Category> list = (List<Category>) sessionFactory.getCurrentSession().createCriteria(Category.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

		return list;
	}

@Transactional
	public Category getByName(String name) {
		String hql = "from Category where name =" + "'" + name + "'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Category> list = (List<Category>) query.list();
		if (list != null && !list.isEmpty()) {
			return list.get(0);
		}
		return null;
	}

@Transactional
	public void saveOrUpdate(Category category) {
		sessionFactory.getCurrentSession().saveOrUpdate(category);
		
	}


}
