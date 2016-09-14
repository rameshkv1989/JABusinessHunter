package com.jabh.controller;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jabh.model.Buyer;
import com.jabh.model.Franchise;
import com.jabh.model.Seller;
import com.jabh.model.ServiceProvider;
import com.jabh.util.Utility;
import com.utils.logging.Logger;

@Controller
public class PostController {
	private static final String CLASS_NAME = PostController.class.getName();
	@RequestMapping(value={"/sellSubmit.do"}, method={RequestMethod.POST})
	public String SellSubmit(@Valid @ModelAttribute("sellerModel")Seller sellerModel,BindingResult result,HttpServletRequest request){
		try{
			Logger.logStatus(CLASS_NAME,"Entering into POST SellSubmit","debug");
			System.out.println("Seller Package : "+sellerModel.getPackages());
			Logger.logStatus(CLASS_NAME,"Exiting POST SellSubmit","debug");
			return "./jsp/seller.jsp";
			
		}
		catch(Exception e){
			Logger.logStatus(CLASS_NAME,"Exception in POST SellSubmit : "+e.getMessage(), "error");
			request.setAttribute("errorMessage", e.getMessage());
			return "./jsp/error.jsp";
		}
	}
	
	@RequestMapping(value={"/buySubmit.do"}, method={RequestMethod.POST})
	public String BuySubmit(@Valid @ModelAttribute("buyerModel")Buyer buyerModel,BindingResult result,HttpServletRequest request){
		try{
			Logger.logStatus(CLASS_NAME,"Entering into POST BuySubmit","debug");
			System.out.println(buyerModel.getAreaofinterest());
			System.out.println(buyerModel.getBusinesstype());
			System.out.println(buyerModel.getBusinesscategory());
			System.out.println(buyerModel.getBusinesssubcategory());
			System.out.println(buyerModel.getAnnual_revenue());
			Logger.logStatus(CLASS_NAME,"Exiting POST BuySubmit","debug");
			return "./jsp/buyer.jsp";
			
		}
		catch(Exception e){
			Logger.logStatus(CLASS_NAME,"Exception in POST BuySubmit : "+e.getMessage(), "error");
			request.setAttribute("errorMessage", e.getMessage());
			return "./jsp/error.jsp";
		}
	}
	
	@RequestMapping(value={"/franchiseSubmit.do"}, method={RequestMethod.POST})
	public String FranchiseSubmit(@Valid @ModelAttribute("franchiseModel")Franchise franchiseModel,BindingResult result,HttpServletRequest request){
		try{
			Logger.logStatus(CLASS_NAME,"Entering into POST FranchiseSubmit","debug");
			System.out.println("Franchise Package : "+franchiseModel.getPackages());
			System.out.println("Franchise Ad Heading : "+franchiseModel.getHeading());
			
			Logger.logStatus(CLASS_NAME,"Exiting POST FranchiseSubmit","debug");
			return "./jsp/franchise.jsp";
			
		}
		catch(Exception e){
			Logger.logStatus(CLASS_NAME,"Exception in POST FranchiseSubmit : "+e.getMessage(), "error");
			request.setAttribute("errorMessage", e.getMessage());
			return "./jsp/error.jsp";
		}
	}
	
	@RequestMapping(value={"/serviceProviderSubmit.do"}, method={RequestMethod.POST})
	public String ServiceProviderSubmit(@Valid @ModelAttribute("serviceProviderModel")ServiceProvider serviceProviderModel,BindingResult result,HttpServletRequest request){
		try{
			Logger.logStatus(CLASS_NAME,"Entering into POST ServiceProviderSubmit","debug");
			System.out.println("Service Provider Package : "+serviceProviderModel.getPackages());
			System.out.println("Service Provider Ad Heading : "+serviceProviderModel.getHeading());
			Logger.logStatus(CLASS_NAME,"Exiting POST ServiceProviderSubmit","debug");
			return "./jsp/serviceprovider.jsp";
			
		}
		catch(Exception e){
			Logger.logStatus(CLASS_NAME,"Exception in POST ServiceProviderSubmit : "+e.getMessage(), "error");
			request.setAttribute("errorMessage", e.getMessage());
			return "./jsp/error.jsp";
		}
	}
	
	@RequestMapping(value = "/getOptionValues.do", method = RequestMethod.GET)
    public @ResponseBody String getStates(@RequestParam("param") String param) {
        try{
			Logger.logStatus(CLASS_NAME,"Entering into GET getStates","debug");
			Logger.logStatus(CLASS_NAME,"Input Selected value : "+param,"debug");
			String result = Utility.getStates(param);
			Logger.logStatus(CLASS_NAME,"OutPut Option Values : "+result,"debug");
			Logger.logStatus(CLASS_NAME,"Exiting GET getStates","debug");
			return result;
		}
		catch(Exception e){
			Logger.logStatus(CLASS_NAME,"Exception in GET ServiceProviderSubmit : "+e.getMessage(), "error");
			return null;
		}
    }
}
