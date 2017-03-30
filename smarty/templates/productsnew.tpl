<div class="row"><div class="col-xs-12 "><div class="col-xs-12 maincontentbg">
            
            <h1><span>P</span>roducts</h1>
<div class="welcomeblock"><p style="text-align: justify">
        <strong>CionSystems</strong> products are easy to use, reliable, and scalable and provide more functionality than any other vendors complicated heavy duty enterprise product in this space. Our product solves the enterprise problem, truly reduce their cost and do not add management overhead cost. Our key differentiating factors are our solution's ease-of-user features and the ability to field a true, web-based solution that can be securely utilized from any system, anywhere in the world. Our products works with Active Directory / OpenLDAP / Office365 / Azure / Salesforce/ Google apps and address the real issues companies face in production.Our solutions have been installed in under hour and have shown ROI on the first day of use.
        <!--  <strong>CionSystems</strong> delivers a simple and cost effective solution to improve security and streamline managing IT infrastructure.  CionSystems Identity Management solutions are designed to integrate with enterprise HR systems, school information systems and other systems. Products are designed to provide benefits for schools districts and IT organizations of varying size, complexity, and skill levels in verticals like finance, insurance, education, telecom, technology etc.  Implement process driven Security and Auditing to reduce support costs and quickly respond to security incidents while continuous monitoring, reporting and alerting of directories like Active Directory, ldap, openldap, office365, azure AD. -->
    </p></div></div></div></div>


<div class="row"><div class="col-xs-12">
        
{foreach from=$products item=product_info}
        <div class="col-md-4"><div class="singleproduct"><div class="singleproductinner"><div class="productheader"><a>
                            
                            
                            
                            <img src="{$product_info.product_image}" alt="{$product_info.product_name}">
                            
                                 
                            
                            </a>
                    </div>

                    <div class="productContent">{if $product_info.short_description|strlen gt 300} {$product_info.short_description|substr:0:320|stripslashes}... {else}{$product_info.short_description|stripslashes}{/if}</div>
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



