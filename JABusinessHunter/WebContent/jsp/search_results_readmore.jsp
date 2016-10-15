

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
    height: 175px;
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
</style>

            
<div  id="right_toolbar">
     
    		  <jsp:include page="search.jsp"></jsp:include>
	  
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
<jsp:include page="loginHeader.jsp"></jsp:include>
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

			<jsp:include page="menu.jsp"></jsp:include>
			<jsp:include page="nav.jsp"></jsp:include>
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
         
   <section class="main-container"> 
<!-- BEGIN Main Container Inner-->
          <article class="main-container-inner">              
              
  <div class="breadcrumbs">
    <div class="inner">
      <ul>
                    <li class="home">
                            <a href="home.do" title="Go to Home Page">Home</a>
                                        <span>» </span>
                        </li>
                    <li class="category365">
                            <a href="#" title="">Search Results</a> 
                        </li> 
              </ul>
    </div> <!--inner-->
  </div> <!--breadcrumbs-->
               
                            <div class="col-main">

 
  <div class="product-next-prev">
               <a class="product-next" title="Next" href="#"><span></span></a>
        
               <a class="product-prev" title="Previous" href="#"><span></span></a>
          
  </div> 

<div class="product-view">
 

  <div class="product-essential">

  
        <div id="product-img-box"> 
                 <div class="bx-wrapper">
                <div class="bx-viewport">
                  <ul id="large-images1">
                                           <li id="0">
                         <a class="zoomable zoomified parent-zoom"  href="#inline0" id="various0">  
                            <img style="margin: 0px;" src="images/bus3.jpg" class="product-image"> 
                         </a>
                         <div style="display: none;"><div id="inline0" style="text-align:center;" class="zm">   
                            <img style="margin: 0px;" src="images/bus3.jpg" class="product-image">    
                         </div></div>
             <script type="text/javascript">
                jQuery(document).ready(function() {
                jQuery("#various0").fancybox({
                'transitionIn'  : 'elastic',
                'transitionOut' : 'elastic'
                });
                });
             </script>
                       </li> 
                                                          
                                      
                  </ul>
                </div> 
               
              </div>  

     </div>

        <div class="no-display">
            <input type="hidden" name="product" value="56" />
            <input type="hidden" name="related_product" id="related-products-field" value="" />
        </div>
               
          <div class="product-shop">
             <div class="product-name">
               <h1 itemprop="name">Business Heading</h1>
             </div>
                            <div class="short-description" style="text-align:justify;">                
               Business Profile short description. Business Profile short description.Business Profile short description.Business Profile short description.Business Profile short description.Business Profile short description. Business Profile short description. Business Profile short description.Business Profile short description.Business Profile short description.Business Profile short description.Business Profile short description. Business Profile short description. Business Profile short description.Business Profile short description.Business Profile short description.Business Profile short description.Business Profile short description. Business Profile short description. Business Profile short description.Business Profile short description.Business Profile short description.Business Profile short description.Business Profile short description. 
			   Business Profile short description. Business Profile short description.Business Profile short description.Business Profile short description.Business Profile short description.Business Profile short description. Business Profile short description. Business Profile short description.Business Profile short description.Business Profile short description.Business Profile short description.Business Profile short description. Business Profile short description. Business Profile short description.Business Profile short description.Business Profile short description.Business Profile short description.Business Profile short description. Business Profile short description. Business Profile short description.Business Profile short description.Business Profile short description.Business Profile short description.Business Profile short description.
			  

				 </div>
              
 
  
         
 
 
<div class="toggle-content">

                       <div class="toggle toggle-white">
              <h4 class="trigger"><a href="#">Contact Details</a></h4>
              <div class="toggle_container" style="display: none;">
                   
    <div class="std">
      <p>
<strong>Contact Name : </strong>XXXXXXXX<br/>
<strong>Mobile Number :</strong> XXXXXXXX <br/>
<strong>Email Address : </strong>XXXXX@XXXXX.XX<br/>
<strong>City :</strong> XXXXXXXXX<br/>
<strong>State :</strong> XXXXXXXX<br/>
<strong>Country :</strong> XXXXXXXX<br/>
</p>
	  </div> <!--toggle_container -->
           </div> <!--toggle toggle-white-->
                                  <div class="toggle toggle-white">
        <h4 class="trigger"><a href="#">Company Details</a></h4>
        <div class="toggle_container" style="display: none;">
           
 <div class="std">
		   <p><strong>Year Established :</strong>XXXXXXXX<br/>
			
			<strong>Annual Revenue :</strong>XXXXXXXX<br/>
			<strong>Annual Profit / (Loss) After Tax :</strong>XXXXXXXX<br/>
			<strong>Gross Profit :</strong>XXXXXXXX<br/>
			<strong>Number of Employees :</strong>XXXXXXXX<br/>
			 
			
			</p>        </div> <!--toggle_container -->
        </div> <!--toggle toggle-white-->
                <div class="toggle toggle-white">
        <h4 class="trigger"><a href="#">Business Importance</a></h4>
        <div class="toggle_container" style="display: none;">
            
       
 <div class="std">
		   <p> 
		   
		   Business description.    Business description.   Business description.   Business description.   Business description.   Business description.   Business description.
		      Business description.   Business description.   Business description.   Business description.   Business description.   Business description.   Business description.
			     Business description.    Business description.   Business description.   Business description.   Business description.   Business description.   Business description.
		      Business description.   Business description.   Business description.   Business description.   Business description.   Business description.   Business description.
			  
		      Business description.    Business description.   Business description.   Business description.   Business description.   Business description.   Business description.
		      Business description.   Business description.   Business description.   Business description.   Business description.   Business description.   Business description.
			  
		      Business description.    Business description.   Business description.   Business description.   Business description.   Business description.   Business description.
		      Business description.   Business description.   Business description.   Business description.   Business description.   Business description.   Business description.
			  
		      Business description.    Business description.   Business description.   Business description.   Business description.   Business description.   Business description.
		      Business description.   Business description.   Business description.   Business description.   Business description.   Business description.   Business description.
			  
		   
		   
			</p>        </div>

			</div> <!--toggle toggle-white-->
    
</div> <!--toggle-content-->
          <!-- Magik Social Share-->
            	<div class="social">      
       <ul class="link">

					<li class="fb">
			<a href="#" rel="nofollow" target="_blank" style="text-decoration:none;">
				
			</a>
			</li>

				<li class="linkedin">
			<a href="#" rel="nofollow" target="_blank" style="text-decoration:none;">
				
			</a>
			</li>

				<li class="tw">
			<a href="#" rel="nofollow" target="_blank" style="text-decoration:none;">
				
			</a>
			</li>

				 
				<li class="googleplus">
			<a href="#" rel="nofollow" target="_blank" style="text-decoration:none;">
				
			</a>
			</li>

	</ul>
	</div>

			    
		      
				 
                                
            
       </div>     
 
</div> 
</div>  
</div>   <div class="clear"></div>
          </article> 
      </section>  
	<jsp:include page="footer.jsp"></jsp:include>
	<%-- <jsp:include page="reachUsSlider.jsp"></jsp:include> --%>
  </body>
</html>