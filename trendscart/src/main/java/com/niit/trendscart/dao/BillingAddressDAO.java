package com.niit.trendscart.dao;

import com.niit.trendscart.model.BillingAddress;

public interface BillingAddressDAO {
	void saveOrUpdate(BillingAddress billingAddress);
 void deleteBillingAddress(String billingAddressId);
BillingAddress getBillingAddress(String billingAddressId);

}


