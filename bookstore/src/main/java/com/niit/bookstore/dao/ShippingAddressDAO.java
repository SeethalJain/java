package com.niit.bookstore.dao;

import com.niit.bookstore.model.ShippingAddress;

public interface ShippingAddressDAO {
	void saveOrUpdate(ShippingAddress shippingAddress);
	
	void deleteShippingAddress(String shippingAddressId);

	ShippingAddress getShippingAddress(String shippingAddressId);



}
