package com.jabh.controller;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jabh.model.Seller;
import com.utils.logging.Logger;

@Controller
public class PostController {
	private static final String CLASS_NAME = PostController.class.getName();
	@RequestMapping(value={"/sellSubmit.do"}, method={RequestMethod.POST})
	public String SellSubmit(@Valid @ModelAttribute("sellerModel")Seller sellerModel,BindingResult result,HttpServletRequest request){
		try{
			Logger.logStatus(CLASS_NAME,"Entering into POST SellSubmit","debug");
			System.out.println("Package : "+sellerModel.getPackages());
			Logger.logStatus(CLASS_NAME,"Exiting POST SellSubmit","debug");
			return "./jsp/seller.jsp";
			
		}
		catch(Exception e){
			Logger.logStatus(CLASS_NAME,"Exception in POST SellSubmit : "+e.getMessage(), "error");
			request.setAttribute("errorMessage", e.getMessage());
			return "./jsp/error.jsp";
		}
	}
}
