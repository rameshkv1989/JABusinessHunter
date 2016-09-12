<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
  <section class="main-container col2-left-layout">
           <div class="main-container-inner">   
            

<div class="page-title">
        <h2>Sell A Business - Ads Posting</h2>
</div> <!--page-title-->

 
<div class="category-products"><br/>


  <div class="column thirty">

        <ul class="form-list">
            <li>
                    <label for="heading">Ad Heading<em class="required">*</em></label>
					<div class="input-box">
					<form:input path="heading" title="heading" value=""
					class="input-text required-entry" type="text" />
					</div>
            </li>
			
			 <li>
                    <label for="businesstype">Business Type<em class="required">*</em></label>
            
                  <div class="input-box">
                  <form:select path="businesstype" title="businesstype"
					class="required-entry input-text">
					<form:option value="" label="--- Select ---" />
					<form:option value="Franchise" label="Franchise" />
					<form:option value="Non_Franchise" label="Non Franchise" />
				</form:select>
           </div>

		   </li>
		    <li>
                    <label for="companytype">Company Type<em class="required">*</em></label>
            
                  <div class="input-box">
                  <form:select path="companytype" title="companytype" onchange="change(this.value)" 
					class="required-entry input-text">
					<form:option value="" label="--- Select ---" />
					<form:option value="Sole_Proprietor" label="Sole Proprietor" />
					<form:option value="Partnership" label="Partnership" />
					<form:option value="Sdn_Bhd" label="Sdn Bhd" />
					<form:option value="Bhd" label="Bhd" />
				</form:select>
				  
           </div>
		   </li>
		   
		   <li>
                    <label for="businesscategory">Business Category<em class="required">*</em></label>
            
                  <div class="input-box">
                  <form:select path="businesscategory" title="businesscategory"
					class="required-entry input-text">
					<form:option value="" label="--- Select ---" />
					
				</form:select>
		
           </div>
		   </li>  
		   
		     
		   <li>
                    <label for="businesssubcategory">Business Sub Category<em class="required">*</em></label>
            
                  <div class="input-box">
				  <form:select path="businesssubcategory" title="businesssubcategory"
					class="required-entry input-text">
					<form:option value="" label="--- Select ---" />
					</form:select>

           </div>
		   </li>  
		   
		    <li>
                    <label for="Country">Country<em class="required">*</em></label>
            
                  <div class="input-box">
				  <form:select path="Country" class="required-entry input-text">
					<form:option value="" label="--- Select ---" />
				</form:select>
           </div>
		   </li>  
		   
		    <li>
                    <label for="State">State<em class="required">*</em></label>
            
                  <div class="input-box">
				  <form:select path="State" title="State"
					class="required-entry input-text">
					<form:option value="" label="--- Select ---" />
					</form:select>
           </div>
		   </li>   
		   
		   
		    <li>
                    <label for="City">City<em class="required">*</em></label>
            
                  <div class="input-box">
				  <form:select path="City" title="City"
					class="required-entry input-text">
					<form:option value="" label="--- Select ---" />
					</form:select>
           </div>
		   </li>   
		   
		   
			
			
		   
		    <li>
                    <label for="Year_Established">Year Established </label>
					<div class="input-box">
                    <form:input path="Year_Established" 
					title="Year_Established" value="" class="input-text" type="text" />
					</div>
            </li>
		   
		    <li>
                    <label for="Contact_Title">Contact Title<em class="required">*</em></label>
            
                  <div class="input-box">
				  <form:select path="Contact_Title" title="Contact_Title" class="required-entry input-text">
				<form:option value="" label="--- Select ---" />
				<form:option value="Mr" label="Mr" />
				<form:option value="Ms" label="Ms" />
				<form:option value="Mrs" label="Mrs" />
				<form:option value="Madam" label="Madam" />
				<form:option value="Datuk" label="Datuk" />
				<form:option value="Datin" label="Datin" />
				<form:option value="Dr" label="Dr" />
				</form:select>
           </div>
		   </li>   
		     <li>
                    <label for="contactname">Contact Name<em class="required">*</em></label>
					<div class="input-box">
                    <form:input path="contactname" title="contactname"
					value="" class="input-text required-entry" type="text" />
					</div>
            </li>
			<li>
                    <label for="contactno">Contact Mobile No.<em class="required">*</em></label>
					<div class="input-box">
                    <form:input path="contactno" title="contactno" value=""
					class="input-text required-entry" type="text" />
					</div>
            </li>
		
			
			<li>
                    <label for="email">Email Address<em class="required">*</em></label>
					<div class="input-box">
                    <form:input path="email" title="email" value=""
					class="input-text required-entry" type="text" />
					</div>
            </li>
			  
		   <p class="required">* Required Fields</p>
        </ul>
		 
		
  </div> <!--column sixty-->

  <div class="column thirty last">
  <ul class="form-list">
	
			
			<li>
                    <label for="price">Asking Price (in Ringgit Malaysia)<em class="required">&nbsp;</em> </label>
					<div class="input-box">
					<form:input path="price" title="price" value=""
					class="input-text" type="text" />
					</div>
            </li>
			<li>
                    <label for="financial_year">Financial Year Ended <em class="required">&nbsp;</em></label>
					<div class="input-box">
					<form:input path="financialyear" title="financialyear" value=""
					class="input-text" type="text" />
					</div>
            </li>
			
			<li>
                    <label for="annual_revenue">Annual Revenue</label>
					<div class="input-box">
					<form:input path="annual_revenue" title="annual_revenue" value=""
					class="input-text" type="text" />
					</div>
            </li>
			<li>
                    <label for="annualprofit_loss">Annual Profit/(Loss) After Tax </label>
					<div class="input-box">
					<form:input path="annualprofit_loss" title="annualprofit_loss" value=""
					class="input-text" type="text" />
					</div>
            </li>
			
			<li>
                    <label for="gross_profit ">Gross Profit </label>
					<div class="input-box">
					<form:input path="gross_profit" title="gross_profit" value=""
					class="input-text" type="text" />
					</div>
            </li>
			
				<li>
                    <label for="staff_cost">Staff Cost</label>
					<div class="input-box">
                    <form:input path="staff_cost" title="staff_cost" value=""
					class="input-text" type="text" />
					</div>
            </li>
				<li>
                    <label for="rental ">Rental</label>
					<div class="input-box">
                   <form:input path="rental" title="rental" value=""
					class="input-text" type="text" />
					</div>
            </li>
			
				<li>
                    <label for="employeesno">Number of Employees</label>
					<div class="input-box">
                    <form:input path="employeesno" title="employeesno" value=""
					class="input-text" type="text" />
					</div>
            </li>
			
			
				<li>
                    <label for="ppe">Property, Plant & Equipment (PPE)</label>
					<div class="input-box">
                    <form:input path="ppe" title="ppe" value=""
					class="input-text" type="text" />
					</div>
            </li>
				<li>
                    <label for="inventories">Inventories</label>
					<div class="input-box">
                     <form:input path="inventories" title="inventories" value=""
					class="input-text" type="text" />
					</div>
            </li>
			
				<li>
                    <label for="trade_receivables">Trade Receivables</label>
					<div class="input-box">
                     <form:input path="trade_receivables" title="trade_receivables" value=""
					class="input-text" type="text" />
					</div>
            </li>
			<li>
                    <label for="trade_payables">Trade Payables</label>
					<div class="input-box">
                    <form:input path="trade_payables" title="trade_payables" value=""
					class="input-text" type="text" />
					</div>
            </li>
			
  </ul>
  
  
  </div>
  
  
 <div class="column thirty last">
  <label for="companyprofile">Company Profile (2000 characters)<em class="required">*</em></label>
  <form:textarea path="companyprofile" title="companyprofile" class="required-entry" cols="5" rows="10"></form:textarea>

  
  
 <ul class="form-list">

  
  
  	<li>
                    <label for="attachment">Attachment  (e.g. business profile, photos) </label>
					<div class="input-box">
					<input name="attachment" id="attachment" title="attachment" value=""
					class="input-text" type="file" />
					</div>
            </li>
   </ul>
         
   <label for="whythisbusiness">Why this business is worth investing? (2000 char)<em class="required">*</em></label>
              <form:textarea path="whythisbusiness" title="whythisbusiness" class="required-entry" cols="5" rows="10"></form:textarea>
  

  <label for="sellingreason">Reason for Selling the Business (300 characters)<em class="required">*</em></label>
             <form:textarea path="sellingreason" title="sellingreason" class="required-entry" cols="5" rows="10"></form:textarea>
  
   <input type="text" name="hideit" id="hideit" value="" style="display:none !important;" />                  
   <button type="submit" id="next" title="Next" onclick="sellGoToThirdPage()" class="button btn-sent"><span>&nbsp;&nbsp;&nbsp;Next&nbsp;&nbsp;&nbsp;</span></button>
   <button type="submit" id="payment" title="Payment" name="action" value="page3.do" class="button btn-sent" style="display:none"><span>&nbsp;&nbsp;&nbsp;Payment&nbsp;&nbsp;&nbsp;</span></button>
  
  
  
  
  <button type="submit" title="Back" onclick="sellGoToSecondPage()" class="button btn-sent"><span>&nbsp;&nbsp;&nbsp;Back&nbsp;&nbsp;&nbsp;</span></button>
  <img src="images/loader.gif" id="loader" style="display:none;">
  
 </div>

  
</div>
    

  </div>
  </section>