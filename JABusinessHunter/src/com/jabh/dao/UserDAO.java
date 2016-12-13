package com.jabh.dao;

import java.math.BigInteger;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.Format;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.jabh.mail.SendMailSSL;
import com.jabh.model.ChangePassword;
import com.jabh.model.Login;
import com.jabh.model.SignUp;
import com.jabh.util.AppUtils;
import com.utils.logging.Logger;

public class UserDAO {
	private static final String CLASS_NAME = UserDAO.class.getName();
	private static JdbcTemplate template = AppUtils.getAppTemplate();

	public SignUp getLoginDetails(Login login) throws Exception{
		try{
			Logger.logStatus(CLASS_NAME,"Entering into getLoginDetails","debug");
			String query =  "SELECT * FROM user where userName=? and password=?";
			SignUp signUp = (SignUp)template.queryForObject(query, new Object[]{login.getUsername(),login.getPassword()}, new RowMapper<Object>(){
				public Object mapRow(ResultSet resultSet, int arg1)throws SQLException {
					SignUp signUp = new SignUp();
					signUp.setUserID(BigInteger.valueOf(resultSet.getInt("UserID")));
					signUp.setUserName((String)resultSet.getString("userName"));
					signUp.setPassword((String)resultSet.getString("password"));
					signUp.setTitle((String)resultSet.getString("title"));
					signUp.setName((String)resultSet.getString("name"));
					signUp.setStatus((int)resultSet.getInt("status"));
					signUp.setRole((int)resultSet.getInt("role"));
					signUp.setEmail((String)resultSet.getString("email"));
					signUp.setCity((String)resultSet.getString("city"));
					signUp.setState((String)resultSet.getString("state"));
					signUp.setCountry((String)resultSet.getString("country"));
					signUp.setMobile((String)resultSet.getString("mobile"));
					signUp.setAbout((String)resultSet.getString("about"));
					return signUp;
				}
			});
			return signUp;
		}
		catch(EmptyResultDataAccessException e){
			Logger.logStatus(CLASS_NAME,"Invalid Credentials for userName : "+login.getUsername()+" and password="+login.getPassword() , "error");
			return null;
		}
		catch (Exception e) {
			Logger.logStatus(CLASS_NAME,"Exception in getLoginDetails : "+e.getMessage(), "error");
			throw e;
		} 
	}

	public SignUp getPersonalDetails(String userName) throws Exception {
		try{
			Logger.logStatus(CLASS_NAME,"Entering into getPersonalDetails","debug");
			String query =  "SELECT * FROM user where userName=?";
			SignUp signUp = (SignUp)template.queryForObject(query, new Object[]{userName}, new RowMapper<Object>(){
				public Object mapRow(ResultSet resultSet, int arg1)throws SQLException {
					SignUp signUp = new SignUp();
					signUp.setUserID(BigInteger.valueOf(resultSet.getInt("UserID")));
					signUp.setUserName((String)resultSet.getString("userName"));
					signUp.setPassword((String)resultSet.getString("password"));
					signUp.setTitle((String)resultSet.getString("title"));
					signUp.setName((String)resultSet.getString("name"));
					signUp.setStatus((int)resultSet.getInt("status"));
					signUp.setRole((int)resultSet.getInt("role"));
					signUp.setEmail((String)resultSet.getString("email"));
					signUp.setCity((String)resultSet.getString("city"));
					signUp.setState((String)resultSet.getString("state"));
					signUp.setCountry((String)resultSet.getString("country"));
					signUp.setMobile((String)resultSet.getString("mobile"));
					signUp.setAbout((String)resultSet.getString("about"));
					return signUp;
				}
			});
			return signUp;
		}
		catch(EmptyResultDataAccessException e){
			Logger.logStatus(CLASS_NAME,"Invalid UserName : "+userName , "error");
			return null;
		}
		catch (Exception e) {
			Logger.logStatus(CLASS_NAME,"Exception in getLoginDetails : "+e.getMessage(), "error");
			throw e;
		} 
	}
	
	public Integer getLastUserID() throws Exception{
		try{
			Logger.logStatus(CLASS_NAME,"Entering into getLastUserID","debug");
			String query =  "SELECT MAX(userID) FROM user;";
			Integer maxValue = template.queryForObject(query, Integer.class);
			Logger.logStatus(CLASS_NAME,"Exiting signUpUser","debug");
			return maxValue;
		}
		catch (Exception e) {
			Logger.logStatus(CLASS_NAME,"Exception in getLastUserID : "+e.getMessage(), "error");
			throw e;
		} 
	}

	public boolean signUpUser(SignUp signUp) throws Exception{
		try{
			Logger.logStatus(CLASS_NAME,"Entering into signUpUser","debug");
			String query =  "INSERT into user(userID,userName,password,title,name,status,role,email,city,state,country,mobile,about,createdDate,suspendedDate,deletedDate,suspendedReason,deletedReason) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);";
			Calendar date = Calendar.getInstance();
			date.setTime(new Date());
			Format f = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			String createdDate = f.format(date.getTime());
			int updateCount = template.update(query,new Object[]{getLastUserID()+1,signUp.getEmail(),signUp.getPassword(),
					signUp.getTitle(),signUp.getName(),0,2,signUp.getEmail(),signUp.getCity(),signUp.getState(),signUp.getCountry(),
					signUp.getMobile(),signUp.getAbout(),createdDate,"","","",""});	
			Logger.logStatus(CLASS_NAME,"SignUp Update Count : "+updateCount,"debug");
			if(updateCount==0){
				Logger.logStatus(CLASS_NAME,"Unable to sign up User", "error");
				Logger.logStatus(CLASS_NAME,"Exiting signUpUser","debug");
				return false;
			}
			boolean sendEMailStatus = SendMailSSL.sendMail(signUp);
			if(!sendEMailStatus){
				Logger.logStatus(CLASS_NAME,"Unable to send mail to User : "+signUp.getEmail(),"debug");
			}
			Logger.logStatus(CLASS_NAME,"Exiting signUpUser","debug");
			return true;
		}
		catch (Exception e) {
			Logger.logStatus(CLASS_NAME,"Exception in signUpUser : "+e.getMessage(), "error");
			throw e;
		} 
	}

	public int deleteSignUpUser(String email) throws Exception{
		try{
			Logger.logStatus(CLASS_NAME,"Entering into deleteSignUpUser","debug");
			String query =  "DELETE FROM user where userName=?;";
			int deleteCount = template.update(query,new Object[]{email});	
			Logger.logStatus(CLASS_NAME,"Exiting deleteSignUpUser","debug");
			return deleteCount;
		}
		catch (Exception e) {
			Logger.logStatus(CLASS_NAME,"Exception in deleteSignUpUser : "+e.getMessage(), "error");
			throw e;
		} 
	}

	public int activateAccount(String email) throws Exception{
		try{
			Logger.logStatus(CLASS_NAME,"Entering into activateAccount","debug");
			String query =  "UPDATE user set status=1 where userName=?;";
			int activateCount = template.update(query,new Object[]{email});	
			Logger.logStatus(CLASS_NAME,"Exiting activateAccount","debug");
			return activateCount;
		}
		catch (Exception e) {
			Logger.logStatus(CLASS_NAME,"Exception in activateAccount : "+e.getMessage(), "error");
			throw e;
		} 
	}

	public boolean updateUser(SignUp accountInfo) throws Exception{
		try{
			Logger.logStatus(CLASS_NAME,"Entering into updateUser","debug");
			String query =  "UPDATE user set title=?,name=?,city=?,state=?,country=?,mobile=? where userName=?;";
			template.update(query,new Object[]{accountInfo.getTitle(),accountInfo.getName(),accountInfo.getCity(),accountInfo.getState(),accountInfo.getCountry(),accountInfo.getMobile(),accountInfo.getUserName()});	
			Logger.logStatus(CLASS_NAME,"Exiting updateUser","debug");
			return true;
		}
		catch (Exception e) {
			Logger.logStatus(CLASS_NAME,"Exception in updateUser : "+e.getMessage(), "error");
			throw e;
		} 
	}
	
	public boolean validateUser(String userName) throws Exception{
		try{
			Logger.logStatus(CLASS_NAME,"Entering into validateUser","debug");
			String query =  "SELECT status FROM user where userName=?;";
			int status = (int)template.queryForObject(query,new Object[]{userName}, Integer.class);	
			if(status!=1){
				Logger.logStatus(CLASS_NAME,"Invalid User Status : "+status , "error");
				return false;
			}
			Logger.logStatus(CLASS_NAME,"Exiting validateUser","debug");
			return true;
		}
		catch(EmptyResultDataAccessException e){
			Logger.logStatus(CLASS_NAME,"validateUser, Invalid UserName : "+userName , "error");
			Logger.logStatus(CLASS_NAME,"Exiting validateUser","debug");
			return false;
		}
		catch (Exception e) {
			Logger.logStatus(CLASS_NAME,"Exception in validateUser : "+e.getMessage(), "error");
			Logger.logStatus(CLASS_NAME,"Exiting validateUser","debug");
			throw e;
		} 
	}

	public boolean resetUser(ChangePassword resetPassword) throws Exception{
		try{
			Logger.logStatus(CLASS_NAME,"Entering into resetUser","debug");
			String query =  "UPDATE user set password=? where userName=?;";
			template.update(query,new Object[]{resetPassword.getNewPassword(),resetPassword.getUsername()});	
			Logger.logStatus(CLASS_NAME,"Exiting resetUser","debug");
			return true;
		}
		catch (Exception e) {
			Logger.logStatus(CLASS_NAME,"Exception in resetUser : "+e.getMessage(), "error");
			throw e;
		} 
	}

	
}
