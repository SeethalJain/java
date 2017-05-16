package com.niit.bookstore.dao;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.bookstore.model.Product;
@EnableTransactionManagement
@Repository("ProductDAO")
public class ProductDAOImpl implements ProductDAO{
	
	@Autowired
	private SessionFactory sessionFactory;
   public ProductDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	
	@Transactional
	public List<Product> list() {
		@SuppressWarnings("unchecked")
		List<Product> listProduct = (List<Product>) sessionFactory.getCurrentSession()
				.createCriteria(Product.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

		return listProduct;
	}

	@Transactional
	public Product get(String id) {
		String hql = "from Product where id='" + id+"'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<Product> listProduct = (List<Product>) query.list();
		
		if (listProduct != null && !listProduct.isEmpty()) {
			return listProduct.get(0);
		}
		
		return null;
	}

	@Transactional
	public void saveOrUpdate(Product product) {
		sessionFactory.getCurrentSession().saveOrUpdate(product);
		
	}

	@Transactional
	public boolean delete(String id) {
		Product product = new Product();
		product.setId(id);
		try {
			sessionFactory.getCurrentSession().delete(product);
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
		
	}


	@Transactional
	public Product getProductById(String id) {
		String hql = "from Product where id='" + id+"'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		List<Product> listOfProduct = query.list();
			
		if (listOfProduct != null && !listOfProduct.isEmpty()){

			return  listOfProduct.get(0);

		}
				
			
			return null;
	}

	@Transactional
	public List<Product> getProductbyCategoryId(String category_id) {
		System.out.println("inside product");
		String hql = "from Product where category_id='" +category_id+"'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		List<Product> listOfProducts = query.list();
			
			return  listOfProducts;	
	}


	


}
