package com.jabh.controller;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jabh.mail.SendMailSSL;
import com.jabh.model.Buyer;
import com.jabh.model.Franchise;
import com.jabh.model.Login;
import com.jabh.model.Seller;
import com.jabh.model.ServiceProvider;
import com.jabh.model.SignUp;
import com.jabh.util.Utility;
import com.utils.logging.Logger;

@Controller
public class PostController {
	private static final String CLASS_NAME = PostController.class.getName();


	@RequestMapping(value={"/loginSubmit.do"}, method={RequestMethod.POST})
	public String LoginSubmit(@Valid @ModelAttribute("login")Login login,BindingResult result,ModelMap map,HttpServletRequest request){
		try{
			Logger.logStatus(CLASS_NAME,"Entering into POST LoginSubmit","debug");
			System.out.println("Login UserName : "+login.getUsername());
			if(login.getUsername().equalsIgnoreCase("admin@gmail.com") && login.getPassword().equalsIgnoreCase("admin123")){
				Logger.logStatus(CLASS_NAME,"Exiting POST LoginSubmit","debug");
				request.getSession().setAttribute("uName", "Venkata Ramesh Karnati");
				return "./jsp/index.jsp";
			}
			else{
				Logger.logStatus(CLASS_NAME,"Exiting POST LoginSubmit","debug");
				result.rejectValue("username", "error.inValid", "Invalid username or password");
				SignUp signUp = new SignUp();
				map.addAttribute("signUp",signUp);
				login.setMessage("Invalid username or password");
				return "./jsp/login_new.jsp";
			}
		}
		catch(Exception e){
			Logger.logStatus(CLASS_NAME,"Exception in POST LoginSubmit : "+e.getMessage(), "error");
			request.setAttribute("errorMessage", e.getMessage());
			return "./jsp/error.jsp";
		}
	}

	@RequestMapping(value={"/signUpSubmit.do"}, method={RequestMethod.POST})
	public String SignUpSubmit(@Valid @ModelAttribute("signUp")SignUp signUp,BindingResult result,ModelMap map,HttpServletRequest request){
		try{
			Logger.logStatus(CLASS_NAME,"Entering into POST SignUpSubmit","debug");
			System.out.println("SignUp Email : "+signUp.getEmail());
			if(signUp.getEmail().equalsIgnoreCase("admin@gmail.com")){
				result.rejectValue("email", "error.AreadyUsed", "EmailID already in use");
				signUp.setCountry(null);
				signUp.setState(null);
				signUp.setCity(null);
				signUp.setMobile(null);
				Login login = new Login();
				map.addAttribute("login",login);
				Logger.logStatus(CLASS_NAME,"Exiting POST SignUpSubmit","debug");
				return "./jsp/login_new.jsp";
			}
			else{
				if(SendMailSSL.sendMail(signUp)){
					result.rejectValue("title", "error.Success", "Succesfull!!! Password has been mailed to your EmailID : "+signUp.getEmail()+". Please login!!!");
					signUp.setCountry(null);
					signUp.setState(null);
					signUp.setCity(null);
					signUp.setMobile(null);
					Login login = new Login();
					map.addAttribute("login",login);
					Logger.logStatus(CLASS_NAME,"Exiting POST SignUpSubmit","debug");	
					return "./jsp/login_new.jsp";
				}
				else{
					result.rejectValue("email", "error.AreadyUsed", "Please try Again");
					signUp.setCountry(null);
					signUp.setState(null);
					signUp.setCity(null);
					signUp.setMobile(null);
					Login login = new Login();
					map.addAttribute("login",login);
					Logger.logStatus(CLASS_NAME,"Exiting POST SignUpSubmit","debug");
					return "./jsp/login_new.jsp";
				}
			}
		}
		catch(Exception e){
			e.printStackTrace();
			Logger.logStatus(CLASS_NAME,"Exception in POST SignUpSubmit : "+e.getMessage(), "error");
			request.setAttribute("errorMessage", e.getMessage());
			return "./jsp/error.jsp";
		}
	}


	@RequestMapping(value={"/sellSubmit.do"}, method={RequestMethod.POST})
	public String SellSubmit(@Valid @ModelAttribute("sellerModel")Seller sellerModel,BindingResult result,HttpServletRequest request){
		try{
			Logger.logStatus(CLASS_NAME,"Entering into POST SellSubmit","debug");
			System.out.println("Seller Package : "+sellerModel.getPackages());
			Logger.logStatus(CLASS_NAME,"Exiting POST SellSubmit","debug");
			return "./jsp/search_results_Buy_Sell.jsp";

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
			return "./jsp/search_results_Buy_Sell.jsp";

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
			return "./jsp/search_results_Buy_Sell.jsp";

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
			return "./jsp/search_results_Buy_Sell.jsp";

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
	@RequestMapping(value={"/search.do"}, method={RequestMethod.GET})
	public String SearchSubmit(@RequestParam("searchValue") String searchValue,HttpServletRequest request){
		try{
			Logger.logStatus(CLASS_NAME,"Entering into GET SearchSubmit","debug");
			System.out.println("searchValue : "+searchValue);
			Logger.logStatus(CLASS_NAME,"Exiting GET SearchSubmit","debug");
			return "./jsp/search_results.jsp";

		}
		catch(Exception e){
			Logger.logStatus(CLASS_NAME,"Exception in GET SearchSubmit : "+e.getMessage(), "error");
			request.setAttribute("errorMessage", e.getMessage());
			return "./jsp/error.jsp";
		}
	}
	@RequestMapping(value={"/readMore.do"}, method={RequestMethod.POST})
	public String ReadMoreSubmit(HttpServletRequest request){
		try{
			Logger.logStatus(CLASS_NAME,"Entering into POST ReadMoreSubmit","debug");
			Logger.logStatus(CLASS_NAME,"Exiting POST ReadMoreSubmit","debug");
			return "./jsp/search_results_readmore.jsp";
		}
		catch(Exception e){
			Logger.logStatus(CLASS_NAME,"Exception in POST ReadMoreSubmit : "+e.getMessage(), "error");
			request.setAttribute("errorMessage", e.getMessage());
			return "./jsp/error.jsp";
		}
	}
	@RequestMapping(value = "/getImage.do", method = RequestMethod.GET)
	public @ResponseBody String getImages(@RequestParam("imageNeed") String imageNeed) {
		try{
			Logger.logStatus(CLASS_NAME,"Entering into GET getImages","debug");
			System.out.println("ImageNeed : "+imageNeed);
			String result = imageNeed+","+imageNeed;

			Logger.logStatus(CLASS_NAME,"Exiting GET getImages","debug");
			return result;
		}
		catch(Exception e){
			Logger.logStatus(CLASS_NAME,"Exception in GET getImages : "+e.getMessage(), "error");
			return null;
		}
	}
}
