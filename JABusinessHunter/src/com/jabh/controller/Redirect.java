package com.jabh.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jabh.manager.AccountManager;
import com.jabh.manager.SellerManager;
import com.jabh.model.Buyer;
import com.jabh.model.ChangePassword;
import com.jabh.model.Franchise;
import com.jabh.model.Login;
import com.jabh.model.Seller;
import com.jabh.model.ServiceProvider;
import com.jabh.model.SignUp;
import com.jabh.util.Utility;
import com.utils.logging.Logger;

@Controller
public class Redirect {

	private static final String CLASS_NAME = Redirect.class.getName();
	
	public String subPackage=null;

	@RequestMapping(value={"/home.do"}, method={RequestMethod.GET})
	public String HomeRedirect(ModelMap map, HttpServletRequest request){
		try{
			Logger.logStatus(CLASS_NAME,"Entering into GET HomeRedirect","debug");
			Logger.logStatus(CLASS_NAME,"Exiting GET HomeRedirect","debug");
			return "./jsp/index.jsp";

		}
		catch(Exception e){
			Logger.logStatus(CLASS_NAME,"Exception in GET HomeRedirect : "+e.getMessage(), "error");
			request.setAttribute("errorMessage", e.getMessage());
			return "./jsp/error.jsp";
		}
	}
	
	@RequestMapping(value={"/activate.do"}, method={RequestMethod.GET})
	public String ActivateRedirect(ModelMap map, HttpServletRequest request){
		try{
			Login login = new Login();
			
			Logger.logStatus(CLASS_NAME,"Entering into GET ActivateRedirect","debug");
			String email=(String)request.getParameter("email");
			if(email == null || email.trim().isEmpty()){
				Logger.logStatus(CLASS_NAME,"Empty Email","debug");
				login.setMessage("Invalid account.");
				map.addAttribute("login",login);
				Logger.logStatus(CLASS_NAME,"Exiting GET ActivateRedirect","debug");
				return "./jsp/activationError.jsp";
			}
			Logger.logStatus(CLASS_NAME,"Activation Email : "+email,"debug");
			SignUp checkExistingUser = new AccountManager().getPersonalDetails(email);
			Logger.logStatus(CLASS_NAME,"checkExistingUser : "+checkExistingUser,"debug");
			if(checkExistingUser==null){
				Logger.logStatus(CLASS_NAME,"Invalid Email : "+email,"debug");
				login.setMessage("Invalid account.");
				map.addAttribute("login",login);
				Logger.logStatus(CLASS_NAME,"Exiting GET ActivateRedirect","debug");
				return "./jsp/activationError.jsp";
			}
			if(checkExistingUser.getStatus()!=0){
				Logger.logStatus(CLASS_NAME,"Invalid Email to Activate : "+email+", Account status : "+checkExistingUser.getStatus(),"debug");
				login.setMessage("Invalid account.");
				map.addAttribute("login",login);
				Logger.logStatus(CLASS_NAME,"Exiting GET ActivateRedirect","debug");
				return "./jsp/activationError.jsp";
			}
			int activateAccount = new AccountManager().activateAccount(email);
			if(activateAccount==0){
				Logger.logStatus(CLASS_NAME,"Unable to Activate Account : "+email,"debug");
				login.setMessage("Unable to activate account, please try again.");
				map.addAttribute("login",login);
				Logger.logStatus(CLASS_NAME,"Exiting GET ActivateRedirect","debug");
				return "./jsp/activationError.jsp";
			}
			Logger.logStatus(CLASS_NAME,"Activation Succesfull, Email : "+email,"debug");
			login.setMessage("Activation Succesfull!!! Please login.");
			map.addAttribute("login",login);
			Logger.logStatus(CLASS_NAME,"Exiting GET ActivateRedirect","debug");
			return "./jsp/activationSuccess.jsp";

		}
		catch(Exception e){
			Logger.logStatus(CLASS_NAME,"Unable to Activate Account : "+request.getParameter("email"),"debug");
			Login login = new Login();
			login.setMessage("Unable to activate account, please try again.");
			map.addAttribute("login",login);
			Logger.logStatus(CLASS_NAME,"Exception in GET ActivateRedirect : "+e.getMessage(), "error");
			return "./jsp/activationError.jsp";
		}
	}
	
	@RequestMapping(value={"/resetPassword.do"}, method={RequestMethod.GET})
	public String ResetPasswordRedirect(ModelMap map, HttpServletRequest request){
		try{
			ChangePassword resetPassword = new ChangePassword();
			Logger.logStatus(CLASS_NAME,"Entering into GET ResetPasswordRedirect","debug");
			String email=(String)request.getParameter("email");
			if(email == null || email.trim().isEmpty()){
				Logger.logStatus(CLASS_NAME,"Empty Email","debug");
				resetPassword.setMessage("Invalid account.");
				map.addAttribute("resetPassword",resetPassword);
				Logger.logStatus(CLASS_NAME,"Exiting GET ResetPasswordRedirect","debug");
				return "./jsp/resetError.jsp";
			}
			Logger.logStatus(CLASS_NAME,"Reset Email : "+email,"debug");
			SignUp checkExistingUser = new AccountManager().getPersonalDetails(email);
			Logger.logStatus(CLASS_NAME,"checkExistingUser : "+checkExistingUser,"debug");
			if(checkExistingUser==null){
				Logger.logStatus(CLASS_NAME,"Invalid Email : "+email,"debug");
				resetPassword.setMessage("Invalid account.");
				map.addAttribute("resetPassword",resetPassword);
				Logger.logStatus(CLASS_NAME,"Exiting GET ResetPasswordRedirect","debug");
				return "./jsp/resetError.jsp";
			}
			if(checkExistingUser.getStatus()== 0){
				Logger.logStatus(CLASS_NAME,"Invalid Email to Reset : "+email+", Account status : "+checkExistingUser.getStatus(),"debug");
				resetPassword.setMessage("Please activate the account, activation email already sent to your email id.");
				map.addAttribute("resetPassword",resetPassword);
				Logger.logStatus(CLASS_NAME,"Exiting GET ResetPasswordRedirect","debug");
				return "./jsp/resetError.jsp";
			}
			else if(checkExistingUser.getStatus()== 2){
				Logger.logStatus(CLASS_NAME,"Invalid Email to Reset : "+email+", Account status : "+checkExistingUser.getStatus(),"debug");
				resetPassword.setMessage("Account suspended, please contact admin.");
				map.addAttribute("resetPassword",resetPassword);
				Logger.logStatus(CLASS_NAME,"Exiting GET ResetPasswordRedirect","debug");
				return "./jsp/resetError.jsp";
			}
			else if (checkExistingUser.getStatus()== 1){
				Logger.logStatus(CLASS_NAME,"Valid account to reset, Email : "+email,"debug");
				ChangePassword resetPasswordNew = new ChangePassword();
				resetPasswordNew.setUsername(checkExistingUser.getUserName());
				System.out.println(checkExistingUser.getUserName());
				map.addAttribute("resetPassword",resetPasswordNew);
				Logger.logStatus(CLASS_NAME,"Exiting GET ResetPasswordRedirect","debug");
				return "./jsp/resetPassword.jsp";
			}
			else{
				Logger.logStatus(CLASS_NAME,"Invalid Email to Reset : "+email+", Account status : "+checkExistingUser.getStatus(),"debug");
				resetPassword.setMessage("Invalid Account.");
				map.addAttribute("resetPassword",resetPassword);
				Logger.logStatus(CLASS_NAME,"Exiting GET ResetPasswordRedirect","debug");
				return "./jsp/resetError.jsp";
			}
		}
		catch(Exception e){
			Logger.logStatus(CLASS_NAME,"Unable to reset Account : "+request.getParameter("email"),"debug");
			ChangePassword resetPassword = new ChangePassword();
			resetPassword.setMessage("Unable to reset password, please try again.");
			map.addAttribute("resetPassword",resetPassword);
			Logger.logStatus(CLASS_NAME,"Exception in GET ResetPasswordRedirect : "+e.getMessage(), "error");
			return "./jsp/resetError.jsp";
		}
	}
	
	

	@RequestMapping(value={"/aboutus.do"}, method={RequestMethod.GET})
	public String AboutUsRedirect(ModelMap map, HttpServletRequest request){
		try{
			Logger.logStatus(CLASS_NAME,"Entering into GET AboutUsRedirect","debug");
			Logger.logStatus(CLASS_NAME,"Exiting GET AboutUsRedirect","debug");
			return "./jsp/aboutus.jsp";

		}
		catch(Exception e){
			Logger.logStatus(CLASS_NAME,"Exception in GET AboutUsRedirect : "+e.getMessage(), "error");
			request.setAttribute("errorMessage", e.getMessage());
			return "./jsp/error.jsp";
		}
	}

	@RequestMapping(value={"/services.do"}, method={RequestMethod.GET})
	public String ServicesRedirect(ModelMap map, HttpServletRequest request){
		try{
			Logger.logStatus(CLASS_NAME,"Entering into GET ServicesRedirect","debug");
			Logger.logStatus(CLASS_NAME,"Exiting GET ServicesRedirect","debug");
			return "./jsp/services.jsp";

		}
		catch(Exception e){
			Logger.logStatus(CLASS_NAME,"Exception in GET ServicesRedirect : "+e.getMessage(), "error");
			request.setAttribute("errorMessage", e.getMessage());
			return "./jsp/error.jsp";
		}
	}


	@RequestMapping(value={"/seller.do"}, method={RequestMethod.GET})
	public String SellerRedirect(ModelMap map, HttpServletRequest request){
		try{
			Logger.logStatus(CLASS_NAME,"Entering into GET SellerRedirect","debug");
			String userName = (String) request.getSession().getAttribute("userName");
			if(userName==null || (!(new AccountManager().validateUser(userName)))){
				Logger.logStatus(CLASS_NAME,"User not logged in","debug");
				Login login = new Login();
				login.setMessage("Please Login.");
				map.addAttribute("login",login);
				Logger.logStatus(CLASS_NAME,"Exiting GET SellerRedirect","debug");
				return "./jsp/noLogin.jsp";
			}
			Seller sellerModel = new Seller();
			sellerModel.setPackageIdList(new SellerManager().getPlanIds());
			request.setAttribute("packageList", new SellerManager().getPlans());
			map.addAttribute("sellerModel",sellerModel);
			Logger.logStatus(CLASS_NAME,"Exiting GET SellerRedirect","debug");
			return "./jsp/seller.jsp";

		}
		catch(Exception e){
			Logger.logStatus(CLASS_NAME,"Exception in GET SellerRedirect : "+e.getMessage(), "error");
			request.setAttribute("errorMessage", e.getMessage());
			return "./jsp/error.jsp";
		}
	}

	@RequestMapping(value={"/buyer.do"}, method={RequestMethod.GET})
	public String BuyerRedirect(ModelMap map, HttpServletRequest request){
		try{
			Logger.logStatus(CLASS_NAME,"Entering into GET BuyerRedirect","debug");
			String userName = (String) request.getSession().getAttribute("userName");
			if(userName==null || (!(new AccountManager().validateUser(userName)))){
				Logger.logStatus(CLASS_NAME,"User not logged in","debug");
				Login login = new Login();
				login.setMessage("Please Login.");
				map.addAttribute("login",login);
				Logger.logStatus(CLASS_NAME,"Exiting GET BuyerRedirect","debug");
				return "./jsp/noLogin.jsp";
			}
			Buyer buyerModel = new Buyer();
			map.addAttribute("buyerModel",buyerModel);
			Logger.logStatus(CLASS_NAME,"Exiting GET BuyerRedirect","debug");
			return "./jsp/buyer.jsp";

		}
		catch(Exception e){
			Logger.logStatus(CLASS_NAME,"Exception in GET BuyerRedirect : "+e.getMessage(), "error");
			request.setAttribute("errorMessage", e.getMessage());
			return "./jsp/error.jsp";
		}
	}

	@RequestMapping(value={"/franchise.do"}, method={RequestMethod.GET})
	public String FranchiseRedirect(ModelMap map, HttpServletRequest request){
		try{
			Logger.logStatus(CLASS_NAME,"Entering into GET FranchiseRedirect","debug");
			String userName = (String) request.getSession().getAttribute("userName");
			if(userName==null || (!(new AccountManager().validateUser(userName)))){
				Logger.logStatus(CLASS_NAME,"User not logged in","debug");
				Login login = new Login();
				login.setMessage("Please Login.");
				map.addAttribute("login",login);
				Logger.logStatus(CLASS_NAME,"Exiting GET FranchiseRedirect","debug");
				return "./jsp/noLogin.jsp";
			}
			Franchise franchiseModel = new Franchise();
			franchiseModel.setPackageIdList(new SellerManager().getPlanIds());
			request.setAttribute("packageList", new SellerManager().getPlans());
			map.addAttribute("franchiseModel",franchiseModel);
			Logger.logStatus(CLASS_NAME,"Exiting GET FranchiseRedirect","debug");
			return "./jsp/franchise.jsp";

		}
		catch(Exception e){
			Logger.logStatus(CLASS_NAME,"Exception in GET FranchiseRedirect : "+e.getMessage(), "error");
			request.setAttribute("errorMessage", e.getMessage());
			return "./jsp/error.jsp";
		}
	}

	@RequestMapping(value={"/serviceproviders.do"}, method={RequestMethod.GET})
	public String ServiveProvidersRedirect(ModelMap map, HttpServletRequest request){
		try{
			Logger.logStatus(CLASS_NAME,"Entering into GET ServiveProvidersRedirect","debug");
			String userName = (String) request.getSession().getAttribute("userName");
			if(userName==null || (!(new AccountManager().validateUser(userName)))){
				Logger.logStatus(CLASS_NAME,"User not logged in","debug");
				Login login = new Login();
				login.setMessage("Please Login.");
				map.addAttribute("login",login);
				Logger.logStatus(CLASS_NAME,"Exiting GET ServiveProvidersRedirect","debug");
				return "./jsp/noLogin.jsp";
			}
			ServiceProvider serviceProviderModel = new ServiceProvider();
			serviceProviderModel.setPackageIdList(new SellerManager().getPlanIds());
			request.setAttribute("packageList", new SellerManager().getPlans());
			map.addAttribute("serviceProviderModel",serviceProviderModel);
			Logger.logStatus(CLASS_NAME,"Exiting GET ServiveProvidersRedirect","debug");
			return "./jsp/serviceprovider.jsp";

		}
		catch(Exception e){
			Logger.logStatus(CLASS_NAME,"Exception in GET ServiveProvidersRedirect : "+e.getMessage(), "error");
			request.setAttribute("errorMessage", e.getMessage());
			return "./jsp/error.jsp";
		}
	}

	@RequestMapping(value={"/contactus.do"}, method={RequestMethod.GET})
	public String ContactUsRedirect(ModelMap map, HttpServletRequest request){
		try{
			Logger.logStatus(CLASS_NAME,"Entering into GET ContactUsRedirect","debug");
			Logger.logStatus(CLASS_NAME,"Exiting GET ContactUsRedirect","debug");
			return "./jsp/contact.jsp";

		}
		catch(Exception e){
			Logger.logStatus(CLASS_NAME,"Exception in GET ContactUsRedirect : "+e.getMessage(), "error");
			request.setAttribute("errorMessage", e.getMessage());
			return "./jsp/error.jsp";
		}
	}

	@RequestMapping(value={"/login.do"}, method={RequestMethod.GET})
	public String LoginRedirect(ModelMap map, HttpServletRequest request){
		try{
			Logger.logStatus(CLASS_NAME,"Entering into GET LoginRedirect","debug");
			Login login = new Login();
			SignUp signUp = new SignUp();
			map.addAttribute("login",login);
			map.addAttribute("signUp",signUp);
			Logger.logStatus(CLASS_NAME,"Exiting GET LoginRedirect","debug");
			return "./jsp/login_new.jsp";

		}
		catch(Exception e){
			Logger.logStatus(CLASS_NAME,"Exception in GET LoginRedirect : "+e.getMessage(), "error");
			request.setAttribute("errorMessage", e.getMessage());
			return "./jsp/error.jsp";
		}
	}
	
	@RequestMapping(value={"/forgotPassword.do"}, method={RequestMethod.GET})
	public String ForgotPasswordRedirect(ModelMap map, HttpServletRequest request){
		try{
			Logger.logStatus(CLASS_NAME,"Entering into GET ForgotPasswordRedirect","debug");
			Login login = new Login();
			map.addAttribute("login",login);
			Logger.logStatus(CLASS_NAME,"Exiting GET ForgotPasswordRedirect","debug");
			return "./jsp/forgotPassword.jsp";

		}
		catch(Exception e){
			Logger.logStatus(CLASS_NAME,"Exception in GET ForgotPasswordRedirect : "+e.getMessage(), "error");
			request.setAttribute("errorMessage", e.getMessage());
			return "./jsp/error.jsp";
		}
	}

	@RequestMapping(value={"/logout.do"}, method={RequestMethod.GET})
	public String LogoutRedirect(ModelMap map, HttpServletRequest request){
		try{
			Logger.logStatus(CLASS_NAME,"Entering into GET LogoutRedirect","debug");
			request.getSession().removeAttribute("uName");
			request.getSession().removeAttribute("userName");
			Logger.logStatus(CLASS_NAME,"Exiting GET LogoutRedirect","debug");
			return "./jsp/index.jsp";

		}
		catch(Exception e){
			Logger.logStatus(CLASS_NAME,"Exception in GET LogoutRedirect : "+e.getMessage(), "error");
			request.setAttribute("errorMessage", e.getMessage());
			return "./jsp/error.jsp";
		}
	}

	@RequestMapping(value={"/learn.do"}, method={RequestMethod.GET})
	public String LearnRedirect(ModelMap map, HttpServletRequest request){
		try{
			Logger.logStatus(CLASS_NAME,"Entering into GET LearnRedirect","debug");
			Logger.logStatus(CLASS_NAME,"Exiting GET LearnRedirect","debug");
			return "./jsp/learn.jsp";

		}
		catch(Exception e){
			Logger.logStatus(CLASS_NAME,"Exception in GET LearnRedirect : "+e.getMessage(), "error");
			request.setAttribute("errorMessage", e.getMessage());
			return "./jsp/error.jsp";
		}
	}

	@SuppressWarnings("deprecation")
	@RequestMapping(value={"/myaccount.do"}, method={RequestMethod.GET})
	public String MyAccountRedirect(ModelMap map, HttpServletRequest request){
		try{
			Logger.logStatus(CLASS_NAME,"Entering into GET MyAccountRedirect","debug");
			String userName = (String)request.getSession().getAttribute("userName");
			if(userName != null){
				SignUp signUp = new AccountManager().getPersonalDetails(userName);
				
				if(signUp!=null){
					Map<String,String> states = Utility.getMapFromString(Utility.getStates(signUp.getCountry()));
					Map<String,String> cities = Utility.getMapFromString(Utility.getStates(signUp.getState()));
					if(!(cities.containsKey(signUp.getCity()))){
						cities.put(signUp.getCity(), signUp.getCity());
					}
					map.addObject("statesMap",states);
					map.addObject("cityMap",cities);
					map.addAttribute("accountInfo",signUp);
					if(signUp.getRole()==1){
						Logger.logStatus(CLASS_NAME,"Exiting GET MyAccountRedirect","debug");
						return "./jsp/myAccount.jsp";
					}
					else{
						Logger.logStatus(CLASS_NAME,"Exiting GET MyAccountRedirect","debug");
						return "./jsp/myAccount_User.jsp";
					}
				}
				else{
					Logger.logStatus(CLASS_NAME,"Invalid userName : "+userName, "error");
					return "./jsp/error.jsp";
				}
			}
			else{
				Logger.logStatus(CLASS_NAME,"userName not available, redirecting to index page", "error");
				return "/login.do";
			}
		}
		catch(Exception e){
			Logger.logStatus(CLASS_NAME,"Exception in GET MyAccountRedirect : "+e.getMessage(), "error");
			request.setAttribute("errorMessage", e.getMessage());
			return "./jsp/error.jsp";
		}
	}

	@RequestMapping(value={"/sellDetails.do"}, method={RequestMethod.GET})
	public String SellDetailsRedirect(ModelMap map, HttpServletRequest request){
		try{
			Logger.logStatus(CLASS_NAME,"Entering into GET SellDetailsRedirect","debug");
			Logger.logStatus(CLASS_NAME,"Exiting GET SellDetailsRedirect","debug");
			return "./jsp/sellDetails.jsp";

		}
		catch(Exception e){
			Logger.logStatus(CLASS_NAME,"Exception in GET SellDetailsRedirect : "+e.getMessage(), "error");
			request.setAttribute("errorMessage", e.getMessage());
			return "./jsp/error.jsp";
		}
	}

	@RequestMapping(value={"/buyDetails.do"}, method={RequestMethod.GET})
	public String BuyDetailsRedirect(ModelMap map, HttpServletRequest request){
		try{
			Logger.logStatus(CLASS_NAME,"Entering into GET BuyDetailsRedirect","debug");
			Logger.logStatus(CLASS_NAME,"Exiting GET BuyDetailsRedirect","debug");
			return "./jsp/buyDetails.jsp";

		}
		catch(Exception e){
			Logger.logStatus(CLASS_NAME,"Exception in GET BuyDetailsRedirect : "+e.getMessage(), "error");
			request.setAttribute("errorMessage", e.getMessage());
			return "./jsp/error.jsp";
		}
	}
	/*@RequestMapping(value={"/page2.do"}, method={RequestMethod.GET})
	public String Page2Redirect(ModelMap map, HttpServletRequest request){
		try{
			subPackage=request.getParameter("package");
			System.out.println(subPackage);
			Logger.logStatus(CLASS_NAME,"Entering into GET MyAccountRedirect","debug");
			Logger.logStatus(CLASS_NAME,"Exiting GET MyAccountRedirect","debug");
			return "./jsp/seller_page2.jsp";

		}
		catch(Exception e){
			Logger.logStatus(CLASS_NAME,"Exception in GET MyAccountRedirect : "+e.getMessage(), "error");
			request.setAttribute("errorMessage", e.getMessage());
			return "./jsp/error.jsp";
		}
	}
	@RequestMapping(value={"/page3.do"}, method={RequestMethod.GET})
	public String Page3Redirect(ModelMap map, HttpServletRequest request){
		try{

			Logger.logStatus(CLASS_NAME,"Entering into GET MyAccountRedirect","debug");
			Logger.logStatus(CLASS_NAME,"Exiting GET MyAccountRedirect","debug");
			return "./jsp/seller_page3.jsp";

		}
		catch(Exception e){
			Logger.logStatus(CLASS_NAME,"Exception in GET MyAccountRedirect : "+e.getMessage(), "error");
			request.setAttribute("errorMessage", e.getMessage());
			return "./jsp/error.jsp";
		}
	}*/

	@RequestMapping(value={"/terms.do"}, method={RequestMethod.GET})
	public String TermsRedirect(ModelMap map, HttpServletRequest request){
		try{
			Logger.logStatus(CLASS_NAME,"Entering into GET TermsRedirect","debug");
			Logger.logStatus(CLASS_NAME,"Exiting GET TermsRedirect","debug");
			return "./jsp/terms.jsp";

		}
		catch(Exception e){
			Logger.logStatus(CLASS_NAME,"Exception in GET TermsRedirect : "+e.getMessage(), "error");
			request.setAttribute("errorMessage", e.getMessage());
			return "./jsp/error.jsp";
		}
	}
	@RequestMapping(value={"/policy.do"}, method={RequestMethod.GET})
	public String PolicyRedirect(ModelMap map, HttpServletRequest request){
		try{
			Logger.logStatus(CLASS_NAME,"Entering into GET PolicyRedirect","debug");
			Logger.logStatus(CLASS_NAME,"Exiting GET PolicyRedirect","debug");
			return "./jsp/privacypolicy.jsp";

		}
		catch(Exception e){
			Logger.logStatus(CLASS_NAME,"Exception in GET PolicyRedirect : "+e.getMessage(), "error");
			request.setAttribute("errorMessage", e.getMessage());
			return "./jsp/error.jsp";
		}
	}
	@RequestMapping(value={"/buyerTest.do"}, method={RequestMethod.GET})
	public String BuyerTestRedirect(ModelMap map, HttpServletRequest request){
		try{
			Logger.logStatus(CLASS_NAME,"Entering into GET BuyerTestRedirect","debug");
			Logger.logStatus(CLASS_NAME,"Exiting GET BuyerTestRedirect","debug");
			return "./jsp/buyertestimonials.jsp";

		}
		catch(Exception e){
			Logger.logStatus(CLASS_NAME,"Exception in GET BuyerTestRedirect : "+e.getMessage(), "error");
			request.setAttribute("errorMessage", e.getMessage());
			return "./jsp/error.jsp";
		}
	}
	@RequestMapping(value={"/sellerTest.do"}, method={RequestMethod.GET})
	public String SellerTestRedirect(ModelMap map, HttpServletRequest request){
		try{
			Logger.logStatus(CLASS_NAME,"Entering into GET SellerTestRedirect","debug");
			Logger.logStatus(CLASS_NAME,"Exiting GET SellerTestRedirect","debug");
			return "./jsp/sellertestimonials.jsp";

		}
		catch(Exception e){
			Logger.logStatus(CLASS_NAME,"Exception in GET SellerTestRedirect : "+e.getMessage(), "error");
			request.setAttribute("errorMessage", e.getMessage());
			return "./jsp/error.jsp";
		}
	}
	@RequestMapping(value={"/serProvTest.do"}, method={RequestMethod.GET})
	public String ServiceProviderTestRedirect(ModelMap map, HttpServletRequest request){
		try{
			Logger.logStatus(CLASS_NAME,"Entering into GET ServiceProviderTestRedirect","debug");
			Logger.logStatus(CLASS_NAME,"Exiting GET ServiceProviderTestRedirect","debug");
			return "./jsp/serviceprovidertestimonials.jsp";

		}
		catch(Exception e){
			Logger.logStatus(CLASS_NAME,"Exception in GET ServiceProviderTestRedirect : "+e.getMessage(), "error");
			request.setAttribute("errorMessage", e.getMessage());
			return "./jsp/error.jsp";
		}
	}

}
