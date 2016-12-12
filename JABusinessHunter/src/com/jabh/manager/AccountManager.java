package com.jabh.manager;

import com.jabh.dao.UserDAO;
import com.jabh.model.Login;
import com.jabh.model.SignUp;
import com.utils.logging.Logger;

public class AccountManager {
	private static final String CLASS_NAME = AccountManager.class.getName();
	private static UserDAO userDAO = new UserDAO();
	public SignUp getLoginDetails(Login login) throws Exception{
		try{
			Logger.logStatus(CLASS_NAME,"Entering into getLoginDetails","debug");
			SignUp signup = userDAO.getLoginDetails(login);
			Logger.logStatus(CLASS_NAME,"Exiting from getLoginDetails","debug");
			return signup;
		}
		catch(Exception e){
			Logger.logStatus(CLASS_NAME,"Exception in getLoginDetails : "+e.getMessage(), "error");
			throw e;
		}
	}
	public SignUp getPersonalDetails(String userName) throws Exception {
		// TODO Auto-generated method stub
		try{
			Logger.logStatus(CLASS_NAME,"Entering into getPersonalDetails","debug");
			SignUp signup = userDAO.getPersonalDetails(userName);
			Logger.logStatus(CLASS_NAME,"Exiting from getPersonalDetails","debug");
			return signup;
		}
		catch(Exception e){
			Logger.logStatus(CLASS_NAME,"Exception in getPersonalDetails : "+e.getMessage(), "error");
			throw e;
		}
	}
	public boolean signUpUser(SignUp signUp) throws Exception{
		try{
			Logger.logStatus(CLASS_NAME,"Entering into signUpUser","debug");
			boolean signUpStatus = userDAO.signUpUser(signUp);
			Logger.logStatus(CLASS_NAME,"Exiting from signUpUser","debug");
			return signUpStatus;
		}
		catch(Exception e){
			Logger.logStatus(CLASS_NAME,"Exception in signUpUser : "+e.getMessage(), "error");
			throw e;
		}
	}
	public int deleteSignUpUser(String email) throws Exception{
		try{
			Logger.logStatus(CLASS_NAME,"Entering into deleteSignUpUser","debug");
			int deleteStatus = userDAO.deleteSignUpUser(email);
			Logger.logStatus(CLASS_NAME,"Exiting from deleteSignUpUser","debug");
			return deleteStatus;
		}
		catch(Exception e){
			Logger.logStatus(CLASS_NAME,"Exception in deleteSignUpUser : "+e.getMessage(), "error");
			throw e;
		}
	}
	public int activateAccount(String email) throws Exception {
		try{
			Logger.logStatus(CLASS_NAME,"Entering into activateAccount","debug");
			int activateStatus = userDAO.activateAccount(email);
			Logger.logStatus(CLASS_NAME,"Exiting from activateAccount","debug");
			return activateStatus;
		}
		catch(Exception e){
			Logger.logStatus(CLASS_NAME,"Exception in activateAccount : "+e.getMessage(), "error");
			throw e;
		}
	}
	public boolean updateUser(SignUp accountInfo) throws Exception {
		try{
			Logger.logStatus(CLASS_NAME,"Entering into updateUser","debug");
			boolean updateStatus = userDAO.updateUser(accountInfo);
			Logger.logStatus(CLASS_NAME,"Exiting from updateUser","debug");
			return updateStatus;
		}
		catch(Exception e){
			Logger.logStatus(CLASS_NAME,"Exception in updateUser : "+e.getMessage(), "error");
			throw e;
		}
	}
	
	
}
