<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

  <style>
.column.thirty {
	width: 25%;
}

#contactForm textarea {
	background: #F0F0F0;
	border: none;
	margin-bottom: 10px;
	padding: 5px;
	width: 97%;
	border: 1px solid #f0f0f0;
	margin-top: 15px;
}

</style>
         
  <section class="main-container col2-left-layout">
           <div class="main-container-inner">   
                            

<div class="page-title" style="margin:-9px 0 15px 0px;">
        <h2>Sell A Business - Ads Posting</h2>
</div> <!--page-title-->

 
<div class="category-products"><br/>
  <form id="contactForm" >


  <div class="column">
 
 
 <p>
 
 This page is to get your consent to publish your censored company's report generated by well-known Credit Reporting Agency namely RAM Credit Information Sdn Bhd (532271-T) with <b style="color:red;">ZERO</b> additional cost.
 
 <br/><br/>
 
 Following are the information that will be censored in the report :-<br/>
 1)  Company Name.<br/>
 2)  Company Registration No.<br/>
 3)  Company Business Address.<br/>
 4)  Directors' Name, Address & NRIC No.<br/>
 5)  Shareholders' Name, Address & NRIC No.<br/>
 6)  Interest in Other Companies (Company No. and Name will be censored).<br/>
 7)  Market Standing rated by RAM Credit Information Sdn Bhd (532271-T).<br/>
 
 </p>
 
 
 <a href="images/sellerimg1.png" target="_blank" style="color:blue;font-weight:bold;">Clik here to view the Sample Report</a>
 <br/>
 <br/>
 
 <p>
 
 Please provide us the following information in order for us to run the report :-
 </p>
 
 
 
  
 <ul class="form-list">

  
  <li>
                    <label for="companyfullname ">Company Full Name <font style="color:red;">(will not be disclosed)</font></label>
					<div class="input-box">
                    <form:input path="companyfullname" title="companyfullname" value="" class="input-text" type="text" />
					</div>
            </li>
			

  <li>
                    <label for="companyregdno">Company Registration No.  <font style="color:red;">(will not be disclosed)</font></label>
					<div class="input-box">
                    <form:input path="companyregdno" title="companyregdno" value="" class="input-text" type="text" />
					</div>
            </li>			
			
			 <li>
                  
                    <form:input path="terms" title="terms" value="terms" class="input-text" type="checkbox" style="width:5%"/> Pls tick here to accept our <a href="#" target="_blank">Terms & Conditions</a>
					
            </li>	
			
			</ul>
 <input type="text" name="hideit" id="hideit" value="" style="display:none !important;" />                  
   <button type="submit" title="Next" class="button btn-sent"><span>&nbsp;&nbsp;&nbsp;Payment&nbsp;&nbsp;&nbsp;</span></button>
  
  
  
  
  <button type="button" title="Back" class="button btn-sent" onclick="sellGoToSecondPage()"><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Back&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></button>
  <img src="images/loader.gif" id="loader" style="display:none;">
 
  </div> <!--column sixty-->
 
</form>
</div>
    
          </div><!--main-container-inner-->
       </section> <!--main-container col2-left-layout-->   
