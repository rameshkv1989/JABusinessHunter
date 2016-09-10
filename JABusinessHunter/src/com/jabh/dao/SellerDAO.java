package com.jabh.dao;

import java.util.HashMap;
import java.util.Map;

public class SellerDAO {

	public Map<Integer, String> getPackageIDsList() throws Exception{
		try{
			Map<Integer, String> packageIdList = new HashMap<Integer, String>();
			packageIdList.put(1,"30 Days Standard Posting");
			packageIdList.put(2,"90 Days Standard Posting");
			packageIdList.put(3,"180 Days Standard Posting");
			packageIdList.put(4,"12 months Standard Posting");
			packageIdList.put(5,"30 Days Featured Posting");
			packageIdList.put(6,"90 Days Featured Posting");
			packageIdList.put(7,"180 Days Featured Posting");
			packageIdList.put(8,"12 months Featured Posting");
			return packageIdList;
		}
		catch(Exception e){
			throw e;
		}
	}
}
