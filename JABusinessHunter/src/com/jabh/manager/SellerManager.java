package com.jabh.manager;

import java.util.List;
import java.util.Map;

import com.jabh.dao.SellerDAO;
import com.jabh.model.Plans;

public class SellerManager {
	public List<Plans> getPlans() throws Exception{
		try{
			return new SellerDAO().getPlans();
		}
		catch(Exception e){
			throw e;
		}
	}

	public Map<Integer, String> getPlanIds() throws Exception{
		// TODO Auto-generated method stub
		return new SellerDAO().getPlanIds();
	}
}
