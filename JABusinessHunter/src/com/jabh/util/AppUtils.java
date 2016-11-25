package com.jabh.util;

import javax.sql.DataSource;

import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jdbc.core.JdbcTemplate;

import com.utils.logging.Logger;

public class AppUtils {
	private static final String CLASS_NAME = AppUtils.class.getName();
	private static JdbcTemplate template;
	/**
	 * applicationContext
	 */
	static ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("dispatcher-servlet.xml");
	public static JdbcTemplate getAppTemplate() {
		Logger.logStatus(CLASS_NAME,"Entering into getAppTemplate","debug");
		if (template == null) {
			template = new JdbcTemplate((DataSource) context.getBean("appJdbc"));
		}
		Logger.logStatus(CLASS_NAME,"Exiting getAppTemplate","debug");
		return template;
	}	
}
