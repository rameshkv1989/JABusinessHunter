function sellGoToFirstPage(){
	document.getElementById('sellerPage2NewDiv').style.display='none';
	document.getElementById('sellerPage3NewDiv').style.display='none';
	document.getElementById('sellBizPackagePic').style.display='block';
	document.getElementById('sellerPage1NewDiv').style.display='block';

}

function sellGoToSecondPage(){

	var bool = isNull(document.getElementById('packagesid').value,'Package');
	if(!bool){
		document.getElementById('sellBizPackagePic').style.display='none';
		document.getElementById('sellerPage1NewDiv').style.display='none';
		document.getElementById('sellerPage3NewDiv').style.display='none';
		document.getElementById('sellerPage2NewDiv').style.display='block';
	}
}

function sellGoToThirdPage(){
	if(!isNull((document.getElementById('heading').value),'Heading') && !isNull((document.getElementById('businesstype').value),'BusinessType')
			&& !isNull((document.getElementById('companytype').value),'CompanyType') && !isNull((document.getElementById('businesscategory').value),'BusinessCategory')
			&& !isNull((document.getElementById('businesssubcategory').value),'BusinessCategory') && !isNull((document.getElementById('Country').value),'Country')
			&& !isNull((document.getElementById('State').value),'State') && !isNull((document.getElementById('City').value),'City')
			&& !isNull((document.getElementById('Contact_Title').value),'Title') && !isNull((document.getElementById('contactname').value),'ContactName')
			&& !isNull((document.getElementById('contactno').value),'ContactNumber') && !isNull((document.getElementById('email').value),'Email')
			&& !isNull((document.getElementById('companyprofile').value),'CompanyProfile') && !isNull((document.getElementById('whythisbusiness').value),'BusinessWorth')
			&& !isNull((document.getElementById('sellingreason').value),'SellingReason'))

	{
		document.getElementById('sellerPage2NewDiv').style.display='none';
		document.getElementById('sellBizPackagePic').style.display='none';
		document.getElementById('sellerPage1NewDiv').style.display='none';
		document.getElementById('sellerPage3NewDiv').style.display='block';
	}
}
	function franchiseGoToSecondPage(){
		document.getElementById('franchisePackagePic').style.display='none';
		document.getElementById('franchise1NewDiv').style.display='none';
		document.getElementById('franchise2NewDiv').style.display='block';
	}

	function franchiseGoToFirstPage(){
		document.getElementById('franchise2NewDiv').style.display='none';
		document.getElementById('franchisePackagePic').style.display='block';
		document.getElementById('franchise1NewDiv').style.display='block';
	}
	function serviceProGoToSecondPage(){
		document.getElementById('serviceProPackagePic').style.display='none';
		document.getElementById('servicePro1NewDiv').style.display='none';
		document.getElementById('servicePro2NewDiv').style.display='block';
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
		if (id == null || id == "") {
			alert(field+" should not be empty");
			return true;
		}else
			return false;

	}