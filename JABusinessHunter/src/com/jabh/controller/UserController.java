package com.jabh.controller;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jabh.manager.AccountManager;
import com.jabh.model.SignUp;
import com.utils.logging.Logger;

@Controller
public class UserController {
	private static final String CLASS_NAME = UserController.class.getName();
	@RequestMapping(value={"/modifyAccount.do"}, method={RequestMethod.POST})
	public String ModifyAccount(@Valid @ModelAttribute("accountInfo")SignUp accountInfo,BindingResult result,ModelMap map,HttpServletRequest request){
		try{
			Logger.logStatus(CLASS_NAME,"Entering into POST ModifyAccount","debug");
			String userName = (String)request.getSession().getAttribute("userName");
			if(userName != null){
				if(accountInfo==null || accountInfo.getTitle()==null || accountInfo.getName()==null || accountInfo.getCity()==null
						|| accountInfo.getState()==null || accountInfo.getCountry()==null || accountInfo.getMobile()==null){
					result.rejectValue("name", "error.Empty", "Values Should not be Empty");
					Logger.logStatus(CLASS_NAME,"Empty Values","debug");
					Logger.logStatus(CLASS_NAME,"Exiting POST SignUpSubmit","debug");
					return "./jsp/myAccount.jsp";
				}

				if(!accountInfo.getEmail().equalsIgnoreCase(accountInfo.getEmail())){
					result.rejectValue("name", "error.Empty", "Invalid Details");
					Logger.logStatus(CLASS_NAME,"EMailID and userName doesn't match","debug");
					Logger.logStatus(CLASS_NAME,"Exiting POST ModifyAccount","debug");
					return "./jsp/myAccount.jsp";
				}
				accountInfo.setUserName(userName);
				//result.rejectValue("title", "error.Empty", "Updated details");
				if(accountInfo.getCity().equalsIgnoreCase("Others")){
					accountInfo.setCity(accountInfo.getCityText());
				}
				boolean updateStatus = new AccountManager().updateUser(accountInfo);
				if(updateStatus){
					Logger.logStatus(CLASS_NAME,"Details updated","debug");
					accountInfo.setMessage("Details Updated.");
					Logger.logStatus(CLASS_NAME,"Exiting POST ModifyAccount","debug");
					return "./jsp/updateUserSuccess.jsp";	
				}
				else{
					Logger.logStatus(CLASS_NAME,"Unable to Update","debug");
					result.rejectValue("name", "error.Empty", "Please try again");
					Logger.logStatus(CLASS_NAME,"Exiting POST ModifyAccount","debug");
					return "./jsp/myAccount.jsp";
				}
			}
			else{
				Logger.logStatus(CLASS_NAME,"userName not available, redirecting to index page", "error");
				return "/login.do";
			}

		}
		catch(Exception e){
			Logger.logStatus(CLASS_NAME,"Exception in POST ModifyAccount : "+e.fillInStackTrace(), "error");
			//Logger.logStatus(CLASS_NAME,"Empty Values","debug");
			//	result.rejectValue("name", "error.Empty", "Please try Again");
			return "/login.do";
		}
	}
}
