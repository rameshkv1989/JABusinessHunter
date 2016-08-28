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
<form id="contactForm" >


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
    var postUrl = "index.do";
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
