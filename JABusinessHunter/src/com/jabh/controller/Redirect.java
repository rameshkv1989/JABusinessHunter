package com.jabh.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jabh.manager.SellerManager;
import com.jabh.model.Buyer;
import com.jabh.model.Franchise;
import com.jabh.model.Login;
import com.jabh.model.Seller;
import com.jabh.model.ServiceProvider;
import com.jabh.model.SignUp;
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
			Seller sellerModel = new Seller();
			sellerModel.setPackageIdList(new SellerManager().getPackageIDsList());
			System.out.println("size : "+sellerModel.getPackageIdList().size());
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
			Franchise franchiseModel = new Franchise();
			franchiseModel.setPackageIdList(new SellerManager().getPackageIDsList());
			System.out.println("size : "+franchiseModel.getPackageIdList().size());
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
			ServiceProvider serviceProviderModel = new ServiceProvider();
			serviceProviderModel.setPackageIdList(new SellerManager().getPackageIDsList());
			System.out.println("size : "+serviceProviderModel.getPackageIdList().size());
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
	
	@RequestMapping(value={"/logout.do"}, method={RequestMethod.GET})
	public String LogoutRedirect(ModelMap map, HttpServletRequest request){
		try{
			Logger.logStatus(CLASS_NAME,"Entering into GET LogoutRedirect","debug");
			request.getSession().removeAttribute("uName");
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
