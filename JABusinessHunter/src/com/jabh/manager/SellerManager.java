package com.jabh.manager;

import java.util.Map;

import com.jabh.dao.SellerDAO;

public class SellerManager {
	public Map<Integer, String> getPackageIDsList() throws Exception{
		try{
			return new SellerDAO().getPackageIDsList();
		}
		catch(Exception e){
			throw e;
		}
	}
}
