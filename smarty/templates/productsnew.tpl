<div class="row"><div class="col-xs-12 "><div class="col-xs-12 maincontentbg">
            
            <h1><span>P</span>roducts</h1>
<div class="welcomeblock"><p style="text-align: justify"><strong>CionSystems</strong> delivers a simple and cost effective solution to improve security and streamline managing IT infrastructure.  CionSystems Identity Management solutions are designed to integrate with enterprise HR systems, school information systems and other systems. Products are designed to provide benefits for schools districts and IT organizations of varying size, complexity, and skill levels in verticals like finance, insurance, education, telecom, technology etc.  Implement process driven Security and Auditing to reduce support costs and quickly respond to security incidents while continuous monitoring, reporting and alerting of directories like Active Directory, ldap, openldap, office365, azure AD.</p></div></div></div></div>


<div class="row"><div class="col-xs-12">
        
{foreach from=$products item=product_info}
        <div class="col-md-4"><div class="singleproduct"><div class="singleproductinner"><div class="productheader"><a>
                            {assign var="pimg" value="product_images/$product_info.product_image"}
                            {if file_exists($pimg)}
                            
                            <img src="product_images/{$product_info.product_image}">
                            {else} <img src="images/newproducts/productsheader1.jpg" />{/if}
                                 
                            
                            </a>
                    </div>

                    <div class="productContent">{if $product_info.short_description|strlen gt 300} {$product_info.short_description|substr:0:320}... {else}{$product_info.short_description}{/if}</div>
<!-- <ul>
    <li>GPO authoring, mangement and security workbench.</li>
    <li>Gives Active Directory administrators and security personnel's control of  GPO changes.</li>
    <li>GPO authoring, mangement and security workbench.</li>
</ul>
-->

</div>

<div class="productbottom">
    <div class="pull-right">
        <a class="pBuy" href="javascript:;" data-toggle="modal" data-target="#myModal-{$product_info.id}">Buy Now</a>
        <a class="pread" href="{$product_info.html_file_name}">Read More</a>
    </div>
</div>

</div>

</div>
{/foreach}
<!-- 
<div class="col-md-4"><div class="singleproduct bg-white"><div class="singleproductinner"><div class="productheader"><a><img src="images/newproducts/adrecovery.jpg" /></a></div>

<ul><li>GPO authoring, mangement and security workbench.</li><li>Gives Active Directory administrators and security personnel's control of  GPO changes.</li><li>GPO authoring, mangement and security workbench.</li></ul>

</div>

<div class="productbottom"><div class="pull-right"><a class="pBuy" href="javascript:;" data-toggle="modal" data-target="#myModal">Buy Now</a><a class="pread" href="javascript:;">Read More</a></div></div>

</div>

</div>

<div class="col-md-4"><div class="singleproduct bg-white"><div class="singleproductinner"><div class="productheader"><a><img src="images/newproducts/enterprise.jpg" /></a></div>

<ul><li>GPO authoring, mangement and security workbench.</li><li>Gives Active Directory administrators and security personnel's control of  GPO changes.</li><li>GPO authoring, mangement and security workbench.</li></ul>

</div>

<div class="productbottom"><div class="pull-right"><a class="pBuy" href="javascript:;" data-toggle="modal" data-target="#myModal">Buy Now</a><a class="pread" href="javascript:;">Read More</a></div></div>

</div>

</div>

<div class="col-md-4"><div class="singleproduct"><div class="singleproductinner"><div class="productheader"><a><img src="images/newproducts/active-directory.jpg" /></a></div>

<ul><li>Automate data collection and report generation</li><li>Over 200 AD reports for immediate deployment and reporting</li><li>Deep insight into Active Directory and quickly validate security settings</li></ul>

</div>

<div class="productbottom"><div class="pull-right"><a class="pBuy" href="javascript:;" data-toggle="modal" data-target="#myModal">Buy Now</a><a class="pread" href="javascript:;">Read More</a></div></div>

</div>

</div>
<div class="col-md-4"><div class="singleproduct bg-white"><div class="singleproductinner"><div class="productheader"><a><img src="images/newproducts/gpo.jpg" /></a></div>

<ul><li>GPO authoring, mangement and security workbench.</li><li>Gives Active Directory administrators and security personnel's control of GPO changes.</li><li>Migration of GPOs to other domain.</li></ul>

</div>

<div class="productbottom"><div class="pull-right"><a class="pBuy" href="javascript:;" data-toggle="modal" data-target="#myModal">Buy Now</a><a class="pread" href="javascript:;">Read More</a></div></div>

</div>

</div>

<div class="col-md-4"><div class="singleproduct bg-white"><div class="singleproductinner"><div class="productheader"><a><img src="images/newproducts/dirsync.jpg" /></a></div>

<ul><li>Automate the Microsoft Office 365 user provisioning/de-provisioning </li><li>Sync Active Directory / Openldap users to Office365 and vice versa.</li><li>Migrate and archive onedrive data in bulk.</li><li>Office 365 user licensing.</li></ul>

</div>

<div class="productbottom"><div class="pull-right"><a class="pBuy" href="javascript:;" data-toggle="modal" data-target="#myModal">Buy Now</a><a class="pread" href="javascript:;">Read More</a></div></div>

</div>

</div

-->
</div></div>







</div>

<!-- Modal dialog start -->
{foreach from=$products item=product_info}
<div id="myModal-{$product_info.id}" class="modal fade productsmodal" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close1" data-dismiss="modal"></button>
        <h4 class="modal-title">{$product_info.product_name}</h4>
      </div>
      <div class="modal-body">
        <h5>{$product_info.subscription_plan_name}</h5>
        <ul class="popupulfirst">
        {section name=cust loop=$product_info.sub_plans}
            <li>
                <div class="labelValue">
                    <label class="radioBlock">
                        <input type="radio" name="topGroup" value="{$product_info.sub_plans[cust].sub_id}"/>
                        <span></span>{$product_info.sub_plans[cust].plan_name}
                    </label>
                </div>
                <div class="divider">--</div>
                <div class="costValue">{if $product_info.sub_plans[cust].price_type eq 1}<a href="javascript:;">Request A Quote</a> {else}{$product_info.sub_plans[cust].price}{/if}</div>
            </li>
        {/section}
        <!-- <li><div class="labelValue"><label class="radioBlock"><input type="radio" name="topGroup"/><span></span>Up to 250 Users</label></div><div class="divider">--</div><div class="costValue">$780</div></li>
        <li><div class="labelValue"><label class="radioBlock"><input type="radio" name="topGroup"/><span></span>Up to 250 Users</label></div><div class="divider">--</div><div class="costValue">$780</div></li>
  <li><div class="labelValue">Up to 250 Users</div><div class="divider">--</div><div class="costValue"><a href="javascript:;">Request A Quote</a> </div></li>
        -->
        </ul>
        {if $product_info.sub_plans_addon|@count gt 0}
            
        <div class="addonssec">
        <h5><label class="checkBlock"><input type="checkbox"><em></em>{$product_info.subscription_addon_name_1}</label></h5>
        <ul class="popupulfirst">
            {section name=cust loop=$product_info.sub_plans_addon}
                <li>
                    <div class="labelValue">
                        <label class="radioBlock">
                            <input type="radio" name="changeGroup" id="{$product_info.sub_plans[cust].sub_id}"/>
                            <span></span>{$product_info.sub_plans_addon[cust].plan_name}
                        </label>
                    </div>
                    <div class="divider">--</div>
                    <div class="costValue">{if $product_info.sub_plans_addon[cust].price_type eq 1}<a href="javascript:;">Request A Quote</a> {else}{$product_info.sub_plans_addon[cust].price}{/if}</div>
                </li>
            {/section}
        <!-- <li><div class="labelValue"><label class="radioBlock"><input type="radio" name="changeGroup"/><span></span>Up to 250 Users</label></div><div class="divider">--</div><div class="costValue">$780</div></li>
        <li><div class="labelValue"><label class="radioBlock"><input type="radio" name="changeGroup"/><span></span>Up to 250 Users</label></div><div class="divider">--</div><div class="costValue">$780</div></li>
  <li><div class="labelValue">Up to 250 Users</div><div class="divider">--</div><div class="costValue"><a href="javascript:;">Request A Quote</a> </div></li>
            -->
        </ul>
        
        </div>
        {/if}
      </div>
      <div class="modal-footer">
        <a class="buynowBtn popupBuynow" href="javascript:;">Buy Now</a>
      </div>
    </div>

  </div>
</div>
  {/foreach}
<!-- Modal dialog end -->

<div style="display:none;">
    {section name=ploop loop=$products}
        <div id="subplan-{$products[ploop].id}">
            {$products[ploop].sub_plan_json}
        </div>
    {/section}
</div>











{literal}<script src="js/jquery-1.8.3.min.js" type="text/javascript"></script> <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js"></script>
<script>



$(document).on('click','.popupBuynow', function () {
    
    //add to session
    $.ajax({
                type: 'POST',
                data: {pid:'9',addonid:'8'},
                async: false,
                url: "add_to_cart.php",
                success: function(result) {
                    console.log(result);
                    $('.itemcount').html(result);
                }
            });


        var cart = $('.cartBlock');
        var imgtodrag = $(this).closest('.modal-content').find(".modal-title");
		
		$(this).closest('.modal-content').find('.close1').click();
		$("html, body").animate({ scrollTop: 0 }, "slow");
		if (imgtodrag) {
	
            var imgclone = imgtodrag.clone().offset({
                top: imgtodrag.offset().top,
                left: imgtodrag.offset().left
            })
                .css({
                'opacity': '0.5',
                    'position': 'absolute',
                    'height': '50px',
                    'width': '400px',
                    'z-index': '999999',
					
            })
                .appendTo($('body'))
                .animate({
                'top': cart.offset().top + 10,
                    'left': cart.offset().left + 10,
                    'width': 75,
                    'height': 75
            }, 1000, 'easeInOutExpo');
            
            setTimeout(function () {
			
			
			
                cart.effect("shake", {
                    times: 2
                }, 200);
            }, 1500);

            imgclone.animate({
                'width': 0,
                    'height': 0
            }, function () {
                $(this).detach()
            });
        }
    });
</script>
{/literal}

