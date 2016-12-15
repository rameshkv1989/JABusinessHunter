package com.jabh.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
import com.jabh.manager.AccountManager;
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
public class PostController {
	private static final String CLASS_NAME = PostController.class.getName();

	@RequestMapping(value={"/loginSubmit.do"}, method={RequestMethod.POST})
	public String LoginSubmit(@Valid @ModelAttribute("login")Login login,BindingResult result,ModelMap map,HttpServletRequest request){
		try{
			Logger.logStatus(CLASS_NAME,"Entering into POST LoginSubmit","debug");
			if(login ==null || login.getUsername()==null ||login.getPassword()==null){
				SignUp signUp = new SignUp();
				map.addAttribute("signUp",signUp);
				result.rejectValue("username", "error.inValid", "Please enter UserName or Password");
				Logger.logStatus(CLASS_NAME,"User name or password null","debug");
			}

			Logger.logStatus(CLASS_NAME,"User Name to Login : "+login.getUsername(),"debug");
			SignUp loginVerification = new AccountManager().getLoginDetails(login);
			if(loginVerification == null){
				result.rejectValue("username", "error.inValid", "Invalid username or password");
				SignUp signUp = new SignUp();
				map.addAttribute("signUp",signUp);
				login.setMessage("Invalid username or password");
				Logger.logStatus(CLASS_NAME,"Invalid username or password : uName :"+login.getUsername()+" : password : "+login.getPassword(),"debug");
				return "./jsp/login_new.jsp";
			}
			else{
				if(loginVerification.getStatus()==0){
					result.rejectValue("username", "error.Registered", "Please activate your account. Activation Email already sent to Email : "+login.getUsername());
					SignUp signUp = new SignUp();
					map.addAttribute("signUp",signUp);
					Logger.logStatus(CLASS_NAME,"Registered user, activation pending : uName :"+login.getUsername()+" : password : "+login.getPassword(),"debug");
					Logger.logStatus(CLASS_NAME,"Exiting POST LoginSubmit","debug");
					return "./jsp/login_new.jsp";
				}
				else if(loginVerification.getStatus()==1){
					request.getSession().setAttribute("uName", loginVerification.getName());
					request.getSession().setAttribute("userName", loginVerification.getUserName());
					Logger.logStatus(CLASS_NAME,"Exiting POST LoginSubmit","debug");
					return "./jsp/index.jsp";
				}
				else if(loginVerification.getStatus()==2){
					result.rejectValue("username", "error.Suspended", "Account Suspended, please contact admin");
					SignUp signUp = new SignUp();
					map.addAttribute("signUp",signUp);
					Logger.logStatus(CLASS_NAME,"Account Suspended : uName :"+login.getUsername()+" : password : "+login.getPassword(),"debug");
					Logger.logStatus(CLASS_NAME,"Exiting POST LoginSubmit","debug");
					return "./jsp/login_new.jsp";
				}
				else{
					result.rejectValue("username", "error.Deleted", "Invalid username or password");
					SignUp signUp = new SignUp();
					map.addAttribute("signUp",signUp);
					login.setMessage("Invalid username or password");
					Logger.logStatus(CLASS_NAME,"Account deleted : uName :"+login.getUsername()+" : password : "+login.getPassword(),"debug");
					return "./jsp/login_new.jsp";
				}
			}
		}
		catch(Exception e){
			Logger.logStatus(CLASS_NAME,"Exception in POST LoginSubmit : "+e.getMessage(), "error");
			request.setAttribute("errorMessage", e.getMessage());
			result.rejectValue("username", "error.Error", "Unable to Login, please try again");
			SignUp signUp = new SignUp();
			map.addAttribute("signUp",signUp);
			return "./jsp/login_new.jsp";
		}
	}

	@RequestMapping(value={"/forgotPasswordSubmit.do"}, method={RequestMethod.POST})
	public String ForgotPasswordSubmit(@Valid @ModelAttribute("login")Login login,BindingResult result,ModelMap map,HttpServletRequest request){
		try{
			Logger.logStatus(CLASS_NAME,"Entering into POST ResetSubmit","debug");
			if(login ==null || login.getUsername()==null){
				Logger.logStatus(CLASS_NAME,"Email is Null","debug");
				result.rejectValue("username", "error.inValid", "Please enter Email");
				Logger.logStatus(CLASS_NAME,"Exiting POST ResetSubmit","debug");
				return "./jsp/forgotPassword.jsp";
			}

			Logger.logStatus(CLASS_NAME,"Email : "+login.getUsername(),"debug");
			SignUp loginVerification = new AccountManager().getPersonalDetails(login.getUsername());
			if(loginVerification == null){
				result.rejectValue("username", "error.inValid", "Email not registered");
				Logger.logStatus(CLASS_NAME,"Email not registered : uName :"+login.getUsername(),"debug");
				Logger.logStatus(CLASS_NAME,"Exiting POST ResetSubmit","debug");
				return "./jsp/forgotPassword.jsp";
			}
			else{
				if(loginVerification.getStatus()==0){
					result.rejectValue("username", "error.Registered", "Please activate your account. Activation Email already sent to Email : "+login.getUsername());
					Logger.logStatus(CLASS_NAME,"Registered user, activation pending : uName :"+login.getUsername(),"debug");
					Logger.logStatus(CLASS_NAME,"Exiting POST ResetSubmit","debug");
					return "./jsp/forgotPassword.jsp";
				}
				else if(loginVerification.getStatus()==1){
					System.out.println("Success");
					try{
						boolean sendEMailStatus = SendMailSSL.sendResetMail(loginVerification);
						if(!sendEMailStatus){
							Logger.logStatus(CLASS_NAME,"Unable to send Reset Email : uName : "+login.getUsername(), "error");
							result.rejectValue("username", "error.Error", "Please try again");
							return "./jsp/forgotPassword.jsp";
						}
					}
					catch(Exception e){
						Logger.logStatus(CLASS_NAME,"Exception in Sending Email : "+e.getMessage(), "error");
						result.rejectValue("username", "error.Error", "Please try again");
						return "./jsp/forgotPassword.jsp";
					}
					Logger.logStatus(CLASS_NAME,"Exiting POST ResetSubmit","debug");
					result.rejectValue("message", "error.Success", "Succesfull!!! Reset link has been mailed to your EmailID : "+login.getUsername()+". Please reset your password!!!");
					return "./jsp/forgotPassword.jsp";
				}
				else if(loginVerification.getStatus()==2){
					result.rejectValue("username", "error.Suspended", "Account Suspended, please contact admin");
					Logger.logStatus(CLASS_NAME,"Account Suspended : uName :"+login.getUsername(),"debug");
					Logger.logStatus(CLASS_NAME,"Exiting POST ResetSubmit","debug");
					return "./jsp/forgotPassword.jsp";
				}
				else{
					result.rejectValue("username", "error.Deleted", "Invalid Email");
					login.setMessage("Invalid Email");
					Logger.logStatus(CLASS_NAME,"Account deleted : uName :"+login.getUsername(),"debug");
					return "./jsp/forgotPassword.jsp";
				}

			}
		}
		catch(Exception e){
			Logger.logStatus(CLASS_NAME,"Exception in POST ResetSubmit : "+e.getMessage(), "error");
			result.rejectValue("username", "error.Error", "Please try again");
			return "./jsp/forgotPassword.jsp";
		}
	}




	@RequestMapping(value={"/signUpSubmit.do"}, method={RequestMethod.POST})
	public String SignUpSubmit(@Valid @ModelAttribute("signUp")SignUp signUp,BindingResult result,ModelMap map,HttpServletRequest request){
		try{
			Logger.logStatus(CLASS_NAME,"Entering into POST SignUpSubmit","debug");

			if(signUp==null || signUp.getTitle()==null || signUp.getEmail()==null || signUp.getPassword()==null || signUp.getName()==null || signUp.getCity()==null
					|| signUp.getState()==null || signUp.getCountry()==null|| signUp.getAbout()==null || signUp.getMobile()==null){
				result.rejectValue("email", "error.Empty", "Values Should not be Empty");
				Login login = new Login();
				map.addAttribute("login",login);
				Logger.logStatus(CLASS_NAME,"Empty Values","debug");
				Logger.logStatus(CLASS_NAME,"Exiting POST SignUpSubmit","debug");
				return "./jsp/login_new.jsp";
			}
			SignUp checkExistingUser = new AccountManager().getPersonalDetails(signUp.getEmail());
			Logger.logStatus(CLASS_NAME,"checkExistingUser : "+checkExistingUser,"debug");
			if(checkExistingUser!=null){
				result.rejectValue("email", "error.AreadyUsed", "Email Already in use, please try again");
				Login login = new Login();
				map.addAttribute("login",login);
				signUp.setCountry(null);
				signUp.setState(null);
				signUp.setCity(null);
				signUp.setMobile(null);
				Logger.logStatus(CLASS_NAME,"EMail already in use : uName :"+signUp.getEmail(),"debug");
				Logger.logStatus(CLASS_NAME,"Exiting POST SignUpSubmit","debug");	
				return "./jsp/login_new.jsp";
			}
			if(signUp.getCity().equalsIgnoreCase("Others")){
				signUp.setCity(signUp.getCityText());
			}
			boolean updateStatus = new AccountManager().signUpUser(signUp);
			if(!updateStatus){
				result.rejectValue("email", "error.AreadyUsed", "Unable to Sign up, please try again");
				Login login = new Login();
				map.addAttribute("login",login);
				signUp.setCountry(null);
				signUp.setState(null);
				signUp.setCity(null);
				signUp.setMobile(null);
				Logger.logStatus(CLASS_NAME,"Unable to signUp : uName :"+signUp.getEmail(),"debug");
				Logger.logStatus(CLASS_NAME,"Exiting POST SignUpSubmit","debug");
				return "./jsp/login_new.jsp";
			}
			else{
				result.rejectValue("title", "error.Success", "Succesfull!!! Activation link has been mailed to your EmailID : "+signUp.getEmail()+". Please activate your account!!!");
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
		catch(Exception e){
			e.printStackTrace();
			Logger.logStatus(CLASS_NAME,"Unable to signUp : uName :"+signUp.getEmail(),"debug");
			Logger.logStatus(CLASS_NAME,"Exception in POST SignUpSubmit : "+e.getMessage(), "error");
			try{
				int deleteSignUpUser = new AccountManager().deleteSignUpUser(signUp.getEmail());
				Logger.logStatus(CLASS_NAME,"Delete sign up user status : "+deleteSignUpUser,"debug");	
			}
			catch(Exception eDelete){
				Logger.logStatus(CLASS_NAME,"Exception in POST SignUpSubmit : "+eDelete.getMessage(), "error");
			}
			result.rejectValue("email", "error.AreadyUsed", "Unable to Sign up, please try again");
			Login login = new Login();
			map.addAttribute("login",login);
			signUp.setCountry(null);
			signUp.setState(null);
			signUp.setCity(null);
			signUp.setMobile(null);
			Logger.logStatus(CLASS_NAME,"Exiting POST SignUpSubmit","debug");
			return "./jsp/login_new.jsp";
		}
	}


	@RequestMapping(value={"/sellSubmit.do"}, method={RequestMethod.POST})
	public String SellSubmit(@Valid @ModelAttribute("sellerModel")Seller sellerModel,BindingResult result,HttpServletRequest request){
		try{
			/*int width = 963;    //width of the image
			int height = 640;   //height of the image
*/			Logger.logStatus(CLASS_NAME,"Entering into POST SellSubmit","debug");
			String userName = (String) request.getSession().getAttribute("userName");
			if(userName==null || (!(new AccountManager().validateUser(userName)))){
				Logger.logStatus(CLASS_NAME,"User not logged in","debug");
				Logger.logStatus(CLASS_NAME,"Exiting POST SellSubmit","debug");
				return "/login.do";
			}
			if(sellerModel == null || sellerModel.getPackages()== null || sellerModel.getHeading() == null || sellerModel.getBusinesstype() == null || 
					sellerModel.getCompanytype() == null || sellerModel.getBusinesscategory() == null || sellerModel.getBusinesssubcategory() ==null ||
					sellerModel.getCountry() == null || sellerModel.getState() == null || sellerModel.getCity() == null ||
					sellerModel.getContact_Title() == null || sellerModel.getContactname() == null || sellerModel.getContactno() == null ||
					sellerModel.getEmail() == null || sellerModel.getCompanyprofile() == null || sellerModel.getWhythisbusiness() == null || 
					sellerModel.getSellingreason() == null){
				Logger.logStatus(CLASS_NAME,"Empty values","debug");
				sellerModel.setMessage("Invalid details, please try again.");
				Logger.logStatus(CLASS_NAME,"Exiting POST SellSubmit","debug");
				return "./jsp/sellSubmitError.jsp";
			}
			
			/*System.out.println(request.getParameter("attachment"));
			File f = new File(request.getParameter("attachment"));;
			File f2 = new File("C:\\Users\\VL\\Desktop\\test.jpg");

			BufferedImage image = new BufferedImage(width, height, BufferedImage.TYPE_INT_ARGB);
			image = ImageIO.read(f
			ImageIO.write(image, "jpg", f2);*/
			System.out.println("Seller Package : "+sellerModel.getPackages());
			Logger.logStatus(CLASS_NAME,"Exiting POST SellSubmit","debug");
			return "./jsp/SellPay.jsp";

		}
		catch(Exception e){
			Logger.logStatus(CLASS_NAME,"Exception in POST SellSubmit : "+e.fillInStackTrace(), "error");
			sellerModel.setMessage("Please try again.");
			return "./jsp/sellSubmitError.jsp";
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

	@RequestMapping(value={"/resetPasswordSubmit.do"}, method={RequestMethod.POST})
	public String ResetPasswordSubmit(@Valid @ModelAttribute("resetPassword")ChangePassword resetPassword,BindingResult result,HttpServletRequest request){
		try{
			Logger.logStatus(CLASS_NAME,"Entering into POST ResetPasswordSubmit","debug");
			System.out.println("In submit : "+resetPassword.getUsername());
			if(resetPassword.getUsername()!=null){
				if(new AccountManager().validateUser(resetPassword.getUsername())){
					if(resetPassword.getNewPassword()==null || resetPassword.getConfirmPassword()==null){
						Logger.logStatus(CLASS_NAME,"Empty password values","debug");
						result.rejectValue("newPassword", "error.Empty", "Invalid password details, Please try again.");
						Logger.logStatus(CLASS_NAME,"Exiting POST ResetPasswordSubmit","debug");
						return "./jsp/resetPassword.jsp";
					}
					if(!(resetPassword.getNewPassword().equalsIgnoreCase(resetPassword.getConfirmPassword()))){
						Logger.logStatus(CLASS_NAME,"New password and Confirm password are not same","debug");
						result.rejectValue("newPassword", "error.Empty", "New password and Confirm password are not same");
						Logger.logStatus(CLASS_NAME,"Exiting POST ResetPasswordSubmit","debug");
						return "./jsp/resetPassword.jsp";
					}
					boolean resetStatus = new AccountManager().resetUser(resetPassword);
					if(resetStatus){
						Logger.logStatus(CLASS_NAME,"Password reset Success, userName : "+resetPassword.getUsername(),"debug");
						resetPassword.setMessage("Password reset Success, Please Login");
						Logger.logStatus(CLASS_NAME,"Exiting POST ResetPasswordSubmit","debug");
						return "./jsp/resetSuccess.jsp";
					}
					else{
						Logger.logStatus(CLASS_NAME,"Unable to reset password for user : "+resetPassword.getUsername(), "debug");
						resetPassword.setMessage("Unable to reset password, please try again.");
						Logger.logStatus(CLASS_NAME,"Exiting POST ResetPasswordSubmit","debug");
						return "./jsp/resetError.jsp";
					}
				}
				else{
					Logger.logStatus(CLASS_NAME,"Invalid User, userName : "+resetPassword.getUsername(),"debug");
					resetPassword.setMessage("Invalid account.");
					Logger.logStatus(CLASS_NAME,"Exiting POST ResetPasswordSubmit","debug");
					return "./jsp/resetError.jsp";
				}
			}
			else{
				Logger.logStatus(CLASS_NAME,"Empty userName","debug");
				resetPassword.setMessage("Invalid account.");
				Logger.logStatus(CLASS_NAME,"Exiting POST ResetPasswordSubmit","debug");
				return "./jsp/resetError.jsp";
			}
		}
		catch(Exception e){
			Logger.logStatus(CLASS_NAME,"Exception in POST ResetPasswordSubmit : "+e.fillInStackTrace(), "error");
			Logger.logStatus(CLASS_NAME,"Unable to reset password","debug");
			resetPassword.setMessage("Unable to reset password, please try again.");
			return "./jsp/resetError.jsp";
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
			Logger.logStatus(CLASS_NAME,"Exception in GET getStates : "+e.getMessage(), "error");
			return null;
		}
	}


	@RequestMapping(value = "/getOptionValuesCat.do", method = RequestMethod.GET)
	public @ResponseBody String getOptionValuesCat(@RequestParam("param") String param) {
		try{
			Logger.logStatus(CLASS_NAME,"Entering into GET getOptionValuesCat","debug");
			Logger.logStatus(CLASS_NAME,"Input Selected value : "+param,"debug");
			String result = Utility.getOptionValuesCat(param);
			Logger.logStatus(CLASS_NAME,"OutPut Option Values : "+result,"debug");
			Logger.logStatus(CLASS_NAME,"Exiting GET getOptionValuesCat","debug");
			return result;
		}
		catch(Exception e){
			Logger.logStatus(CLASS_NAME,"Exception in GET getOptionValuesCat : "+e.getMessage(), "error");
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

	@RequestMapping(value={"/editSellDetails.do"}, method={RequestMethod.POST})
	public String SellDetailsEdit(HttpServletRequest request){
		try{
			Logger.logStatus(CLASS_NAME,"Entering into POST SellDetailsEdit","debug");
			Logger.logStatus(CLASS_NAME,"Exiting POST SellDetailsEdit","debug");
			return "./jsp/sellDetailsEdit.jsp";
		}
		catch(Exception e){
			Logger.logStatus(CLASS_NAME,"Exception in POST SellDetailsEdit : "+e.getMessage(), "error");
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

	@RequestMapping(value={"/paymentSuccess.do"}, method={RequestMethod.POST})
	public String PaymentSuccess(HttpServletRequest request) {
		try{
			Logger.logStatus(CLASS_NAME,"Entering into GET PaymentSuccess","debug");
			System.out.println("Entering into GET PaymentSuccess");
			Logger.logStatus(CLASS_NAME,"Exiting GET PaymentSuccess","debug");
			return "./jsp/sellDetailsEdit.jsp";
		}
		catch(Exception e){
			Logger.logStatus(CLASS_NAME,"Exception in GET PaymentSuccess : "+e.getMessage(), "error");
			return null;
		}
	}

	@RequestMapping(value={"/paymentCancel.do"}, method={RequestMethod.GET})
	public String PaymentCancel(HttpServletRequest request,HttpServletResponse response) {
		try{
			Logger.logStatus(CLASS_NAME,"Entering into GET PaymentCancel","debug");
			System.out.println("Entering into GET PaymentCancel");
			System.out.println("req Query : "+request.getQueryString());
			System.out.println("req header : "+request.getHeaderNames());

			Logger.logStatus(CLASS_NAME,"Exiting GET PaymentCancel","debug");
			return "./jsp/cancel.jsp";
		}
		catch(Exception e){
			Logger.logStatus(CLASS_NAME,"Exception in GET PaymentCancel : "+e.getMessage(), "error");
			return null;
		}
	}
}
