

<!DOCTYPE html>
<html lang="en">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>J & A Business Hunter</title>
<meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=no">
<meta name="description" content=" " />
<meta name="keywords" content=" " />
<meta name="robots" content="*" /> 
<link rel="shortcut png" href="images/favicon.png" type="image/x-icon" />
<link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900,100italic,300italic,400italic,700italic,900italic' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Bitter:400,700,400italic' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Bitter:200,300,400,500,600,700,800' rel='stylesheet' type='text/css'>
 
      
<link rel="stylesheet" href="css/styles.css" type="text/css" />
<link rel="stylesheet" href="css/responsive.css" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/font-awesome.css" media="all" />
<link rel="stylesheet" type="text/css" href="css/fancybox.css" media="all" />
<link rel="stylesheet" type="text/css" href="css/scroll.css" media="all" />
<link rel="stylesheet" type="text/css" href="css/blogmate.css" media="all" />



<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/banner.js"></script>
<script type="text/javascript" src="js/nav.js"></script>
<script type="text/javascript" src="js/totop.js"></script>
<script type="text/javascript" src="js/products-slider.js"></script>
<script type="text/javascript" src="js/left-nav.js"></script>
<script type="text/javascript" src="js/mob-nav.js"></script>
<script type="text/javascript" src="js/toggle.js"></script>
<script type="text/javascript" src="js/jquery.fancybox-1.3.4.pack.js"></script>


<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Raleway:300,400,500,700,600" /> 
 
<meta name="viewport" content="initial-scale=1.0, width=device-width" />
 
 <script type="text/javascript">
jQuery(document).ready(function() {

	jQuery("#right_toolbar").show(); 
	jQuery("#back-top").hide();

	jQuery(function() {
	      jQuery(window).scroll(function() {
		  if (jQuery(this).scrollTop() > 150) {
			jQuery('#back-top').fadeIn();
		  } else { 
			jQuery('#back-top').fadeOut();
		  }
	      });

	      jQuery('#back-top a').click(function() {
		  jQuery('body,html').animate({scrollTop: 0}, 400);
		  return false;
	      });



	});

    jQuery("#right_toolbar .shoppingcart").bind('mouseenter',function() {
        jQuery(".shopping_cart_mini",this).stop(true, true).fadeIn(200, "linear");
    });

    jQuery("#right_toolbar .shoppingcart").bind('mouseleave',function() {
        jQuery(".shopping_cart_mini",this).stop(true, true).fadeOut(200, "linear");
    });

    jQuery("#right_toolbar .form-search ").mouseenter(function() {
        jQuery('#right_toolbar .form-search input').animate({
            right: 48,
            width: 240
        }, 300);
    });

 jQuery("#left_toolbar .form-search ").mouseenter(function() {
        jQuery('#left_toolbar .form-search input').animate({
            left: 40,
            width: 240
        }, 300);
    });

 jQuery("#right_toolbar .form-search ").mouseleave(function() {
        jQuery('#right_toolbar .form-search input').stop(true, false).animate({
            right: 20,
            width: 0
        }, 300);
    });

    jQuery("#left_toolbar .form-search ").mouseleave(function() {
        jQuery('#left_toolbar .form-search input').stop(true, false).animate({
            left: 20,
            width: 0
        }, 300);
    });

});
</script> 

<style>
#right_toolbar {
	position: fixed;
	right:5px;
	top: 30%;
	z-index: 50;
	width:45px;
}
#left_toolbar {
	position: fixed;
	left:0px;
	top: 30%;
	z-index: 500;
	width:45px;
}
#right_toolbar .form-search button {
    background-color: #FF1341;
    border: medium none;
    border-radius: 4px 4px 4px 4px;
    float: right;
    margin: -3px 0 0 5px;
    padding: 3px 0 1px;
    position: relative;
    width: 40px;
    z-index: 100;
}
#left_toolbar .form-search button {
    background-color: #FF1341;
    border: medium none;
    border-radius: 4px 4px 4px 4px;
    float: right;
    margin: -3px 0 0 5px;
    padding: 3px 0 1px;
    position: relative;
    width: 40px;
    z-index: 100;
} 
.scarttxtcolor{
color:#333333;
}

.intro-btn a {
    color: #fff;
    padding: 15px 45px;
    letter-spacing: 2px;
    font-size: 12px;margin-top: 15px;
    font-weight: normal;
    background: #ff1341;
    font-family: 'Bitter', serif;
}
.intro-btn a:hover {
 background: black;color:white;
}
p{font-size:15px; text-align:justify;}

#contactForm textarea {
    background: #F0F0F0;
    border: none;
  /*  height: 175px;*/
    margin-bottom: 10px;
    padding: 5px;
    width: 97%;
    border: 1px solid #f0f0f0;
    margin-top: 15px;
}
.form-list select {
    background: #f0f0f0;
    border: 1px solid #f0f0f0;
    padding: 10px;
    width: 80%;
    margin-top: 5px;
    outline: none;
    margin: 5px 0 2px;
    width: 84%;
    outline: none;
}
.column.thirty
{

width:33%;
}
</style>

            
<div  id="right_toolbar">
     
    		  <div class="search_wrapper">
			      <form class="form-search" action="#" method="get">
				<button type="submit"><img src="images/scrollsearch_icon.png" align="absmiddle"></button>
				<input name="q" class="input-medium search-query" value="search" onBlur="if (this.value == '') {this.value = 'search';}" onFocus="if(this.value =='search') {this.value = '';}" type="text">
			      </form>
		  </div>
	  
    	      <div id="back-top" style="display:none;"><a href="#top"><img src="images/backto_top.png"></a></div>
    </div>


 



</head>

<body class="flexible  cms-index-index cms-accord-home">
            <noscript>
        <div class="global-site-notice noscript">
            <div class="notice-inner">
                <p>
                    <strong>JavaScript seems to be disabled in your browser.</strong><br />
                    You must have JavaScript enabled in your browser to utilize the functionality of this website.                </p>
            </div>
        </div>
    </noscript>
    <header>
<div class="top-links">
<div class="inner">
    <div class="toplinks">
     <div class="links">
      <div class="check"><a href="learn.html" title="Learn"><span>Learn</span></a></div>     
     
<div class="company">
<div class="click-nav">
<ul class="no-js">
<li><a class="clicker" title="Company">Testimonials <span class="caret"></span></a>
<ul class="link">
<li><a title="Buyer" href="buyertestimonials.html">Buyer</a></li>
<li><a title="Seller" href="sellertestimonials">Seller</a></li>
<li><a title="Service Provider" href="serviceproviderstestimonials">Service Provider</a></li> 
</ul>
</li>
</ul>
</div>
</div>
               <div class="login"><a href="login.html"><span>Log In</span></a></div>
                 </div> 
   </div>
     </div>
    </div>
 





	 
   
  <div class="header">     
            
 <div class="top-cart-contain">
 
   <p class="intro-btn">
      <a href="postad.html" ><span>Post Your Ad </span></a></p>
	  </div>
               
			   <div class="logo"><a href="index.html" title="J & A Business Hunter"><div><img src="images/logo.png" alt="J & A Business Hunter Logo" /></div></a></div>
      
  </div> <!--header-->
  </header>
<nav>
  <div class="nav-inner">
    
            



<script type="text/javascript">
jQuery(document).ready(function() {
          jQuery('.toggle').click(function() {
               if (jQuery('.submenu').is(":hidden"))
               {
                    jQuery('.submenu').slideDown("fast");
               } else {
                    jQuery('.submenu').slideUp("fast");
               }
               return false;
          });
});

jQuery(document).ready(function() {
        jQuery(".topnav").accordion({
                accordion:false,
                speed: 300,
                closedSign: '+',
                openedSign: '-'
        });
});

</script>

<div id="menu" class="hidden-desktop">
  <ul class="navmenu">
     <li>
      <div class="menutop">
        <div class="toggle"> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span></div>                
       </div>
       <ul class="submenu" style="display:none;">
         <li>
           <ul class="topnav">
            
<li class="level0 nav-1 level-top"><a href="index.html" class="level-top"><span>Home</span></a></li>

<li class="level0 nav-2 level-top"><a href="aboutus.html" class="level-top"><span>About Us</span></a></li>

<li class="level0 nav-3 level-top"><a href="services.html" class="level-top"><span>Our Services</span></a></li>

<li class="level0 nav-4 level-top"><a href="seller.html" class="level-top"><span>Seller</span></a></li>

<li class="level0 nav-5 level-top"><a href="buyer.html" class="level-top"><span>Buyer</span></a></li>

<li class="level0 nav-6 level-top"><a href="franchise.html" class="level-top"><span>Franchise</span></a></li>

<li class="level0 nav-7 level-top"><a href="serviceproviders.html" class="level-top"><span>Service Providers</span></a></li>


<li class="level0 nav-8 level-top"><a href="contactus.html" class="level-top"><span>Contact Us</span></a></li>

  <li class="level0 nav-9 level-top first parent">
<a href="#" class="level-top">
<span>Testimonials</span>
</a>
<ul class="level0">
<li class="level1 nav-1-1 first parent">
<a href="buyertestimonials.html">
<span>Buyer</span>
</a>
</li>

<li class="level1 nav-1-1 first parent">
<a href="sellertestimonials.html">
<span>Seller</span>
</a>
</li>

<li class="level1 nav-1-1 first parent">
<a href="serviceproviderstestimonials.html">
<span>Service Provider</span>
</a>
</li>
</ul>
</li>



<li class="level0 nav-10 level-top last"><a href="forum.html" class="level-top"><span>Forum</span></a>
</li>           </ul>
         </li>
       </ul> 
     </li>
  </ul> 
</div>
    
                                
            <ul id="nav">
                              <li id="nav-home" class="level0 nav-5 level-top"><a class="level-top" href="index.html"><span>Home</span></a>    </li>
               <li  class="level0 nav-5 level-top"><a class="level-top" href="aboutus.html"><span>About Us</span></a>    </li>
               <li  class="level0 nav-5 level-top"><a class="level-top" href="services.html"><span>Our Services</span></a>    </li>
               <li  class="level0 nav-5 level-top"><a class="level-top" href="seller.html"><span>Seller</span></a>    </li>
               <li  class="level0 nav-5 level-top"><a class="level-top" href="buyer.html"><span>Buyer</span></a>    </li>
               <li  class="level0 nav-5 level-top"><a class="level-top" href="franchise.html"><span>Franchise</span></a>    </li>
               <li  class="level0 nav-5 level-top"><a class="level-top" href="serviceproviders.html"><span>Service Providers</span></a>    </li>
			 
			   
               <li  class="level0 nav-5 level-top"><a class="level-top" href="contact.html"><span>Contact Us</span></a>    </li>
                  <li  class="level0 nav-5 level-top"><a class="level-top" href="forum.html"><span>Forum</span></a>    </li>
			  
                                
                </ul> 

    
<script type="text/javascript">
        //<![CDATA[

            jQuery(function($) {
                $("#nav > li").hover(function() {
                    var el = $(this).find(".level0-wrapper");
                    el.hide();
                    el.css("left", "0");
                    el.stop(true, true).delay(150).fadeIn(300, "easeOutCubic");
                }, function() {
                    $(this).find(".level0-wrapper").stop(true, true).delay(300).fadeOut(300, "easeInCubic");
                });
            });

            var isTouchDevice = ('ontouchstart' in window) || (navigator.msMaxTouchPoints > 0);
            jQuery(window).on("load", function() {

                if (isTouchDevice)
                {
                    jQuery('#nav a.level-top').click(function(e) {
                        $t = jQuery(this);
                        $parent = $t.parent();
                        if ($parent.hasClass('parent'))
                        {
                            if ( !$t.hasClass('menu-ready'))
                            {                    
                                jQuery('#nav a.level-top').removeClass('menu-ready');
                                $t.addClass('menu-ready');
                                return false;
                            }
                            else
                            {
                                $t.removeClass('menu-ready');
                            }
                        }
                    });
                }

            }); //end: on load

        //]]>
</script>
<script type="text/javascript">
//<![CDATA[
    jQuery(document).ready(function(){
        var scrolled = false;
        jQuery("#nav li.level0.drop-menu").mouseover(function(){
            if(jQuery(window).width() >= 740){
                jQuery(this).children('ul.level1').fadeIn(100);
            }
            return false;
        }).mouseleave(function(){
            if(jQuery(window).width() >= 740){
                jQuery(this).children('ul.level1').fadeOut(100);
            }
            return false;
        });
        jQuery("#nav li.level0.drop-menu li").mouseover(function(){
            if(jQuery(window).width() >= 740){
                jQuery(this).children('ul').css({top:0,left:"165px"});
                var offset = jQuery(this).offset();
                if(offset && (jQuery(window).width() < offset.left+325)){
                    jQuery(this).children('ul').removeClass("right-sub");
                    jQuery(this).children('ul').addClass("left-sub");
                    jQuery(this).children('ul').css({top:0,left:"-167px"});
                } else {
                    jQuery(this).children('ul').removeClass("left-sub");
                    jQuery(this).children('ul').addClass("right-sub");
                }
                jQuery(this).children('ul').fadeIn(100);
            }
        }).mouseleave(function(){
            if(jQuery(window).width() >= 740){
                jQuery(this).children('ul').fadeOut(100);
            }
        });
        

    });
//]]>
</script>
     </div> 
</nav> 
         
  <section class="main-container col2-left-layout">
           <div class="main-container-inner">   
            
  <div class="breadcrumbs">
    <div class="inner">
      <ul>
                    <li class="home">
                            <a href="index.html" title=" ">Home</a>
                                        <span>» </span>
                        </li>
                    <li class="category348">
                            <strong>Sell A Business</strong>
                                    </li>
              </ul>
    </div> <!--inner-->
  </div> <!--breadcrumbs-->
             
          <article class="col-main">                                          
                            

<div class="page-title">
        <h2>Sell A Business - Ads Posting</h2>
</div> <!--page-title-->

 
<div class="category-products"><br/>
  <form id="contactForm" >


  <div class="column thirty">

        <ul class="form-list">
            <li>
                    <label for="heading">Ad Heading<em class="required">*</em></label>
					<div class="input-box">
                    <input name="heading" id="heading" title="heading" value="" class="input-text required-entry" type="text" required/>
					</div>
            </li>
			
			 <li>
                    <label for="businesstype">Business Type<em class="required">*</em></label>
            
                  <div class="input-box">
				  <select name="businesstype" id="businesstype" title="businesstype" class="required-entry input-text" required>
 <option value="">--- Select ---</option> 
 <option value="Franchise">Franchise</option> 
 <option value="Non_Franchise">Non Franchise</option>  
</select>
           </div>

		   </li>
		    <li>
                    <label for="companytype">Company Type<em class="required">*</em></label>
            
                  <div class="input-box">
				  <select name="companytype" id="companytype" title="companytype" class="required-entry input-text" onchange="change(this.value)" required>
 <option value="">--- Select ---</option> 
 <option value="Sole_Proprietor">Sole Proprietor</option> 
 <option value="Partnership">Partnership</option>  
 <option value="Sdn_Bhd">Sdn Bhd</option>  
 <option value="Bhd">Bhd</option>  
</select>
           </div>
		   </li>
		   
		   <li>
                    <label for="businesscategory">Business Category<em class="required">*</em></label>
            
                  <div class="input-box">
				  <select name="businesscategory" id="businesscategory" title="businesscategory" class="required-entry input-text" required>
 <option value="">--- Select ---</option> 
</select>
           </div>
		   </li>  
		   
		     
		   <li>
                    <label for="businesssubcategory">Business Sub Category<em class="required">*</em></label>
            
                  <div class="input-box">
				  <select name="businesssubcategory" id="businesssubcategory" title="businesssubcategory" class="required-entry input-text" required>
 <option value="">--- Select ---</option> 
</select>
           </div>
		   </li>  
		   
		    <li>
                    <label for="Country">Country<em class="required">*</em></label>
            
                  <div class="input-box">
				  <select name="Country" id="Country" title="Country" class="required-entry input-text" required>
 <option value="">--- Select ---</option> 
</select>
           </div>
		   </li>  
		   
		    <li>
                    <label for="State">State<em class="required">*</em></label>
            
                  <div class="input-box">
				  <select name="State" id="State" title="State" class="required-entry input-text" required>
 <option value="">--- Select ---</option> 
</select>
           </div>
		   </li>   
		   
		   
		    <li>
                    <label for="City">City<em class="required">*</em></label>
            
                  <div class="input-box">
				  <select name="City" id="City" title="City" class="required-entry input-text" required>
 <option value="">--- Select ---</option> 
</select>
           </div>
		   </li>   
		   
		   
			
			
		   
		    <li>
                    <label for="Year_Established">Year Established </label>
					<div class="input-box">
                    <input name="Year_Established" id="Year_Established" title="Year_Established" value="" class="input-text" type="text" />
					</div>
            </li>
		   
		    <li>
                    <label for="Contact_Title">Contact Title<em class="required">*</em></label>
            
                  <div class="input-box">
				  <select name="Contact_Title" id="Contact_Title" title="Contact_Title" class="required-entry input-text" required>
 <option value="">--- Select ---</option> 
 <option value="Mr">Mr</option> 
 <option value="Ms">Ms</option> 
 <option value="Mrs">Mrs</option> 
 <option value="Madam">Madam</option> 
 <option value="Datuk">Datuk</option> 
 <option value="Datin">Datin</option> 
 <option value="Dr">Dr</option>
</select>
           </div>
		   </li>   
		     <li>
                    <label for="contactname">Contact Name<em class="required">*</em></label>
					<div class="input-box">
                    <input name="contactname" id="contactname" title="contactname" value="" class="input-text required-entry" type="text" required/>
					</div>
            </li>
			<li>
                    <label for="contactno">Contact Mobile No.<em class="required">*</em></label>
					<div class="input-box">
                    <input name="contactno" id="contactno" title="contactno" value="" class="input-text required-entry" type="text" required/>
					</div>
            </li>
		
			
			<li>
                    <label for="email">Email Address<em class="required">*</em></label>
					<div class="input-box">
                    <input name="email" id="email" title="email" value="" class="input-text required-entry" type="text" required/>
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
                    <input name="price" id="price" title="price" value="" class="input-text" type="text" />
					</div>
            </li>
			<li>
                    <label for="financial_year">Financial Year Ended <em class="required">&nbsp;</em></label>
					<div class="input-box">
                    <input name="financialyear" id="financialyear" title="financialyear" value="" class="input-text" type="text" />
					</div>
            </li>
			
			<li>
                    <label for="annual_revenue">Annual Revenue</label>
					<div class="input-box">
                    <input name="annual_revenue" id="annual_revenue" title="annual_revenue" value="" class="input-text" type="text" />
					</div>
            </li>
			<li>
                    <label for="annualprofit_loss">Annual Profit/(Loss) After Tax </label>
					<div class="input-box">
                    <input name="annualprofit_loss" id="annualprofit_loss" title="annualprofit_loss" value="" class="input-text" type="text" />
					</div>
            </li>
			
			<li>
                    <label for="gross_profit ">Gross Profit </label>
					<div class="input-box">
                    <input name="gross_profit" id="gross_profit" title="gross_profit" value="" class="input-text" type="text" />
					</div>
            </li>
			
				<li>
                    <label for="staff_cost">Staff Cost</label>
					<div class="input-box">
                    <input name="staff_cost" id="staff_cost" title="staff_cost" value="" class="input-text" type="text" />
					</div>
            </li>
				<li>
                    <label for="rental ">Rental</label>
					<div class="input-box">
                    <input name="rental" id="rental" title="rental" value="" class="input-text" type="text" />
					</div>
            </li>
			
				<li>
                    <label for="employeesno">Number of Employees</label>
					<div class="input-box">
                    <input name="employeesno" id="employeesno" title="employeesno" value="" class="input-text" type="text" />
					</div>
            </li>
			
			
				<li>
                    <label for="ppe">Property, Plant & Equipment (PPE)</label>
					<div class="input-box">
                    <input name="ppe" id="ppe" title="ppe" value="" class="input-text" type="text" />
					</div>
            </li>
				<li>
                    <label for="inventories ">Inventories</label>
					<div class="input-box">
                    <input name="inventories" id="inventories" title="inventories" value="" class="input-text" type="text" />
					</div>
            </li>
			
				<li>
                    <label for="trade_receivables">Trade Receivables</label>
					<div class="input-box">
                    <input name="trade_receivables" id="trade_receivables" title="trade_receivables" value="" class="input-text" type="text" />
					</div>
            </li>
			<li>
                    <label for="trade_payables">Trade Payables</label>
					<div class="input-box">
                    <input name="trade_payables" id="trade_payables" title="trade_payables" value="" class="input-text" type="text" />
					</div>
            </li>
			
  </ul>
  
  
  </div>
  
  
 <div class="column thirty last">
  <label for="companyprofile">Company Profile (2000 characters)<em class="required">*</em></label>
              <textarea name="companyprofile" id="companyprofile" title="companyprofile" class="required-entry" cols="5" rows="17" maxlength="2000" required></textarea>
  

  
  
 <ul class="form-list">

  
  
  	<li>
                    <label for="attachment">Attachment  (e.g. business profile, photos) </label>
					<div class="input-box">
                    <input name="attachment" id="attachment" title="attachment" value="" class="input-text" type="file" />
					</div>
            </li>
   </ul>
         
   <label for="whythisbusiness">Why this business is worth investing? (2000 char)<em class="required">*</em></label>
              <textarea name="whythisbusiness" id="whythisbusiness" title="whythisbusiness" class="required-entry" cols="5" rows="17" maxlength="2000" required></textarea>
  

  <label for="sellingreason">Reason for Selling the Business (300 characters)<em class="required">*</em></label>
              <textarea name="sellingreason" id="sellingreason" title="sellingreason" class="required-entry" cols="2" rows="5" maxlength="300" required></textarea>
  
   <input type="text" name="hideit" id="hideit" value="" style="display:none !important;" />                  
   <button type="submit" id="next" title="Next" name="action" value="page3.do" class="button btn-sent"><span>&nbsp;&nbsp;&nbsp;Next&nbsp;&nbsp;&nbsp;</span></button>
   <button type="submit" id="payment" title="Payment" name="action" value="page3.do" class="button btn-sent" style="display:none"><span>&nbsp;&nbsp;&nbsp;Payment&nbsp;&nbsp;&nbsp;</span></button>
  
  
  
  
  <button type="submit" title="Back" class="button btn-sent"><span>&nbsp;&nbsp;&nbsp;Back&nbsp;&nbsp;&nbsp;</span></button>
  <img src="images/loader.gif" id="loader" style="display:none;">
  
 </div>

  
</form>
</div>
    

  </article> <!--main-container-inner-->
    
 
<!--div class="toolbar-bottom">
    </div-->


<div id="mgkquickview">
<div id="magikloading" style="display:none;text-align:center;margin-top:400px;"><img src="images/loader.gif" alt="loading">
</div></div>
<script type="text/javascript">
function callQuickView(qurl) { 
    jQuery('#mgkquickview').show();
    jQuery('#magikloading').show();
    jQuery.get(qurl, function(data) {
      jQuery.fancybox(data);
      jQuery('#magikloading').hide();
jQuery('#mgkquickview').hide();
    });
 }
 
</script>                   
          </article> 
          <aside class="col-left sidebar">               
       
<div class="side-nav-categories">
<div class="block-title">
Links
</div>
<div class="box-content box-category">
<ul>
<li>     <a href="buyer.html">Buyer</a>   </li>
<li>  <a href="seller.html">Seller</a></li>
<li>  <a href="franchise.html">Franchise</a></li>
<li>  <a href="serviceproviders.html">Service Providers</a></li>
<li>  <a href="forum.html">Forum</a></li>
<li>  <a href="learn.html">Learn</a></li> 





</ul>
</div> 
</div>  

<div class="block block-banner"><a href="#"><img src="images/advertisehere.jpg" alt="" /></a></div>                 
          </aside> <!--col-right sidebar-->         
          </div><!--main-container-inner-->
       </section> <!--main-container col2-left-layout-->   
      <section class="service-section service-section1">
          
      </section> <!--service-section service-section1--> 
       











	

<footer>

<div class="footer informative">

  <div class="inner">
<div class="footer-column-1">
<div class="footer-logo"><a title="Logo" href="#"><img src="images/logo1.png" alt="footer  logo" /></a></div>
<address><em class="add-icon">&nbsp;</em>XXXXXXXX, XXXXXXX <br /> &nbsp;XXXXXXXXX.</address>
<div class="phone-footer"><em class="phone-icon">&nbsp;</em> Alex : 012-6535669</div>
<div class="phone-footer"><em class="phone-icon">&nbsp;</em> James : 012-7771222</div>



<div class="email-footer"><em class="email-icon">&nbsp;</em> <a href="mailto:info@businesshunter.com.my" target="_blank">info@businesshunter.com.my</a></div>
</div>

<div class="footer-column">
<h4>Quick Links</h4>
<ul class="links">
<li class="first"><a title="Home" href="index.html">Home</a></li>
<li><a title="About" href="aboutus.html">About Us</a></li>
<li><a title="Services" href="services.html">Our Services</a></li>
<li><a title="Service Providers" href="serviceproviders.html">Service Providers</a></li>
</ul>
</div>
<div class="footer-column">
<h4>Useful Links</h4>
<ul class="links">
<li class="first"><a title="Your Account" href="#">Advertise With Us</a></li>
<li><a title="Business Opportunity" href="franchise.html">Business Opportunity</a></li>
<li><a title="Forum" href="forum.html">Forum</a></li>
<li class="last"><a title="Learn" href="learn.html">Learn</a></li> 
</ul>
</div>
<div class="footer-column">
<h4>Information</h4>
<ul class="links">
<li class="first"><a title="Site Map" href="sitemap.html">Site Map</a></li>
<li><a title="Terms & Conditions" href="terms.html">Terms & Conditions</a></li>
<li class=" last"><a title="Privacy Policy" href="privacypolicy.html">Privacy Policy</a></li> 
</ul>
</div> 


 <div class="footer-column-last">
        <div class="social">
       <h4>Follow Us</h4>
       <ul class="link">
                  <li class="fb"><a  target="_blank" rel="nofollow" href="#" title="Facebook"></a></li>
                  <li class="tw"><a target="_blank" rel="nofollow"  href="#" title="Twitter"></a></li>
                  <li class="googleplus"><a target="_blank" rel="nofollow" href="#" title="GooglePlus"></a></li>
               </ul>
    </div>
      </div> 
</div> 

<div class="footer-bottom">
<div class="inner">
<div class="coppyright">Copyright &copy; 2016. All Rights Reserved. </div>
<div class="bottom_links">
<ul class="links">
<li><a title="Buyer" href="buyer.html">Buyer</a></li>
<li><a title="Seller" href="seller.html">Seller</a></li>
<li class="last"><a title="Contact Us" href="#">Contact Us</a></li>
</ul>
</div>
</div>
</div>
           

</div>

</footer>

<div class="orange-slider">
  <div class="text alignleft">Reach Us</div>
  <div class="icons">
    <a  class="show_hide" id="questionbox-side-phonebutton" href="javascript:void(0)"><i class="icon-phones"></i></a>
    <a class="show_hide1" id="questionbox-side-emailbutton" href="javascript:void(0)"><i style="font-size:20px" class="icon-email"></i></a> 
  </div> 
</div> 

<div id="hideShow" style="text-align:left;display:none">
<div class="right-side-content hidden1">
  
   <div class="slider-phone active">
<h2>TALK TO US</h2>
<h3>AVAILABLE 24/7</h3>
<p class="textcenter">Alex : <span class="phone-number"> 012-6535669 </span></p><p class="textcenter">James : <span class="phone-number"> 012-7771222 </span></p>
</div> 
   <a href="javascript:void(0)" id="hideDiv" class="slider-close"></a>
</div> 
</div> 

<div id="hideShow1" style="text-align:left;display:none">
  <div class="right-side-content hidden1">

  <div class="slider-email active">

<div id="messages_product_view"></div>
<div id="formSuccess" style="display:none;">Your inquiry was submitted and will be responded to as soon as possible. Thank you for contacting us.</div>
<form id="contactForm" action="page3.do">


  <div class="column sixty">
      <h2>TALK TO US</h2>

        <ul>
            <li>
                    <label for="name">Name<em class="required">*</em></label>
                    <input name="name" id="name" title="Name" value="" class="input-text required-entry" type="text" />
            </li>
            <li>
                    <label for="email">Email<em class="required">*</em></label>
                    <input name="email" id="email" title="Email" value="" class="input-text required-entry validate-email" type="text" />
            </li>
            <li>
                    <label for="telephone">Telephone</label>
                    <input name="telephone" id="telephone" title="Telephone" value="" class="input-text" type="text" />
            </li><p class="required">* Required Fields</p>
        </ul>
  </div> <!--column sixty-->
  <div class="column fourty last">
     <div class="padding">
              <label for="comment">Message<em class="required">*</em></label>
              <textarea name="comment" id="comment" title="Message" class="required-entry input-text" cols="5" rows="3"></textarea>
              <div class="textright">
                 
                 <input type="text" name="hideit" id="hideit" value="" style="display:none !important;" />
                 <button type="submit" title="Submit" class="button btn-sent"><span>Submit</span></button>
		 <img src="images/loader.gif" id="loader" style="display:none;">
              </div> 
     </div>
  </div> 
       

</form>
<script type="text/javascript">
    var formId = 'contactForm';
    var myForm = new VarienForm(formId, true);
    var postUrl = "index.html";
    function doAjax() {
        if (myForm.validator.validate()) {
            var request = new Ajax.Request(      
            postUrl,
            {
                method: 'post',      
                onLoading: function() {   
                  document.getElementById('loader').style.display='inline';   
                },
                onComplete: function(transport){                  
                     $(formId).hide();
                     $('formSuccess').show();       
                     
                },
                parameters: $(formId).serialize(true)  
            }
            );
            return false;
     
        }

    }
  
  new Event.observe(formId, 'submit', function(e){
    e.stop();
    doAjax();
  });
  function change(val){
	  if(val == 'Sdn_Bhd'){
		  document.getElementById('payment').style.display='block';
		  document.getElementById('next').style.visibility='hidden';
	  }
  }
</script>  

<a href="javascript:void(0)" id="hideDiv1" class="slider-close"></a>
   </div> 
 </div> 
</div>
<script language=javascript type='text/javascript'>

jQuery('.show_hide').click(function(){
            jQuery("#hideShow").show(); 
            jQuery("#hideShow1").hide();
        });

jQuery('.show_hide1').click(function(){
            jQuery("#hideShow1").show();
            jQuery("#hideShow").hide(); 
        });

jQuery('#hideDiv').click(function(){
            jQuery("#hideShow").hide(); 
        });

jQuery('#hideDiv1').click(function(){
            jQuery("#hideShow1").hide(); 
        });

</script>

      

  </body>
</html>