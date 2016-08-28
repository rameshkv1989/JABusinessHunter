package com.jabh.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.utils.logging.Logger;

@Controller
public class Redirect {

	private static final String CLASS_NAME = Redirect.class.getName();
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
			Logger.logStatus(CLASS_NAME,"Exiting GET LoginRedirect","debug");
			return "./jsp/login.jsp";
			
		}
		catch(Exception e){
			Logger.logStatus(CLASS_NAME,"Exception in GET LoginRedirect : "+e.getMessage(), "error");
			request.setAttribute("errorMessage", e.getMessage());
			return "./jsp/error.jsp";
		}
	}
	
	@RequestMapping(value={"/Learn.do"}, method={RequestMethod.GET})
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
		
	
	
	@RequestMapping(value={"/MyAccount.do"}, method={RequestMethod.GET})
	public String MyAccountRedirect(ModelMap map, HttpServletRequest request){
		try{
			Logger.logStatus(CLASS_NAME,"Entering into GET MyAccountRedirect","debug");
			Logger.logStatus(CLASS_NAME,"Exiting GET MyAccountRedirect","debug");
			return "./jsp/myAccount.jsp";
			
		}
		catch(Exception e){
			Logger.logStatus(CLASS_NAME,"Exception in GET MyAccountRedirect : "+e.getMessage(), "error");
			request.setAttribute("errorMessage", e.getMessage());
			return "./jsp/error.jsp";
		}
	}
}
