package com.jabh.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;

import com.jabh.model.Plans;
import com.jabh.util.AppUtils;
import com.utils.logging.Logger;

public class SellerDAO {
	private static final String CLASS_NAME = UserDAO.class.getName();
	private static JdbcTemplate template = AppUtils.getAppTemplate();

	public List<Plans> getPlans() throws Exception{
		try{
			Logger.logStatus(CLASS_NAME,"Entering into getPlans","debug");
			String query =  "SELECT a.Duration AS Duration,a.Totalcost AS StandardTotalCost,a.Costofday AS StandardCostofDay,b.Totalcost AS FeaturedTotalCost,b.Costofday AS FeaturedCostofDay FROM (SELECT CONCAT(Duration,' ',DurationType) AS Duration,Totalcost,Costofday FROM plan WHERE PlanType=1 ORDER BY Duration ASC) a, (SELECT CONCAT(Duration,' ',DurationType) AS Duration,Totalcost,Costofday FROM plan WHERE PlanType=2 ORDER BY Duration ASC) b WHERE a.Duration=b.Duration;";
			List<Map<String, Object>> plansData = new ArrayList<Map<String, Object>>();
			plansData = template.queryForList(query, new Object[] {});
			List<Plans> plans = new ArrayList<Plans>();
			Plans plan;
			for (Map<String, Object> map : plansData) {
				plan = new Plans();
				plan.setDuration((String)map.get("Duration"));
				plan.setStandardTotalCost((Float)map.get("StandardTotalCost"));
				plan.setStandardCostofDay((Float)map.get("StandardCostofDay"));
				plan.setFeaturedTotalCost((Float)map.get("FeaturedTotalCost"));
				plan.setFeaturedCostofDay((Float)map.get("FeaturedCostofDay"));
				plans.add(plan);
			}
			Logger.logStatus(CLASS_NAME,"Exiting getPlans","debug");
			return plans;
		}
		catch(EmptyResultDataAccessException e){
			Logger.logStatus(CLASS_NAME,"No Plans Available" , "error");
			return null;
		}
		catch (Exception e) {
			Logger.logStatus(CLASS_NAME,"Exception in getPlans : "+e.getMessage(), "error");
			throw e;
		} 
	}

	public Map<Integer, String> getPlanIds() throws Exception{
		try{
			Logger.logStatus(CLASS_NAME,"Entering into getPlanIds","debug");
			String query =  "SELECT PlanID,Description FROM plan;";
			List<Map<String, Object>> plansData = new ArrayList<Map<String, Object>>();
			plansData = template.queryForList(query, new Object[] {});
			Map<Integer, String> plans = new HashMap<Integer, String>();
			for (Map<String, Object> map : plansData) {
				plans.put((Integer)map.get("PlanID"), (String)map.get("Description"));
			}
			Logger.logStatus(CLASS_NAME,"Exiting getPlanIds","debug");
			return plans;
		}
		catch(EmptyResultDataAccessException e){
			Logger.logStatus(CLASS_NAME,"No Plans Available" , "error");
			return null;
		}
		catch (Exception e) {
			Logger.logStatus(CLASS_NAME,"Exception in getPlanIds : "+e.getMessage(), "error");
			throw e;
		} 
	}
}
