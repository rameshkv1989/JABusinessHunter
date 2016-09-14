<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<div class="column thirty">

	<ul class="form-list">
		<li><label for="heading">Ad Heading<em class="required">*</em></label>
			<div class="input-box">
				<form:input path="heading" title="heading" value=""
					class="input-text required-entry" type="text" />
			</div></li>

		<li><label for="servicetype">Type Of Service<em
				class="required">*</em></label>

			<div class="input-box">
				<form:select path="servicetype" title="servicetype"
					class="required-entry input-text">
					<form:option value="" label="--- Select ---" />
					<form:option value="Franchise" label="Franchise" />
					<form:option value="Non_Franchise" label="Non Franchise" />
				</form:select>
			</div></li>

		<li><label for="companyfullname ">Company Full Name <em
				class="required">*</em></label>
			<div class="input-box">
				<form:input path="companyfullname" title="companyfullname" value=""
					class="input-text" type="text" />
			</div></li>


		<li><label for="companyregdno">Company Registration No. <em
				class="required">*</em>
		</label>
			<div class="input-box">
				<form:input path="companyregdno" title="companyregdno" value=""
					class="input-text" type="text" />
			</div></li>


		<li><label for="companywebsite">Company Website<em
				class="required">*</em></label>
			<div class="input-box">
				<form:input path="companywebsite" title="companywebsite" value=""
					class="input-text required-entry" type="text" />
			</div></li>
		<li><label for="companyaddress">Company Address<em
				class="required">*</em></label>
			<div class="input-box">
				<form:input path="companyaddress" title="companyaddress" value=""
					class="input-text required-entry" type="text" />
			</div></li>

		<li><label for="Country">Country<em class="required">*</em></label>

			<div class="input-box">
				<form:select path="Country" title="Country"
					class="required-entry input-text" onchange="getOptionValues(this.value,'State','getOptionValues.do')">
					<form:option value="" label="--- Select ---" />
					<form:option value="Malaysia" label="Malaysia" />
				</form:select>
			</div></li>
		<p class="required">* Required Fields</p>
	</ul>


</div>
<!--column sixty-->

<div class="column thirty last">
	<ul class="form-list">
		<li><label for="State">State<em class="required">*</em></label>

			<div class="input-box">
				<form:select path="State" title="State"
					class="required-entry input-text" onchange="getOptionValues(this.value,'City','getOptionValues.do')">
					<form:option value="" label="--- Select ---" />
				</form:select>
			</div></li>


		<li><label for="City">City<em class="required">*</em></label>

			<div class="input-box">
				<form:select path="City" title="City"
					class="required-entry input-text">
					<form:option value="" label="--- Select ---" />
					<form:option value="Ayer Baloi" label="Ayer Baloi" />
				</form:select>
			</div></li>


		<li><label for="Year_Established">Year Established </label>
			<div class="input-box">
				<form:input path="Year_Established" title="Year_Established"
					value="" class="input-text" type="text" />
			</div></li>

		<li><label for="Contact_Title">Contact Title<em
				class="required">*</em></label>

			<div class="input-box">
				<form:select path="Contact_Title" title="Contact_Title"
					class="required-entry input-text">
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
				<form:input path="contactname" title="contactname"
					value="" class="input-text required-entry" type="text" />
			</div></li>
		<li><label for="contactno">Contact Mobile No.<em
				class="required">*</em></label>
			<div class="input-box">
				<form:input path="contactno" title="contactno" value=""
					class="input-text required-entry" type="text" />
			</div></li>
		<li><label for="email">Email Address </label>
			<div class="input-box">
				<form:input path="email" title="email" value=""
					class="input-text " type="text" />
			</div></li>


	</ul>


</div>


<div class="column thirty last">
	<label for="companyprofile">Company Profile (2000 characters)<em
		class="required">*</em></label>
	<form:textarea path="companyprofile" title="companyprofile" class="required-entry" cols="5" rows="10"></form:textarea>
	<ul class="form-list">
		<li><label for="attachment">Attachment (e.g. business
				profile, photos) </label>
			<div class="input-box">
				<input name="attachment" id="attachment" title="attachment" value=""
					class="input-text" type="file" />
			</div></li>
	</ul>

	<label for="howarewedifferent">How are we different from the
		other service providers?(2000 char)<em class="required">*</em>
	</label>
	<form:textarea path="howarewedifferent" title="howarewedifferent" class="required-entry" cols="5" rows="10"></form:textarea>


	<input type="text" name="hideit" id="hideit" value=""
		style="display: none !important;" />
	<button type="submit" title="Payment" class="button btn-sent">
		<span> Payment </span>
	</button>




	<button type="button" title="Back" class="button btn-sent"
		onclick="serviceProGoToFirstPage()">
		<span>&nbsp;&nbsp;&nbsp;Back&nbsp;&nbsp;&nbsp;</span>
	</button>
	<img src="images/loader.gif" id="loader" style="display: none;">

</div>