package com.niit.fashioncart.dao;
import java.util.List;

import com.niit.fashioncart.model.Category;
public interface CategoryDAO {
	public void saveOrUpdate(Category category);
	public boolean delete(String id);
	public Category get(String id);
	public Category getByName(String name);
	public List<Category> list();
}

