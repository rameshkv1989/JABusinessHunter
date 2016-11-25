

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
<script type="text/javascript" src="js/common.js"></script>
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

			<%-- <jsp:include page="menu.jsp"></jsp:include> --%>
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
         
  <section class="main-container col2-left-layout">
           <div class="main-container-inner">   
            
  <div class="breadcrumbs">
    <div class="inner">
      <ul>
                    <li class="home">
                            <a href="home.do" title=" ">Home</a>
                                        <span>» </span>
                        </li>
                    <li class="category348">
                           <strong>Search Results</strong>
                                    </li>
              </ul>
    </div> <!--inner-->
  </div> <!--breadcrumbs-->
             
        <article class="col-main">                                          
     
 


<div class="toolbar">

      
         
    <div class="pager"> 
    

    
    
    
        <div class="pages">
        <!--<strong></strong>-->
        <ol>
        
        
        
                                    <li class="current"><span class="button button-dark">1</span></li>
                                                <li><a class="button" href="#">2</a></li>
                                                <li><a class="button" href="#">3</a></li>
                    

        
        
                    <li>
                <a class="button next i-next" href="#" title="Next">
                                                                               </a>
            </li>
                </ol>

    </div>
    
    
 
<!-- BEGIN LIMITER -->
    <div id="limiter">
     <ul>
      <label>View: </label>
       <li>
          <a href="#"> 
             
                 
             
                 
                            10    
                        <span class="right-arrow"></span>
        </a>
        <ul>           
                          
            <li>
              <a href="#">
                 20             </a>
            </li>
                          
            <li>
              <a href="#">
                30             </a>
            </li>
                          
            <li>
              <a href="#">
                40           </a>
            </li>
                     
        </ul> 

        </li>
      </ul>
    </div>  
  </div> 
       
</div>  
<div class="category-products"> 
 <form id="readMoreForm" method="post">          
  <ul class="products-grid first last odd">       

                    <li class="item first">

            <div class="item-inner">
            <div class="item-img">
            <div class="item-img-info">
            
              <a href="#" title=" " class="product-image">
                 
                  <img src="images/bus1.jpg" alt=" ">                 
              </a>
               <div class="sale-label sale-top-right"> Sale </div>              
             
              <div class="item-box-hover">
              <div class="box-inner">
                        
              <div class="product-detail-bnt">   
                                     <a data-fancybox-type="ajax" onclick="callQuickView('images/bus1.jpg');" title="Quick View" class="button detail-bnt"><span>Quick View</span></a>                    
                                            
              </div> 
              
              </div> 
              </div> 
               </div> 
              </div> 
			  
              <div class="item-info">
                <div class="info-inner">
                <div class="item-title">
                 <a class="" href="#" title=" ">
                  Business Heading               </a>                  
                
                 </div> 
                       
                 </div> 
              </div>  
              <div class="actions">  
           
              <span class="add-to-links">
                                     <button title="Add to Cart" type="button" class="button btn-cart" data-original-title="Add to Cart" onclick="setLocation('#')"><span>Read More</span></button>
                </div> 
            </div> 



            </li>

                 
                            <li class="item">

             <div class="item-inner">
            <div class="item-img">
            <div class="item-img-info">
            
              <a href="#" title=" " class="product-image">
                 
                  <img src="images/bus2.jpg" alt=" ">                 
              </a>
               <div class="sale-label sale-top-right"> Sale </div>              
             
              <div class="item-box-hover">
              <div class="box-inner">
                        
              <div class="product-detail-bnt">   
                                     <a data-fancybox-type="ajax" onclick="callQuickView('#');" title="Quick View" class="button detail-bnt"><span>Quick View</span></a>                    
                                            
              </div> 
              
              </div> 
              </div> 
               </div> 
              </div> 
			  
              <div class="item-info">
                <div class="info-inner">
                <div class="item-title">
                 <a class="" href="#" title=" ">
                  Business Heading               </a>                  
                
                 </div> 
                       
                 </div> 
              </div>  
              <div class="actions">  
           
              <span class="add-to-links">
                     <button title="Add to Cart" type="button" class="button btn-cart" data-original-title="Add to Cart" onclick="readMore('#')"><span>Read More</span></button>
                </div> 
            </div> 



           

            </li>

                 
                            <li class="item last">

             <div class="item-inner">
            <div class="item-img">
            <div class="item-img-info">
            
              <a href="#" title=" " class="product-image">
                 
                  <img src="images/bus1.jpg" alt=" ">                 
              </a>
               <div class="sale-label sale-top-right"> Buy </div>              
             
              <div class="item-box-hover">
              <div class="box-inner">
                        
              <div class="product-detail-bnt">   
                                     <a data-fancybox-type="ajax" onclick="callQuickView('#');" title="Quick View" class="button detail-bnt"><span>Quick View</span></a>                    
                                            
              </div> 
              
              </div> 
              </div> 
               </div> 
              </div> 
			  
              <div class="item-info">
                <div class="info-inner">
                <div class="item-title">
                 <a class="" href="#" title=" ">
                  Business Heading               </a>                  
                
                 </div> 
                       
                 </div> 
              </div>  
              <div class="actions">  
           
              <span class="add-to-links">
                                     <button title="Add to Cart" type="button" class="button btn-cart" data-original-title="Add to Cart" onclick="setLocation('#')"><span>Read More</span></button>
                </div> 
            </div> 



            


            </li>

        
		
		
                    <li class="item first">

            <div class="item-inner">
            <div class="item-img">
            <div class="item-img-info">
            
              <a href="#" title=" " class="product-image">
                 
                  <img src="images/bus1.jpg" alt=" ">                 
              </a>
               <div class="sale-label sale-top-right"> Sale </div>              
             
              <div class="item-box-hover">
              <div class="box-inner">
                        
              <div class="product-detail-bnt">   
                                     <a data-fancybox-type="ajax" onclick="callQuickView('#');" title="Quick View" class="button detail-bnt"><span>Quick View</span></a>                    
                                            
              </div> 
              
              </div> 
              </div> 
               </div> 
              </div> 
			  
              <div class="item-info">
                <div class="info-inner">
                <div class="item-title">
                 <a class="" href="#" title=" ">
                  Business Heading               </a>                  
                
                 </div> 
                       
                 </div> 
              </div>  
              <div class="actions">  
           
              <span class="add-to-links">
                                     <button title="Add to Cart" type="button" class="button btn-cart" data-original-title="Add to Cart" onclick="setLocation('#')"><span>Read More</span></button>
                </div> 
            </div> 



            </li>

                 
                            <li class="item">

             <div class="item-inner">
            <div class="item-img">
            <div class="item-img-info">
            
              <a href="#" title=" " class="product-image">
                 
                  <img src="images/bus2.jpg" alt=" ">                 
              </a>
               <div class="sale-label sale-top-right"> Sale </div>              
             
              <div class="item-box-hover">
              <div class="box-inner">
                        
              <div class="product-detail-bnt">   
                                     <a data-fancybox-type="ajax" onclick="callQuickView('#');" title="Quick View" class="button detail-bnt"><span>Quick View</span></a>                    
                                            
              </div> 
              
              </div> 
              </div> 
               </div> 
              </div> 
			  
              <div class="item-info">
                <div class="info-inner">
                <div class="item-title">
                 <a class="" href="#" title=" ">
                  Business Heading               </a>                  
                
                 </div> 
                       
                 </div> 
              </div>  
              <div class="actions">  
           
              <span class="add-to-links">
                                     <button title="Add to Cart" type="button" class="button btn-cart" data-original-title="Add to Cart" onclick="setLocation('#')"><span>Read More</span></button>
                </div> 
            </div> 



           

            </li>

                 
                            <li class="item last">

             <div class="item-inner">
            <div class="item-img">
            <div class="item-img-info">
            
              <a href="#" title=" " class="product-image">
                 
                  <img src="images/bus1.jpg" alt=" ">                 
              </a>
               <div class="sale-label sale-top-right"> Buy </div>              
             
              <div class="item-box-hover">
              <div class="box-inner">
                        
              <div class="product-detail-bnt">   
                                     <a data-fancybox-type="ajax" onclick="callQuickView('#');" title="Quick View" class="button detail-bnt"><span>Quick View</span></a>                    
                                            
              </div> 
              
              </div> 
              </div> 
               </div> 
              </div> 
			  
              <div class="item-info">
                <div class="info-inner">
                <div class="item-title">
                 <a class="" href="#" title=" ">
                  Business Heading               </a>                  
                
                 </div> 
                       
                 </div> 
              </div>  
              <div class="actions">  
           
              <span class="add-to-links">
                                     <button title="Add to Cart" type="button" class="button btn-cart" data-original-title="Add to Cart" onclick="setLocation('#')"><span>Read More</span></button>
                </div> 
            </div> 



            


            </li>

        
                    <li class="item first">

            <div class="item-inner">
            <div class="item-img">
            <div class="item-img-info">
            
              <a href="#" title=" " class="product-image">
                 
                  <img src="images/bus1.jpg" alt=" ">                 
              </a>
               <div class="sale-label sale-top-right"> Sale </div>              
             
              <div class="item-box-hover">
              <div class="box-inner">
                        
              <div class="product-detail-bnt">   
                                     <a data-fancybox-type="ajax" onclick="callQuickView('#');" title="Quick View" class="button detail-bnt"><span>Quick View</span></a>                    
                                            
              </div> 
              
              </div> 
              </div> 
               </div> 
              </div> 
			  
              <div class="item-info">
                <div class="info-inner">
                <div class="item-title">
                 <a class="" href="#" title=" ">
                  Business Heading               </a>                  
                
                 </div> 
                       
                 </div> 
              </div>  
              <div class="actions">  
           
              <span class="add-to-links">
                                     <button title="Add to Cart" type="button" class="button btn-cart" data-original-title="Add to Cart" onclick="setLocation('#')"><span>Read More</span></button>
                </div> 
            </div> 



            </li>

                 
                            <li class="item">

             <div class="item-inner">
            <div class="item-img">
            <div class="item-img-info">
            
              <a href="#" title=" " class="product-image">
                 
                  <img src="images/bus2.jpg" alt=" ">                 
              </a>
               <div class="sale-label sale-top-right"> Sale </div>              
             
              <div class="item-box-hover">
              <div class="box-inner">
                        
              <div class="product-detail-bnt">   
                                     <a data-fancybox-type="ajax" onclick="callQuickView('#');" title="Quick View" class="button detail-bnt"><span>Quick View</span></a>                    
                                            
              </div> 
              
              </div> 
              </div> 
               </div> 
              </div> 
			  
              <div class="item-info">
                <div class="info-inner">
                <div class="item-title">
                 <a class="" href="#" title=" ">
                  Business Heading               </a>                  
                
                 </div> 
                       
                 </div> 
              </div>  
              <div class="actions">  
           
              <span class="add-to-links">
                                     <button title="Add to Cart" type="button" class="button btn-cart" data-original-title="Add to Cart" onclick="setLocation('#')"><span>Read More</span></button>
                </div> 
            </div> 



           

            </li>

                 
                            <li class="item last">

             <div class="item-inner">
            <div class="item-img">
            <div class="item-img-info">
            
              <a href="#" title=" " class="product-image">
                 
                  <img src="images/bus1.jpg" alt=" ">                 
              </a>
               <div class="sale-label sale-top-right"> Buy </div>              
             
              <div class="item-box-hover">
              <div class="box-inner">
                        
              <div class="product-detail-bnt">   
                                     <a data-fancybox-type="ajax" onclick="callQuickView('#');" title="Quick View" class="button detail-bnt"><span>Quick View</span></a>                    
                                            
              </div> 
              
              </div> 
              </div> 
               </div> 
              </div> 
			  
              <div class="item-info">
                <div class="info-inner">
                <div class="item-title">
                 <a class="" href="#" title=" ">
                  Business Heading               </a>                  
                
                 </div> 
                       
                 </div> 
              </div>  
              <div class="actions">  
           
              <span class="add-to-links">
                                     <button title="Add to Cart" type="button" class="button btn-cart" data-original-title="Add to Cart" onclick="setLocation('#')"><span>Read More</span></button>
                </div> 
            </div> 



            


            </li>

        
		
		
		
		
		
		
		
		
		
		
		
                  
                 
          </ul>        
      














	  <script type="text/javascript">decorateGeneric($$('ul.products-grid'), ['odd','even','first','last'])</script>
	  </form> 
    </div> <!--category-products-->

<!--div class="toolbar-bottom">
    </div-->


<div id="mgkquickview">
<div id="magikloading" style="display:none;text-align:center;margin-top:400px;"><img src="http://demo.magikthemes.com/skin/frontend/rwd/accord/images/mgkloading.gif" alt="loading">
</div></div>
<script type="text/javascript">
/* function callQuickView(qurl,image) { 
    jQuery('#mgkquickview').show();
    jQuery('#magikloading').show();
    qurl=qurl+'?imageNeed='+image;
    options = {
            type: 'image',
        };
    jQuery.get(qurl, function(results) {
      images = [];
      data = jQuery(results).data('images').split(',');
      jQuery.fancybox(data,options);
      jQuery('#magikloading').hide();
      jQuery('#mgkquickview').hide();
    });
 } */
function callQuickView(image) { 
	image='images/bus1.jpg';
    jQuery('#mgkquickview').show();
    jQuery('#magikloading').show();
    options = {
            type: 'image',
    };
      jQuery.fancybox(image,options);
      jQuery('#magikloading').hide();
      jQuery('#mgkquickview').hide();
 }
 
function setLocation(image) { 
	document.getElementById('readMoreForm').action="readMore.do";
	document.getElementById('readMoreForm').submit();
 
 }
 
</script>                   
          </article>







		<jsp:include page="aside.jsp"></jsp:include> <!--col-right sidebar-->         
          </div><!--main-container-inner-->
       </section> <!--main-container col2-left-layout-->   
      <section class="service-section service-section1">
          
      </section> <!--service-section service-section1--> 
       
	<jsp:include page="footer.jsp"></jsp:include>
	<%-- <jsp:include page="reachUsSlider.jsp"></jsp:include> --%>
  </body>
</html>