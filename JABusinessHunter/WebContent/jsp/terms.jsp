<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

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
                           <strong>Terms & Conditions</strong>
                                    </li>
              </ul>
    </div> <!--inner-->
  </div> <!--breadcrumbs-->
             
          <article class="col-main">                                          
                            

<div class="page-title">
        <h2>Terms & Conditions</h2>
</div> <!--page-title-->


 

<div class="category-products"><br/>
   <p>
   
   These terms of service ("Terms", "Agreement") are an agreement between the operator of J&A Business Hunter Sdn Bhd ("J&A", "us", "we" or "our") and you ("User", "you" or "your"). This Agreement sets forth the general terms and conditions of your use of the http://www.businesshunter.com.my website and any of its products or services (collectively, "Website" or "Services").

Governing Law
These Terms are governed by the laws of the Malaysia and User hereby submit to the jurisdiction of the courts of Malaysia.

Accounts and membership
You must be at least 18 years of age to use this Website. By using this Website and by agreeing to this Agreement you warrant and represent that you are at least 18 years of age. If you create an account at the Website, you are responsible for maintaining the security of your account and you are fully responsible for all activities that occur under the account and any other actions taken in connection with it. Providing false contact information of any kind may result in the termination of your account. You must immediately notify us of any unauthorized uses of your account or any other breaches of security. We will not be liable for any acts or omissions by you, including any damages of any kind incurred as a result of such acts or omissions. We may suspend, disable, or delete your account (or any part thereof) if we determine that you have violated any provision of this Agreement or that your conduct or content would tend to damage our reputation and goodwill. If we delete your account for the foregoing reasons, you may not re-register for the our Services. We may block your email address and Internet protocol address to prevent further registration.
User content
We do not own any data, information or material ("Content") that you submit to the Website in the course of using the Service. You shall have sole responsibility for the accuracy, quality, integrity, legality, reliability, appropriateness, and intellectual property ownership or right to use of all submitted Content. We may, but have no obligation to monitor Content on the Website submitted or created using our Services by you. Unless specifically permitted by you, your use of the Website does not grant us the license to use, reproduce, adapt, modify, publish or distribute the Content created by you or stored in your user account for commercial, marketing or any similar purpose. But you grant us permission to access, copy, distribute, store, transmit, reformat, display and perform the Content of your user account solely as required for the purpose of providing the Services to you.

Seller's Terms
<ul>Before putting up any business listing post on this website you should carefully read the Terms and Conditions and in particular the Disclaimer as well as the following terms. If you do not agree to be bound by all of these, you should not advertise at all on this website.
<li>	J&A provides this website which gives you the opportunity to put up any business listing. J&A does not carry out any investigations or due diligence into the buyers, franchisee or/and any similar capability parties who use this website, or into the legitimacy of any statements made on the website. J&A strongly recommends that you make every effort to check and verify offers personally or through your professional advisers/agents.</li>
<li>	If you are contacted by a third party through your use of this website who appears to be non bona-fide or who acts dishonestly or incorrectly in any way or who contacts you for any other purpose than to negotiate the purchase of the item you have advertised (such as sale of business or services), you will contact J&A or email us forthwith setting out full details.</li>
<li>	You warrant that the content of the advertisement you place on the website will be true and accurate and hereby agree to indemnify J&A against all claims, demands, actions, proceedings, costs, losses, expenses or damages it may incur howsoever arising whether direct, indirect or consequential as a result of your use of this website, including, but not limited to, arising out of your obligations under any regulation or legislation relevant to the country in which your listing is added.</li>
<li>	J&A reserves the right to refuse to upload any business listing if we, in our reasonable opinion, consider such listing to be improper, fraudulent or otherwise not bona fide.</li>
<li>	J&A reserves the right to edit any business listing if we, in our reasonable opinion, believe such editing will improve the quality of the website. J&A does not allow the display of a seller's contact details within a business listing. All buyer messages will be delivered to sellers via the website. J&A reserves the right to edit listings and remove any contact details included.</li>
<li>	The decision where to place a listing within the index of business categories shall be at the sole discretion of J&A.
</ul>
Buyer's Terms
<ul>Before contacting a seller, franchisor or service provider of a business through this website you should carefully read the Terms and Conditions and in particular the Disclaimer as well as the following terms. If you do not agree to be bound by all of these, you should not contact a seller, franchisor or service provider regarding the purchase of a business or service on this website.
<li>	J&A provides this website which gives you the opportunity to purchase businesses, franchises or service providers by contacting the persons who advertise on this website. J&A does not carry out any investigations or due diligence into the sellers, franchisors or service providers who use this website. J&A strongly recommends that you make every effort to check and verify offers personally or through your professional advisers/agents.</li>
<li>	If you are contacted by a third party through your use of this website who appears to be non bona-fide or who acts dishonestly or incorrectly in any way or who contacts you for any other purpose than to negotiate the sale of the item they have advertised (such as sale of business or services), you will contact J&A or email us forthwith setting out full details.</li>
<li>	You hereby agree to indemnify J&A against all claims, demands, actions, proceedings, costs, losses, expenses or damages it may incur howsoever arising whether direct, indirect or consequential as a result of your use of this website.</li>
</ul>
<ul>Payments and Refunds
<li>	Subscription fees are paid in advance and our services begin once payment has been received.
<li>	J&A requires payments for services by credit card unless otherwise agreed in advance. J&A will charge you in Ringgit Malaysia only. You may also have to pay any applicable local taxes.
<li>	Please ensure that your payment card details are kept up to date. If we are unable to process payment from your card, we regret that it will be necessary to suspend your subscription and listing(s) until you provide us with details of a valid payment card. You can do this by contacting customer services or by updating your card details stored securely in your account. You will still be liable for any outstanding payments that could not be met when your account was suspended.
<li>	Refund requests are not allowed.
</ul>
Backups
We are not responsible for Content residing on the Website. In no event shall we be held liable for any loss of any Content. It is your sole responsibility to maintain appropriate backup of your Content. Notwithstanding the foregoing, on some occasions and in certain circumstances, with absolutely no obligation, we may be able to restore some or all of your data that has been deleted as of a certain date and time when we may have backed up data for our own purposes. We make no guarantee that the data you need will be available.
Links to other websites
Although this Website may be linked to other websites, we are not, directly or indirectly, implying any approval, association, sponsorship, endorsement, or affiliation with any linked website, unless specifically stated herein. We are not responsible for examining or evaluating, and we do not warrant the offerings of, any businesses or individuals or the content of their websites. We do not assume any responsibility or liability for the actions, products, services and content of any other third parties. You should carefully review the legal statements and other conditions of use of any website which you access through a link from this Website. Your linking to any other off-site pages or other websites is at your own risk.
Prohibited uses
In addition to other terms as set forth in the Agreement, you are prohibited from using the website or its content: (a) for any unlawful purpose; (b) to solicit others to perform or participate in any unlawful acts; (c) to violate any international, federal, provincial or state regulations, rules, laws, or local ordinances; (d) to infringe upon or violate our intellectual property rights or the intellectual property rights of others; (e) to harass, abuse, insult, harm, defame, slander, disparage, intimidate, or discriminate based on gender, sexual orientation, religion, ethnicity, race, age, national origin, or disability; (f) to submit false or misleading information; (g) to upload or transmit viruses or any other type of malicious code that will or may be used in any way that will affect the functionality or operation of the Service or of any related website, other websites, or the Internet; (h) to collect or track the personal information of others; (i) to spam, phish, pharm, pretext, spider, crawl, or scrape; (j) for any obscene or immoral purpose; or (k) to interfere with or circumvent the security features of the Service or any related website, other websites, or the Internet. We reserve the right to terminate your use of the Service or any related website for violating any of the prohibited uses.
Intellectual property rights
This Agreement does not transfer from J&A to you any J&A or third party intellectual property, and all right, title, and interest in and to such property will remain (as between the parties) solely with J&A. All trademarks, service marks, graphics and logos used in connection with our Website or Services, are trademarks or registered trademarks of J&A or J&A licensors. Other trademarks, service marks, graphics and logos used in connection with our Website or Services may be the trademarks of other third parties. Your use of our Website and Services grants you no right or license to reproduce or otherwise use any J&A or third-party trademarks.
Limitation of liability
In no event will J&A be liable for any incidental, consequential, or indirect damages (including, but not limited to, damages for loss of income or revenue, loss of profits, loss of business or contracts, loss of savings or investments, loss of data, loss of goodwill, loss of programs or information, or any other loss or damage of any kind) arising out of the use (or inability to use) the site, or any information, or transactions provided on the site, or downloaded from the site, or any delay of such information or service.
J&A will not be liable even if J&A or its authorised representatives have been advised of the possibility of such damages or losses, or any claim attributable to errors, omissions, or other inaccuracies in the site and/or materials or information downloaded through the site.
Because some states do not allow the exclusion or limitation of liability for consequential or incidental damages, the above limitation may not apply to you. In such states, J&A's liability is limited to the greatest extent permitted by law.

Indemnification
You agree to indemnify and hold J&A and its affiliates, directors, officers, employees, and agents harmless from and against any liabilities, losses, damages or costs, including reasonable attorneys' fees, incurred in connection with or arising from any third-party allegations, claims, actions, disputes, or demands asserted against any of them as a result of or relating to your Content, your use of the Website or Services or any willful misconduct on your part.
Severability
All rights and restrictions contained in this Agreement may be exercised and shall be applicable and binding only to the extent that they do not violate any applicable laws and are intended to be limited to the extent necessary so that they will not render this Agreement illegal, invalid or unenforceable. If any provision or portion of any provision of this Agreement shall be held to be illegal, invalid or unenforceable by a court of competent jurisdiction, it is the intention of the parties that the remaining provisions or portions thereof shall constitute their agreement with respect to the subject matter hereof, and all such remaining provisions or portions thereof shall remain in full force and effect.
Dispute resolution
The formation, interpretation and performance of this Agreement and any disputes arising out of it shall be governed by the substantive and procedural laws of Selangor, Malaysia without regard to its rules on conflicts or choice of law and, to the extent applicable, the laws of Malaysia. The exclusive jurisdiction and venue for actions related to the subject matter hereof shall be the state and federal courts located in Selangor, Malaysia, and you hereby submit to the personal jurisdiction of such courts. You hereby waive any right to a jury trial in any proceeding arising out of or related to this Agreement. The United Nations Convention on Contracts for the International Sale of Goods does not apply to this Agreement.
Changes and amendments
We reserve the right to modify this Agreement or its policies relating to the Website or Services at any time, effective upon posting of an updated version of this Agreement on the Website. When we do we will revise the updated date at the bottom of this page. Continued use of the Website after any such changes shall constitute your consent to such changes. Policy was created with WebsitePolicies.com
Acceptance of these terms
You acknowledge that you have read this Agreement and agree to all its terms and conditions. By using the Website or its Services you agree to be bound by this Agreement. If you do not agree to abide by the terms of this Agreement, yo u are not authorized to use or access the Website and its Services.

<ul>Forum's Terms & Conditions Of Use
<li>	You agree, through your use of this forum, that you will not post any material which is false, defamatory, inaccurate, abusive, vulgar, hateful, harassing, obscene, profane, sexually oriented, threatening, invasive of a person's privacy, adult material, or otherwise in violation of Malaysia laws.
<li>	No web links or email addresses may be posted in this forum.  You must not post or transmit any information or software that contains a virus or other harmful component.
<li>	You should know that any information you disclose in a forum can be obtained by any other registered user of that forum or persons to whom the information is forwarded.  This may result in unsolicited email or mail sent to you.  J&A cannot control this occurrence, and you are encouraged to consider this when posting information.
<li>	By participating in a forum, you are agreeing that all messages posted or accessed will be used only for informational, educational or professional purposes.  There may be no commercial or other unauthorized use of the forum participant lists.
<li>	You also agree not to post any material in which you do not own the copyright, or you do not have a license or other written consent from the owner to use such copyrighted material. Spam, flooding, advertisements, chain letters, pyramid schemes, and solicitations are also forbidden on this forum.
<li>	You agree that it is impossible for the staff, webmaster, administrator, moderators or J&A, the owners of this forum to confirm the validity of posts. While the administrators and moderators of this forum will attempt to remove or edit any generally objectionable material as quickly as possible, it is accepted we do not actively monitor the posted messages, and as such, are not responsible for the content contained within.
<li>	Therefore you acknowledge that all posts made to these forums express the views and opinions of the author and not the administrators, moderators or webmaster (except for posts by these people) and hence will not be held liable.
<li>	We do not warrant the accuracy, completeness, or usefulness of any information presented. The posted messages express the views of the author, and not necessarily the views of this forum, its staff, its subsidiaries, or J&A.
<li>	All messages and information posted or accessed in the forums are offered "as is" without any endorsements, guarantees or warranties by J&A.
<li>	Discussions in the forum do not constitute legal advice, nor do they create a lawyer-client relationship.
<li>	Anyone who feels that a posted message is objectionable, is encouraged to notify an administrator or moderator of this forum immediately. J&A reserves the right to remove objectionable content, within a reasonable time frame, if they determine that removal is necessary. This is a manual process, however, please realize that they may not be able to remove or edit particular messages immediately. This policy applies to member profile information as well.
<li>	You remain solely responsible for the content of any message posted on this forum and agree to indemnify and hold harmless to J&A, the owners of this forum, any related websites to this forum, its staff, and its subsidiaries against all claims, demands, actions, proceedings, costs, losses, expenses or damages they may incur howsoever arising whether direct, indirect or consequential as a result of your use of this forum.
<li>	J&A also reserve the right to reveal your identity (or any other related information collected on this service) in the event of a formal complaint or legal action arising from any situation caused by your use of this forum.
<li>	You have the ability, as you register, to choose your username. We advise that you keep the name appropriate. With this user account you are registered and you agree to never give your password out to another person except an administrator, for your protection and for validity reasons. You also agree to never use another person's account for any reason. We also recommend you use a complex and unique password for your account, to prevent account theft.
<li>	After you register and login to this forum, you will be able to complete your profile. It is your responsibility to present clean and accurate information. Any information that J&A, the administrator, moderator or staff determines to be inaccurate or vulgar in nature will be removed, with or without prior notice. Appropriate sanctions may be applicable.
<li>	Please note that this forum systems uses cookie software, a text file containing bits of information (such as your username and password), in your browser's cache. This is ONLY used to keep you logged in/out. The software does not collect or send any other form of information to your computer.
</ul>
<ul>Testimonials' Terms and Conditions of Use
<li>	Permission
You hereby grant J&A permission and limited license to use and reproduce your testimonial(s) ("Testimonial") in whole or in part on its Website, or in other official J&A printed publications without further consideration. You agree and grant permission to J&A to retouch, edit, or summarize Testimonial (story) for display, or otherwise create derivative works from Testimonial for display. You represent that your Testimonial is your original work. Your Testimonial may be used by J&A to provide basic content for advertisement campaigns. Testimonials may be rejected or approved for posting on the Website. Further, Testimonials may be removed from Website at any time and for any reason at J&A's sole discretion. You acknowledge that J&A may elect not to use Individual's Testimonial at this time, but may do so at its own discretion at a later date.
You grant J&A the option to contact you for J&A advertisement campaigns. You also agree to provide J&A with your full name, address and phone number for J&A internal use only. Only your first name and geographic location (city, state) shall be posted with your testimonials on the Website.
<li>	Links to Third Party Sites
This Website may contains links to websites operated by other parties. The links are provided for your convenience only. We do not control such websites and we are not responsible for the content and performance of these sites. The inclusion of links to other websites does not imply any endorsement of the material on the websites or any association with their operators. J&A does not operate, control or endorse any information, products of services provided by third parties through the Internet. Use of other sites is strictly at your own risk including, but not limited to, any risks associated with destructive viruses. You are responsible for viewing and abiding by the terms and conditions of use and the privacy statements of the other websites.
<li>	No Warranties
This Website hosted by J&A and the content contained herein and therein are provided by J&A on an "as is" basis. J&A makes no representations or warranties of any kind, express or implied, as to the operation of its sites, or the content, products and/or services included therein. To the fullest extent permissible by applicable law, J&A disclaims all warranties, express or implied, including but not limited to implied warranties of merchantability, fitness for a particular purposes, title and/or infringement.
<li>	Limitation of Liability
J&A shall have no liability in regard to consequential, exemplary, special, direct, indirect, incidental or punitive damages, even if either party is advised of the possibility of such damages. In no event shall J&A's total liability in regard to or under this agreement (whether under the theories of breach of contract, tort, negligence, strict liability, or any other theory of law) exceed the fees paid, if any, under this agreement.
<li>	General
By using this Website, you agree that the laws of Malaysia, without regard to principles of conflict of laws, will govern these Testimonial Terms and Conditions of Use and any dispute that might arise between you and J&A. You expressly agree that exclusive jurisdiction for any dispute with J&A, its affiliates, employees, subsidiaries, contractors, officers and directors, resides in the courts of the Malaysia and you further agree and expressly consent to the exercise of personal jurisdiction in the courts of the Malaysia in connection with any claim involving J&A, its affiliates, employee, subsidiaries, contractors, officers and directors. Use of this Website is unauthorized in any jurisdiction that does not give effect to the terms and conditions set forth herein.
<ul>
Advertisement' Terms and Conditions of Use
<< Pending Review >>



Disclaimer
J&A accepts no responsibility for any loss or damage you may suffer as a result or your use of this website unless that loss comes about as a result of some fraud or serious misconduct on the part of J&A.
J&A does not conduct any investigations or due diligence into any parties advertising on this website and can accept no responsibility nor liability whatsoever, for any claims, costs, losses, expenses or damages howsoever arising whether direct, indirect or consequential in respect of any omissions or consequences of actions taken by users based on any information, opinions or advice contained within this website. In addition, any advertisements on the website do not constitute a binding offer so that acceptance by the user can bind the party advertising on the website or J&A.
Contacting us
Should you have other questions or concerns about these privacy policies: 

I-01-05, 5th Floor, Block I,
SetiaWalk, Persiaran Wawasan,
Pusat Bandar Puchong,
47160 Puchong. Selangor D.E.
Fax :  +603-5888 5559

This document was last updated on October 06, 2016

   </p>
   
   
   
   
   
   
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
          <jsp:include page="aside.jsp"></jsp:include> <!--col-right sidebar-->         
          </div><!--main-container-inner-->
       </section> <!--main-container col2-left-layout-->   
      <section class="service-section service-section1">
          
      </section> <!--service-section service-section1--> 
 	<jsp:include page="footer.jsp"></jsp:include>
	<%-- <jsp:include page="reachUsSlider.jsp"></jsp:include> --%>
  </body>
</html>