package com.jabh.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;

import com.jabh.util.AppUtils;
import com.utils.logging.Logger;

public class UtilsDAO {
	private static final String CLASS_NAME = UtilsDAO.class.getName();
	private static JdbcTemplate template = AppUtils.getAppTemplate();
	
	public static Map<String,String> getStates() throws Exception {

		try{		
			Logger.logStatus(CLASS_NAME,"Entering into getStates","debug");
			String query =  "SELECT Country,States FROM states";
			Map<String,String> mapStates= template.query(query, new ResultSetExtractor<Map<String,String>>(){
			    public Map<String,String> extractData(ResultSet rs) throws SQLException,DataAccessException {
			        Map<String,String> mapRet= new HashMap<String,String>();
			        while(rs.next()){
			            mapRet.put(rs.getString("Country"),rs.getString("States"));
			        }
			        return mapRet;
			    }
			});
			Logger.logStatus(CLASS_NAME,"Exiting getStates","debug");
			return mapStates;

		}
		catch (Exception e) {
			Logger.logStatus(CLASS_NAME,"Exception in getStates : "+e.getMessage(), "error");
			throw e;
		} 
	}
	
	public static Map<String,String> getCities() throws Exception {

		try{		
			Logger.logStatus(CLASS_NAME,"Entering into getCities","debug");
			String query =  "SELECT State,Cities FROM cities";
			Map<String,String> mapCities= template.query(query, new ResultSetExtractor<Map<String,String>>(){
			    public Map<String,String> extractData(ResultSet rs) throws SQLException,DataAccessException {
			        Map<String,String> mapRet= new HashMap<String,String>();
			        while(rs.next()){
			            mapRet.put(rs.getString("State"),rs.getString("Cities"));
			        }
			        return mapRet;
			    }
			});
			Logger.logStatus(CLASS_NAME,"Exiting getCities","debug");
			return mapCities;

		}
		catch (Exception e) {
			Logger.logStatus(CLASS_NAME,"Exception in getCities : "+e.getMessage(), "error");
			throw e;
		} 
	}
}
