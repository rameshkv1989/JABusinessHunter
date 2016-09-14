package com.jabh.util;

import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.utils.logging.Logger;

public class Utility {
	private static List<String> stringList;
	private static final String CLASS_NAME = Utility.class.getName();
	private static Properties countriesPropery = (Properties) new ClassPathXmlApplicationContext("dispatcher-servlet.xml").getBean("properties");
	
	public static String getStates(String country) throws Exception{
		try{
			Logger.logStatus(CLASS_NAME,"Entering into getStates","debug");
			String states=countriesPropery.getProperty(country);
			Logger.logStatus(CLASS_NAME,"Exiting getStates","debug");
			return states;
			
		}
		catch(Exception e){
			Logger.logStatus(CLASS_NAME,"Exception in getStates : "+e.getMessage(), "error");
			throw e;
		}
	}
	
	public static List<String> getListFromString(String stringValue) throws Exception{
		stringList= new ArrayList<String>();
		try{
			String[] valueSplit=stringValue.split(",");
			for(String string : valueSplit){
				stringList.add(string);
			}
			return stringList;
		}
		catch(Exception e){
			throw e;
		}
	}
}
