function sellGoToFirstPage(){
	document.getElementById('sellerPage2NewDiv').style.display='none';
	document.getElementById('sellerPage3NewDiv').style.display='none';
	document.getElementById('sellBizPackagePic').style.display='block';
	document.getElementById('sellerPage1NewDiv').style.display='block';
	
}

function sellGoToSecondPage(){
	document.getElementById('sellBizPackagePic').style.display='none';
	document.getElementById('sellerPage1NewDiv').style.display='none';
	document.getElementById('sellerPage3NewDiv').style.display='none';
	document.getElementById('sellerPage2NewDiv').style.display='block';
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
		  document.getElementById('payment').style.display='block';
		  document.getElementById('next').style.visibility='hidden';
	  }
	  else{
		  document.getElementById('payment').style.display='hidden';
		  document.getElementById('next').style.visibility='block';
	  }
}
