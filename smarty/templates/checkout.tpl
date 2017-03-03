<div class="row"><div class="col-xs-12 "><div class="col-xs-12 maincontentbg"><h1><span>S</span>hoping Cart</h1>
</div></div></div>

<div class="row"><div class="col-xs-12">
<div class="table-striped table-responsive shopingcarttable">
    <table class="table">
        <tr>
            <th>Item Details</th>
            <th>Plan name</th>
            <th align="right" class="text-right">Total</th>
            <th  style="width:10px !important;"></th>
        </tr>
        {if $cartinfo|@count gt 0}
{section name=cust loop=$cartinfo}
            
        <tr>
            <td width="60%">{$cartinfo[cust].pInfo.product_name}<!--<a class="productremove" href="javascript:;">Remove</a>--></td>
            <td width="20%">{$cartinfo[cust].pInfo.plan_name}</td>
            <td width="20%" class="Total text-right">{$cartinfo[cust].pInfo.price}</td>
            <td><a class="productremove1  fa fa-close" href="javascript:;" onclick="fnRemoveCart('main',{$cartinfo[cust].pInfo.sub_id});"></a></td>
        </tr>
        {section name=addon loop=$cartinfo[cust].addOns}
            <tr>
                <td><span class="Total" style="padding:0 10px 0 20px;">(addon)</span>{$cartinfo[cust].addOns[addon].addon_name}<!--<a class="productremove" href="javascript:;">Remove</a>--></td>
                <td>{$cartinfo[cust].addOns[addon].plan_name}</td>
                <td class="Total text-right">{$cartinfo[cust].addOns[addon].price}</td>
                <td><a class="productremove1 fa fa-close" href="javascript:;" onclick="fnRemoveCart('addon',{$cartinfo[cust].addOns[addon].sub_id});"></a></td>
            </tr>
        {/section}

{/section}


<tr>
<td class="TotalCost text-right" colspan="3"><span  class="estimate">Total:</span> {$cart_price}</td><td></td></tr>
{else}
<tr><td colspan="3" align="center">No items in your cart.</td></tr>
{/if}
</table>
</div>
{if $cartinfo|@count gt 0}
<a class="btn-place btn"  href="start-order.php">PLACE ORDER</a>
{/if}
<a class="btn-shoping btn" href="active-directory-tools.php">Add MORE PRODUCTS</a>
</div></div>

{literal}
    <script>
        function fnRemoveCart(ptype,pid){
            $.ajax({
                type: 'POST',
                data: {ptype:ptype,pid:pid},
                async: false,
                url: "removefromcart.php",
                success: function(result) {
                    window.location.href = 'checkout.php';
                }
            });
        }
        
    </script>
    {/literal}




