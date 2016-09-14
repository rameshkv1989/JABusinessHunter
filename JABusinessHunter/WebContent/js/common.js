function sellGoToFirstPage(){
	document.getElementById('sellerPage2NewDiv').style.display='none';
	document.getElementById('sellerPage3NewDiv').style.display='none';
	document.getElementById('sellBizPackagePic').style.display='block';
	document.getElementById('sellerPage1NewDiv').style.display='block';

}

function sellGoToSecondPage(){

	var bool = isNull(document.getElementById('packagesid').value);
	if(!bool){
		document.getElementById('sellBizPackagePic').style.display='none';
		document.getElementById('sellerPage1NewDiv').style.display='none';
		document.getElementById('sellerPage3NewDiv').style.display='none';
		document.getElementById('sellerPage2NewDiv').style.display='block';
	}
}

function sellGoToThirdPage(){
	
	document.getElementById('sellerPage2NewDiv').style.display='none';
	document.getElementById('sellBizPackagePic').style.display='none';
	document.getElementById('sellerPage1NewDiv').style.display='none';
	document.getElementById('sellerPage3NewDiv').style.display='block';
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

function isNull(id){

	if (id == null || id == "") {
		alert("Required parameters should not be empty");
		return true;
	}else
		return false;

}