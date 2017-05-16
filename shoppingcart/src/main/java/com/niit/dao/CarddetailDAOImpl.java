package com.niit.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.Carddetail;

@Repository
public class CarddetailDAOImpl implements CarddetailDAO {

	@Autowired
	SessionFactory sessionFactory;
	
	
	public void addCarddetail(Carddetail carddetail) {
	
		try
		{
			Session session=sessionFactory.openSession();
			Transaction trans=session.beginTransaction();
			session.saveOrUpdate(carddetail);
			System.out.println("Save make payment DAO Passed");
			trans.commit();
			session.flush();
			session.close();
		}
		
		catch(Exception ex)
		{
			System.out.println("Error="+ex);
		}
	}

	}
