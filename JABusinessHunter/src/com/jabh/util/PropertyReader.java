package com.jabh.util;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServlet;

import com.jabh.dao.UtilsDAO;
import com.utils.logging.Logger;


public class PropertyReader extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = -2923356165943158117L;
	private static final String CLASS_NAME = UtilsDAO.class.getName();
	private static Map<String,String> mapStatesCities = new HashMap<String, String>();
	
	
	public static Map<String, String> getMapStatesCities() {
		return mapStatesCities;
	}
	public static void setMapStatesCities(Map<String, String> mapStatesCities) {
		PropertyReader.mapStatesCities = mapStatesCities;
	}
	public void init()
    {
		try{
			Logger.logStatus(CLASS_NAME,"Entering into PropertyReader","debug");
			Logger.logStatus(CLASS_NAME,"Loading from DB","debug");
			Map<String,String> mapStates = UtilsDAO.getStates();
			Map<String,String> mapCities = UtilsDAO.getCities();
			mapStatesCities.putAll(mapStates);
			mapStatesCities.putAll(mapCities);
			Logger.logStatus(CLASS_NAME,"Succesfully Loaded from DB","debug");
		}
		catch(Exception e){
			e.printStackTrace();
			Logger.logStatus(CLASS_NAME,"Exception while loading State and Cities from DB : "+e.getMessage(), "error");
		}
    }
	public void getData(){
		try{
			Logger.logStatus(CLASS_NAME,"Entering into PropertyReader","debug");
			Logger.logStatus(CLASS_NAME,"Loading from DB","debug");
			//UtilsDAO utilsDAO= (UtilsDAO) new ClassPathXmlApplicationContext("dispatcher-servlet.xml").getBean("utilsDAO");
			Map<String,String> mapStates = UtilsDAO.getStates();
			Map<String,String> mapCities = UtilsDAO.getCities();
			System.out.println(mapStates.size());
			System.out.println(mapCities.size());
			Logger.logStatus(CLASS_NAME,"Succesfully Loaded from DB","debug");
		}
		catch(Exception e){
			e.printStackTrace();
			Logger.logStatus(CLASS_NAME,"Exception while loading State and Cities from DB : "+e.getMessage(), "error");
		}
	}
	
	/*public static void main(String[] args) {
		try{
			new PropertyReader().getData();
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}*/
}
