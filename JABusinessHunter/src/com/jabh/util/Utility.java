package com.jabh.util;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.utils.logging.Logger;

public class Utility {
	private static List<String> stringList;
	private static Map<String,String> stringMap;
	private static final String CLASS_NAME = Utility.class.getName();
	private static Properties countriesPropery = (Properties) new ClassPathXmlApplicationContext("dispatcher-servlet.xml").getBean("lookupProperties");
	//private static Properties appPropery = (Properties) new ClassPathXmlApplicationContext("dispatcher-servlet.xml").getBean("appProperties");
	
	public static String getStates(String country) throws Exception{
		try{
			Logger.logStatus(CLASS_NAME,"Entering into getStates","debug");
			String states=PropertyReader.getMapStatesCities().get(country);
			Logger.logStatus(CLASS_NAME,"Exiting getStates","debug");
			return states;
			
		}
		catch(Exception e){
			Logger.logStatus(CLASS_NAME,"Exception in getStates : "+e.getMessage(), "error");
			throw e;
		}
	}
	
	public static String getOptionValuesCat(String category) throws Exception{
		try{
			Logger.logStatus(CLASS_NAME,"Entering into getOptionValuesCat","debug");
			String categories=(String) countriesPropery.get(category);
			Logger.logStatus(CLASS_NAME,"Exiting getOptionValuesCat","debug");
			return categories;
			
		}
		catch(Exception e){
			Logger.logStatus(CLASS_NAME,"Exception in getOptionValuesCat : "+e.getMessage(), "error");
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
	
	public static Map<String,String>  getMapFromString(String stringValue) throws Exception{
		stringMap= new HashMap<String, String>();
		try{
			String[] valueSplit=stringValue.split(",");
			for(String string : valueSplit){
				stringMap.put(string,string);
			}
			return stringMap;
		}
		catch(Exception e){
			throw e;
		}
	}
	
/*	public static byte[] getEncryptedString(String value) throws Exception{
		try{
			KeyFactory keyFactory = KeyFactory.getInstance("RSA");  
			Cipher cfEncrypt = Cipher.getInstance("RSA/ECB/NoPadding"); 

			//Reading the Public key from file
			//FileInputStream pubKeyStream = new FileInputStream("http:///chnshl250876d:8080//Keys//RSA_public.txt");
			
			//InputStream pubKeyStreamNew = new URL("D:\\J&A Business Hunter\\JABusinessHunter\\JABusinessHunter\\src\\RSA_public.txt").openStream();
			InputStream pubKeyStreamNew = new FileInputStream(new File((String) appPropery.get("RSA_Public")));
			byte[] pubKeyBytes = new byte[pubKeyStreamNew.available()];
			pubKeyStreamNew.read(pubKeyBytes);  
			pubKeyStreamNew.close();  
			X509EncodedKeySpec pubKeySpec = new X509EncodedKeySpec(pubKeyBytes);  
			PublicKey pubKey = keyFactory.generatePublic(pubKeySpec); 

			//Encrytping the dealer code and mechId
			cfEncrypt.init(Cipher.ENCRYPT_MODE, pubKey);
			byte[] encryptedValue =  cfEncrypt.doFinal(value.getBytes()); 
			//return new String(encryptedValue).trim();
			return encryptedValue;
		}
		catch(Exception e){
			throw e;
		}
	}
	
	public static String getDecryptValue(String encryptValue) throws Exception{
		try{
			KeyFactory keyFactory = KeyFactory.getInstance("RSA");  
			Cipher cfDecrypt = Cipher.getInstance("RSA/ECB/NoPadding");  
			
			InputStream priKeyStream = new FileInputStream(new File((String) appPropery.get("RSA_Private")));
			//FileInputStream priKeyStream = new FileInputStream("http:///chnshl250876d:8080//Keys//RSA_private.txt");  
			byte[] priKeyBytes = new byte[65537];  
			priKeyStream.read(priKeyBytes);  
			priKeyStream.close();  
			PKCS8EncodedKeySpec priKeySpec = new PKCS8EncodedKeySpec(priKeyBytes);  
			PrivateKey priKey = keyFactory.generatePrivate(priKeySpec);  
			//Decrypting the input
			cfDecrypt.init(Cipher.DECRYPT_MODE, priKey); 
			byte[] decryptedValue = cfDecrypt.doFinal(encryptValue.getBytes()); 
			//return new String(decryptedValue).trim();
			return new String(decryptedValue).trim();

		}
		catch(Exception e){
			throw e;
		}
	}
	
	public static void main(String[] args) {
		try{
			String b="[B@6021df29";
			System.out.println(getEncryptedString("ramesh.kv1989"));
			System.out.println(getDecryptValue(new String("[B@6021df29").trim()));
			//System.out.println(getDecryptValue(getEncryptedString("ramesh.kv1989")));
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}*/
}
