function sellGoToFirstPage(){
	document.getElementById('sellerPage2NewDiv').style.display='none';
	document.getElementById('sellerPage3NewDiv').style.display='none';
	document.getElementById('sellBizPackagePic').style.display='block';
	document.getElementById('sellerPage1NewDiv').style.display='block';

}

function sellGoToSecondPage(){
	var bool = isNull(document.getElementById('packages').value,'Package');
	if(!bool){
		document.getElementById('sellBizPackagePic').style.display='none';
		document.getElementById('sellerPage1NewDiv').style.display='none';
		document.getElementById('sellerPage3NewDiv').style.display='none';
		document.getElementById('sellerPage2NewDiv').style.display='block';
	}
}

function sellGoToThirdPage(id){
	if(!isNull((document.getElementById('heading').value),'Heading') && !isNull((document.getElementById('businesstype').value),'BusinessType')
			&& !isNull((document.getElementById('companytype').value),'CompanyType') && !isNull((document.getElementById('businesscategory').value),'BusinessCategory')
			&& !isNull((document.getElementById('businesssubcategory').value),'BusinessCategory') && !isNull((document.getElementById('Country').value),'Country')
			&& !isNull((document.getElementById('State').value),'State') && !isNull((document.getElementById('City').value),'City')
			&& !isNull((document.getElementById('Contact_Title').value),'Title') && !isNull((document.getElementById('contactname').value),'ContactName')
			&& !isNull((document.getElementById('contactno').value),'ContactNumber') && !isNull((document.getElementById('email').value),'Email')
			&& !isNull((document.getElementById('companyprofile').value),'CompanyProfile') && !isNull((document.getElementById('whythisbusiness').value),'BusinessWorth')
			&& !isNull((document.getElementById('sellingreason').value),'SellingReason'))

	{
		if(validatedate(document.getElementById('financialyear').value,'Financial Year') && isNumber(document.getElementById('Year_Established').value,'Year Established')
				&& isNumber(document.getElementById('contactno').value,'Contact Number') && isNumber(document.getElementById('price').value,'Price')
				&& isNumber(document.getElementById('annual_revenue').value,'Annual Revenue') && isNumber(document.getElementById('annualprofit_loss').value,'Annual Profit/Loss')
				&& isNumber(document.getElementById('gross_profit').value,'Gross Profit') && isNumber(document.getElementById('staff_cost').value,'Staff Cost')
				&& isNumber(document.getElementById('rental').value,'Rental') && isNumber(document.getElementById('employeesno').value,'Number Of Employees')
				&& isEmail(document.getElementById('email').value)){
			if(id=='next'){
				document.getElementById('sellerPage2NewDiv').style.display='none';
				document.getElementById('sellBizPackagePic').style.display='none';
				document.getElementById('sellerPage1NewDiv').style.display='none';
				document.getElementById('sellerPage3NewDiv').style.display='block';
			}
			else if(id=='payment'){
				document.getElementById("contactForm").submit();
			}
		}
	}
}
function franchiseGoToSecondPage(){
	var bool = isNull(document.getElementById('packages').value,'Package');
	if(!bool){
		document.getElementById('franchisePackagePic').style.display='none';
		document.getElementById('franchise1NewDiv').style.display='none';
		document.getElementById('franchise2NewDiv').style.display='block';
	}
}

function franchiseGoToFirstPage(){
	document.getElementById('franchise2NewDiv').style.display='none';
	document.getElementById('franchisePackagePic').style.display='block';
	document.getElementById('franchise1NewDiv').style.display='block';
}
function serviceProGoToSecondPage(){
	var bool = isNull(document.getElementById('packages').value,'Package');
	if(!bool){
		document.getElementById('serviceProPackagePic').style.display='none';
		document.getElementById('servicePro1NewDiv').style.display='none';
		document.getElementById('servicePro2NewDiv').style.display='block';
	}
}
function serviceProGoToFirstPage(){
	document.getElementById('servicePro2NewDiv').style.display='none';
	document.getElementById('serviceProPackagePic').style.display='block';
	document.getElementById('servicePro1NewDiv').style.display='block';
}

function getOptionValues(selectValue,populateValue,submitValue){
	jQuery.ajax({
		type: "GET",
		url : submitValue,
		data: { param: selectValue},
		dataType: 'text',
		success : function(data) {
			jQuery('#'+populateValue).empty(); // empty existing list
			jQuery('#'+populateValue).append('<option value="">--- Select ---</option>');
			jQuery.each(data.split(","), function (varIndex,varState){
				jQuery('#'+populateValue).append(jQuery('<option>').text(varState).val(varState));
			});  
		}
	});
}

function change(val){
	if(val == 'Sdn_Bhd'){
		document.getElementById('payment').style.display='inline-block';
		document.getElementById('next').style.display='none';
	}
	else{
		document.getElementById('next').style.display='inline-block';
		document.getElementById('payment').style.display='none';
	}
}

function isNull(id,field){
	if (id == null || id == "" || trim(id).length<=0) {
		alert(field+" should not be empty");
		return true;
	}else
		return false;

}
function trim(s) 
{
	s = s.replace(/(^\s*)|(\s*$)/gi,"");
	s = s.replace(/[ ]{2,}/gi," ");
	s = s.replace(/\n /,"\n");
	return s;
}


function validatedate(ipDate,id)
{
	var dateformat = /^(0?[1-9]|[12][0-9]|3[01])[\/\-](0?[1-9]|1[012])[\/\-]\d{4}$/;
//	Match the date format through regular expression
	if(ipDate == null || ipDate == "" || trim(ipDate).length<=0){
		return true;
	}
	if(ipDate.match(dateformat))
	{
		var splitDate = ipDate.split('/');
//		Extract the string into month, date and year
		if (splitDate.length>1)
		{
			var pdate = ipDate.split('/');
		}
		var dd = parseInt(pdate[0]);
		var mm  = parseInt(pdate[1]);
		var yy = parseInt(pdate[2]);
//		Create list of days of a month [assume there is no leap year by default]
		var ListofDays = [31,28,31,30,31,30,31,31,30,31,30,31];
		var count =0;
		if (mm==1 || mm>2)
		{
			if (dd>ListofDays[mm-1])
			{
				alert(id+' is in Invalid date format!');
				return false;
			}else{
				count++;
			}
		}
		if (mm==2)
		{
			var leapYear = false;
			if ( (!(yy % 4) && yy % 100) || !(yy % 400)) 
			{
				leapYear = true;
			}
			if ((leapYear==false) && (dd>=29))
			{
				alert(id+' is in Invalid date format!');
				return false;
			}else{
				count++;
			}
			if ((leapYear==true) && (dd>29))
			{
				alert(id+' is in Invalid date format!');
				return false;
			}else{
				count++;
			}
		}
		if(count==3 || (count==1 && mm != 2)){
			return true;
		}
	}
	else
	{
		alert(id+' is in Invalid date format!');
		return false;
	}
}

function isNumber(num,id) {
	if(num == null || num == "" || trim(num).length<=0){
		return true;
	}
	if(!isNaN(parseFloat(num)) && isFinite(num))
		return true;
	else{
		alert(id+' can be digits only');
	}
}
function isPrice(price, id){
	if(price == null || price == "" || trim(price).length<=0){
		return true;
	}
	var regex  = /^\d+(?:\.\d{0,2})$/;
	if (regex.test(price)){
		return true;
	}else{
		alert(id+' should be in the format of dd.dd');
		return false;
	}
}

function isEmail(email){
	var atposition = email.indexOf("@");
	var dotposition = email.lastIndexOf(".");
	if (atposition<1 || dotposition<atposition+2 || dotposition+2>=email.length) {
		alert("Please enter a valid e-mail address");
		return false;
	}else{return true;}
}