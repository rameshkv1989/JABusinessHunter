

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
        
           <div class="slider-intro">
<div class="the-slideshow slideshow-wrapper">
<ul class="slideshow" style="overflow: hidden;">
<li class="slide">
<p><a href="#"> <img src="images/1.jpg" alt="banner img" /></a></p>
</li>
<li class="slide">
<p><a href="#"> <img src="images/2.jpg" alt="banner img1" /></a></p>
</li>
<li class="slide">
<p><a title="#" href="#"> <img src="images/3.jpg" alt="banner img2" /> </a></p></li>
</ul>
<a id="home-slides-prev" class="backward browse-button" href="#">previous</a> <a id="home-slides-next" class="forward browse-button" href="#">next</a>




<div id="home-slides-pager" class="tab-pager tab-pager-img tab-pager-ring-lgray">&nbsp;</div>
</div>
</div>
 <div>
<div class="blog_fix latest-news">
  <div class="blog_post">
     
			<ul style="top: 0px; left: 0px;">
									<li>

                                                                                                                              <div class="blog-l blog-img">
                                                <a href="#"> <img src="images/ad1.jpg" width="300" height="200" alt="blog image" /> </a>
                                                <div class="mask"> 
                                                   <a class="info" href="#">Read More</a> 
                                                </div>
                                              </div> 
                                        						<h2><a href="#">Buy Business</a></h2>
                                              </li>


	<li>

                                                                                                                              <div class="blog-l blog-img">
                                                <a href="#"> <img src="images/ad1.jpg" width="300" height="200" alt="blog image" /> </a>
                                                <div class="mask"> 
                                                   <a class="info" href="#">Read More</a> 
                                                </div>
                                              </div> 
                                        						<h2><a href="#">Sell Business</a></h2>
                                              </li>



<li>

                                                                                                                              <div class="blog-l blog-img">
                                                <a href="#"> <img src="images/ad1.jpg" width="300" height="200" alt="blog image" /> </a>
                                                <div class="mask"> 
                                                   <a class="info" href="#">Read More</a> 
                                                </div>
                                              </div> 
                                        						<h2><a href="#">Venture Capitalist</a></h2>
                                              </li>


<li>

                                                                                                                              <div class="blog-l blog-img">
                                                <a href="#"> <img src="images/ad1.jpg" width="300" height="200" alt="blog image" /> </a>
                                                <div class="mask"> 
                                                   <a class="info" href="#">Read More</a> 
                                                </div>
                                              </div> 
                                        						<h2><a href="#">Promote Your Business</a></h2>
                                              </li>













											  </ul>

  </div> 
</div>
</div>
    

  <div class="offer-banner">
<div class="offer-banner-section">
<div class="col"><img src="images/ad2.jpg" alt=" " /></div>
<div class="col-mid"><h4 style="text-align:justify; font-weight:bold;">
Hi, we are glad that you are visiting our business portal.  A big WELCOME to you. 
<br/><br/>
Most of the businessman, individuals or service providers are still using the traditional ways to advertise their ads to sell their businesses, to search for business opportunities or to offer business services respectively.  The traditional ways such as posting at newspaper, business magazine or through word of mouth of which are expensive, limited coverage and slow in distribution of information.  Hence, we acknowledged the need to improvise our ways towards ease of use, cost effective and efficient, to meet the ends.  
<a href="aboutus.do">Read More >></a></h4>
 </div>
<div class="col last"><img src="images/ad2.jpg" alt=" " /> </div>
</div>
</div>  


<section>

       <div class="brand-logo">
	   
	    
	   
	   
	   <div class="jcarousel-skin-tango">
	   
	    <div class="blog-title">
       <h2><span>Service Providers</span></h2>
     </div> 
	   
<div id="mycarousel3" class="jcarousel-container jcarousel-container-horizontal" style="position: relative; display: block;">
<div class="jcarousel-clip jcarousel-clip-horizontal" style="overflow: hidden; position: relative;">
<ul class="jcarousel-list jcarousel-list-horizontal" style="overflow: hidden; position: relative; top: 0px; margin: 0px; padding: 0px; left: 0px; width: 1940px;">
<li class="jcarousel-item jcarousel-item-horizontal jcarousel-item-1 jcarousel-item-1-horizontal" style="float: left; list-style: none outside none;">  <img src="images/splogo1.png" alt="brand-logo" /></li>
<li class="jcarousel-item jcarousel-item-horizontal jcarousel-item-2 jcarousel-item-2-horizontal" style="float: left; list-style: none outside none;">  <img src="images/splogo2.png" alt="brand-logo" /></li>
<li class="jcarousel-item jcarousel-item-horizontal jcarousel-item-3 jcarousel-item-3-horizontal" style="float: left; list-style: none outside none;">  <img src="images/splogo3.png" alt="brand-logo" /></li>
<li class="jcarousel-item jcarousel-item-horizontal jcarousel-item-4 jcarousel-item-4-horizontal" style="float: left; list-style: none outside none;">  <img src="images/splogo4.png" alt="brand-logo" /></li>
<li class="jcarousel-item jcarousel-item-horizontal jcarousel-item-5 jcarousel-item-5-horizontal" style="float: left; list-style: none outside none;">  <img src="images/splogo5.png" alt="brand-logo" /></li>
<li class="jcarousel-item jcarousel-item-horizontal jcarousel-item-6 jcarousel-item-6-horizontal" style="float: left; list-style: none outside none;">  <img src="images/splogo6.png" alt="brand-logo" /></li>
<li class="jcarousel-item jcarousel-item-horizontal jcarousel-item-7 jcarousel-item-7-horizontal" style="float: left; list-style: none outside none;">  <img src="images/splogo3.png" alt="brand-logo" /></li>
<li class="jcarousel-item jcarousel-item-horizontal jcarousel-item-8 jcarousel-item-8-horizontal" style="float: left; list-style: none outside none;">  <img src="images/splogo2.png" alt="brand-logo" /></li>
<li class="jcarousel-item jcarousel-item-horizontal jcarousel-item-9 jcarousel-item-9-horizontal" style="float: left; list-style: none outside none;">  <img src="images/splogo5.png" alt="brand-logo" /></li>
<li class="jcarousel-item jcarousel-item-horizontal jcarousel-item-10 jcarousel-item-10-horizontal" style="float: left; list-style: none outside none;"><img src="images/splogo4.png" alt="brand-logo" /></li>
</ul>
</div>
<div class="jcarousel-prev jcarousel-prev-horizontal" style="display: block;">&nbsp;</div>
<div class="jcarousel-next jcarousel-next-horizontal" style="display: block;">&nbsp;</div>
</div>
</div></div></section>

	  <div class="our-features-box"><div class="store-img-box">
<ul>
<li>
<div class="feature-box"><a href="#">
<div class="icon-reponsive">&nbsp;</div>
<div class="content">Business For Sale</div></a>
</div>
</li>
<li>
<div class="feature-box"><a href="franchise.html">
<div class="icon-support">&nbsp;</div>
<div class="content">Franchise </div></a>
</div>
</li>
<li class="last">
<div class="feature-box"><a href="serviceproviders.html">
<div class="icon-admin">&nbsp;</div>
<div class="content">Service Provider </div></a>
</div>
</li>
</ul>
</div>
</div>
</section>

<jsp:include page="footer.jsp"></jsp:include>
<jsp:include page="reachUsSlider.jsp"></jsp:include>

      

  </body>
</html>