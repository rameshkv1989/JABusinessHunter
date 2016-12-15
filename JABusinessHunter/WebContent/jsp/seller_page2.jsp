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
	height: 260px;
	border: 1px solid #f0f0f0;
	margin-top: 15px;
}
</style>
<section class="main-container col2-left-layout">
	<div class="main-container-inner">



		<div class="page-title" style="margin: -29px 0 15px 0px;">
			<h2>Sell A Business - Ads Posting</h2>
		</div>
		<!--page-title-->


		<div class="category-products">
			<br />


			<div class="column thirty">

				<ul class="form-list">
					<li><label for="heading">Ad Heading<em
							class="required">*</em></label>
						<div class="input-box">
							<form:input id="heading" path="heading" title="heading" value=""
								class="input-text required-entry" type="text" required="true" pattern="^(?!\s*$).*"/>
						</div></li>

					<li><label for="businesstype">Business Type<em
							class="required">*</em></label>

						<div class="input-box">
							<form:select id="businesstype" path="businesstype"
								title="businesstype" class="required-entry input-text" required="true">
								<form:option value="" label="--- Select ---" />
								<form:option value="Franchise" label="Franchise" />
								<form:option value="Non_Franchise" label="Non Franchise" />
							</form:select>
						</div></li>
					<li><label for="companytype">Company Type<em
							class="required">*</em></label>

						<div class="input-box">
							<form:select id="companytype" path="companytype"
								title="companytype" class="required-entry input-text" required="true">
								<form:option value="" label="--- Select ---" />
								<form:option value="Sole_Proprietor" label="Sole Proprietor" />
								<form:option value="Partnership" label="Partnership" />
								<form:option value="Sdn_Bhd" label="Sdn Bhd" />
								<form:option value="Bhd" label="Bhd" />
							</form:select>

						</div></li>

					<li><label for="businesscategory">Business Category<em
							class="required">*</em></label>

						<div class="input-box">
							<form:select id="businesscategory" path="businesscategory"
								title="businesscategory" class="required-entry input-text" onchange="getOptionValues(this.value,'businesssubcategory','getOptionValuesCat.do')" required="true">
								<form:option value="" label="--- Select ---" />
								<form:option value="Advertising" label="Advertising" />
								<form:option value="Agriculture" label="Agriculture" />
								<form:option value="Automotive" label="Automotive" />
								<form:option value="Beauty" label="Beauty" />
								<form:option value="Child_Care" label="Child Care" />
								<form:option value="Construction" label="Construction" />
								<form:option value="Distribution_Wholesale" label="Distribution / Wholesale" />
								<form:option value="Education_Training" label="Education & Training" />
								<form:option value="Engineering" label="Engineering" />
								<form:option value="Entertainment_Recreation" label="Entertainment & Recreation" />
								<form:option value="Fashion" label="Fashion" />
								<form:option value="Financial_Consulting_Services" label="Financial & Consulting Services" />
								<form:option value="Food_Beverage" label="Food & Beverage" />
								<form:option value="General_Services_Supplies" label="General Services & Supplies" />
								<form:option value="Health_Care_Medical" label="Health Care & Medical" />
								<form:option value="Information_Communication" label="Information & Communication" />
								<form:option value="Logistics" label="Logistics" />
								<form:option value="Manufacturing" label="Manufacturing" />
								<form:option value="Real_Estate" label="Real Estate" />
								<form:option value="Rental_and_Leasing" label="Rental and Leasing" />
								<form:option value="Resources" label="Resources" />
								<form:option value="Retail" label="Retail" />
								<form:option value="Tourism" label="Tourism" />
								<form:option value="Transportation_Warehousing" label="Transportation & Warehousing" />
							</form:select>
						</div></li>


					<li><label for="businesssubcategory">Business Sub
							Category<em class="required">*</em>
					</label>

						<div class="input-box">
							<form:select path="businesssubcategory"
								title="businesssubcategory" class="required-entry input-text" required="true">
								<form:option value="" label="--- Select ---" />
							</form:select>

						</div></li>

					<li><label for="Country">Country<em class="required">*</em></label>

						<div class="input-box">
							<form:select id="Country" path="Country"
								onchange="getOptionValues(this.value,'State','getOptionValues.do')"
								class="required-entry input-text" required="true">
								<form:option value="" label="--- Select ---" />
								<form:option value="Malaysia" label="Malaysia" />
							</form:select>
						</div></li>

					<li><label for="State">State<em class="required">*</em></label>

						<div class="input-box">
							<form:select id="State" path="State" title="State"
								class="required-entry input-text"
								onchange="getOptionValues(this.value,'City','getOptionValues.do')" required="true">
								<form:option value="" label="--- Select ---" />
							</form:select>
						</div></li>


					<li><label for="City">City<em class="required">*</em></label>

						<div class="input-box">
							<form:select id="City" path="City" title="City"
								class="required-entry input-text" onchange="textBoxForCity(this.value)"
								required="true">
								<form:option value="" label="--- Select ---" />
							</form:select>
						</div></li>
						<li id="cityInput" style="display:none"><label for="cityText">Please enter city<!-- <em
											class="required">*</em> --></label>
										<div  class="input-box">
											<form:input path="cityText" style="width:230px" title="cityText" value=""
												class="input-text" type="text" />
										</div></li>
					<li><label for="Year_Established">Year Established </label>
						<div class="input-box">
							<form:input id="Year_Established" path="Year_Established" title="Please enter year"
								value="" class="input-text" type="text"  maxlength="4" pattern="\d*"/>
						</div></li>

					<li><label for="Contact_Title">Contact Title<em
							class="required">*</em></label>

						<div class="input-box">
							<form:select id="Contact_Title" path="Contact_Title"
								title="Contact_Title" class="required-entry input-text" required="true">
								<form:option value="" label="--- Select ---" />
								<form:option value="Mr" label="Mr" />
								<form:option value="Ms" label="Ms" />
								<form:option value="Mrs" label="Mrs" />
								<form:option value="Madam" label="Madam" />
								<form:option value="Datuk" label="Datuk" />
								<form:option value="Datin" label="Datin" />
								<form:option value="Dr" label="Dr" />
							</form:select>
						</div></li>
					<li><label for="contactname">Contact Name<em
							class="required">*</em></label>
						<div class="input-box">
							<form:input id="contactname" path="contactname"
								title="contactname" value="" class="input-text required-entry"
								type="text" required="true" pattern="^(?!\s*$).*"/>
						</div></li>
					<li><label for="contactno">Contact Mobile No.<em
							class="required">*</em></label>
						<div class="input-box">
							<form:input id="contactno" path="contactno" title="contactno"
								value="" class="input-text required-entry" type="text" required="true" pattern="\d*"/>
						</div></li>


					<li><label for="email">Email Address<em
							class="required">*</em></label>
						<div class="input-box">
							<form:input id="email" path="email" title="text" value=""
								class="input-text required-entry" type="email" required="true" />
						</div></li>

					<p class="required">* Required Fields</p>
				</ul>


			</div>
			<!--column sixty-->

			<div class="column thirty last">
				<ul class="form-list">


					<li><label for="price">Asking Price (in Ringgit
							Malaysia)<em class="required">&nbsp;</em>
					</label>
						<div class="input-box">
							<form:input id="price" path="price" title="price" value=""
								class="input-text" type="text" />
						</div></li>
					<li><label for="financial_year">Financial Year Ended (dd/mm/yyyy) <em
							class="required">&nbsp;</em></label>
						<div class="input-box">
							<form:input id="financialyear" path="financialyear" title="financialyear" value=""
								class="input-text" type="text"/>
						</div></li>

					<li><label for="annual_revenue">Annual Revenue</label>
						<div class="input-box">
							<form:input id="annual_revenue" path="annual_revenue" title="annual_revenue" value=""
								class="input-text" type="text" />
						</div></li>
					<li><label for="annualprofit_loss">Annual
							Profit/(Loss) After Tax </label>
						<div class="input-box">
							<form:input id="annualprofit_loss" path="annualprofit_loss" title="annualprofit_loss"
								value="" class="input-text" type="text" />
						</div></li>

					<li><label for="gross_profit ">Gross Profit </label>
						<div class="input-box">
							<form:input id="gross_profit" path="gross_profit" title="gross_profit" value=""
								class="input-text" type="text" />
						</div></li>

					<li><label for="staff_cost">Staff Cost</label>
						<div class="input-box">
							<form:input id="staff_cost" path="staff_cost" title="staff_cost" value=""
								class="input-text" type="text" />
						</div></li>
					<li><label for="rental ">Rental</label>
						<div class="input-box">
							<form:input id="rental" path="rental" title="rental" value=""
								class="input-text" type="text" />
						</div></li>

					<li><label for="employeesno">Number of Employees</label>
						<div class="input-box">
							<form:input id="employeesno" path="employeesno" title="employeesno" value=""
								class="input-text" type="text" pattern="\d*"/>
						</div></li>


					<li><label for="ppe">Property, Plant & Equipment (PPE)</label>
						<div class="input-box">
							<form:input path="ppe" title="ppe" value="" class="input-text"
								type="text" />
						</div></li>
					<li><label for="inventories">Inventories</label>
						<div class="input-box">
							<form:input path="inventories" title="inventories" value=""
								class="input-text" type="text" />
						</div></li>

					<li><label for="trade_receivables">Trade Receivables</label>
						<div class="input-box">
							<form:input path="trade_receivables" title="trade_receivables"
								value="" class="input-text" type="text" />
						</div></li>
					<li><label for="trade_payables">Trade Payables</label>
						<div class="input-box">
							<form:input path="trade_payables" title="trade_payables" value=""
								class="input-text" type="text" />
						</div></li>

				</ul>


			</div>


			<div class="column thirty last">
				<label for="companyprofile">Company Profile (2000
					characters)<em class="required">*</em>
				</label>
				<form:textarea id="companyprofile" path="companyprofile"
					title="companyprofile" class="required-entry" cols="5" rows="10" maxlength="2000" required="true" pattern="^(?!\s*$).*"></form:textarea>



				<ul class="form-list">



					<li><label for="attachment">Attachment (e.g. business
							profile, photos) </label>
						<div class="input-box">
							<input name="attachment" id="attachment" title="attachment"
								value="" class="input-text" type="file" />
						</div></li>
				</ul>

				<label for="whythisbusiness">Why this business is worth
					investing? (2000 char)<em class="required">*</em>
				</label>
				<form:textarea id="whythisbusiness" path="whythisbusiness"
					title="whythisbusiness" class="required-entry" cols="5" rows="10" maxlength="2000" required="true" pattern="^(?!\s*$).*"></form:textarea>


				<label for="sellingreason">Reason for Selling the Business
					(300 characters)<em class="required">*</em>
				</label>
				<form:textarea id="sellingreason" path="sellingreason"
					title="sellingreason" class="required-entry" cols="5" rows="10"
					style="height:68px;" maxlength="300" required="true" pattern="^(?!\s*$).*"></form:textarea>

				<input type="text" name="hideit" id="hideit" value=""
					style="display: none !important;" />
				<button type="submit" id="payment" title="Payment" name="action"
					class="button btn-sent">
					<span>&nbsp;&nbsp;&nbsp;Payment&nbsp;&nbsp;&nbsp;</span>
				</button>

				<button type="button" title="Back" onclick="sellGoToFirstPage()"
					class="button btn-sent">
					<span>&nbsp;&nbsp;&nbsp;Back&nbsp;&nbsp;&nbsp;</span>
				</button>
				<img src="images/loader.gif" id="loader" style="display: none;">

			</div>


		</div>


	</div>
</section>