package com.niit.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.Address;

@Repository
public class AddressDAOImpl implements AddressDAO {
	
	@Autowired
	SessionFactory sessionFactory;
	

	
	public void addAddress(Address address) {
		try
		{
			Session session=sessionFactory.openSession();
			Transaction trans=session.beginTransaction();
			session.saveOrUpdate(address);
			System.out.println("Save Address DAO Passed");
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