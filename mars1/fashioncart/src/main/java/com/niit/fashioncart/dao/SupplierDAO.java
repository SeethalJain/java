package com.niit.fashioncart.dao;
import java.util.List;

import com.niit.fashioncart.model.Supplier;
public interface SupplierDAO {
	public void saveOrUpdate(Supplier supplier);
	public boolean delete(String id);
	public Supplier get(String id);
	public Supplier getByName(String name);
	public List<Supplier> list();
}
