<!DOCTYPE html>
<html>
<head>
<title></title>
</head>
<body style="font-family: trebuchet; background:#fff">
<div style="border:0px solid #000;margin:15px;padding:0;">
<table cellspacing="0" cellpadding="0" border="0" width="100%">
<tbody>
<tr>
<td width="580" align="left" valign="bottom" bgcolor="#FFFFFF"><img border="0"  alt="cion systems" width="250" src="img/logo.png"></td>
            <td width="20%" align="right" valign="center" bgcolor="#FFFFFF">            
            <table>
                <tr><td nowrap="nowrap" align="right" style="font-family:trebuchet;font-weight:bold;font-size:22pt;color:#0e5784; line-height:22pt" valign="top">%%DATE%%</td></tr>
                <tr><td nowrap="nowrap" align="right" style="font-family:trebuchet;font-weight:bold;font-size:12pt;color:#0e5784; line-height:12pt" valign="top">Invoice Number: %%TRANSACTIONID%%</td></tr>
            </table>
        </td>
          </tr></tbody></table>
                       <table cellspacing="0" cellpadding="5" border="0" width="100%"  bgcolor="#849839">
                      <tbody>     
                      <tr bgcolor="#0b669c" style="height:90px">
                        <td valign="top" width="6"></td>
                       
                        <td align="left" style="font-family:trebuchet;color:#FFFFFF;text-align:left;">
                            <div style="margin-right:5px;margin-top:5px;margin-bottom:5px;font-size:11pt;">
                                <div style="line-height:20px;margin-top:5px;font-size:11pt;font-weight: bold;">Bill To,</div>
                                <div style="line-height:20px;margin-top:5px;font-size:11pt">%%BILL_NAME%%</div>
                                <div style="line-height:20px;margin-top:5px;font-size:11pt">%%BILL_COMPANY%%</div>
                                <div style="line-height:20px;font-size:11pt">%%BILL_ADDRESS1%% %%BILL_ADDRESS2%%</div>
                                <div style="line-height:20px;margin-bottom:5px;font-size:11pt">%%BILL_CITY%%, %%BILL_STATE%%, %%BILL_COUNTRY%%, %%BILL_ZIP%%</div>
                                <div style="line-height:20px;margin-bottom:5px;font-size:11pt">Phone: %%BILL_PHONE%%</div>
                                    
                            </div>
                        </td>
                      
                      <td  align="right" valign="top" style="font:11pt trebuchet; color:#FFFFFF;padding:10px">
                          
                          <div style="margin-right:5px;margin-top:5px;margin-bottom:5px;font-size:11pt;">
                                <div style="line-height:20px;margin-top:5px;font-size:11pt;font-weight: bold;">Ship To,</div>
                                <div style="line-height:20px;margin-top:5px;font-size:11pt">%%SHIP_NAME%%</div>
                                <div style="line-height:20px;margin-top:5px;font-size:11pt">%%SHIP_COMPANY%%</div>
                                <div style="line-height:20px;font-size:11pt">%%BILL_ADDRESS1%% %%SHIP_ADDRESS2%%</div>
                                <div style="line-height:20px;margin-bottom:5px;font-size:11pt">%%SHIP_CITY%%, %%SHIP_STATE%%, %%SHIP_COUNTRY%%, %%SHIP_ZIP%%</div>
                                <div style="line-height:20px;margin-bottom:5px;font-size:11pt">Phone: %%SHIP_PHONE%%</div>
                                    
                            </div>
                      </td>
                      
                        </tr>
                    </tbody></table>                  
                      <table cellspacing="0" cellpadding="0" border="0" width="100%">
                      <tbody>
                            <tr><td height="40"></td></tr></tbody></table>
                      
                   
                    <table cellspacing="0" cellpadding="0" border="0" width="100%" style="border:0px solid #ccc">
                      <tbody>
                            %%CONTENT%%
                      </tbody>
                    </table>
    <table cellspacing="0" cellpadding="0" border="0" width="100%">
                      <tbody>
                            <tr><td height="40"></td></tr></tbody></table>
    <table cellspacing="0" cellpadding="0" border="0" width="100%" style="border:0px solid #ccc">
                      <tbody>
                            <tr bgcolor="#0b669c">
                              <td width="170" style="padding:0 0 0 10px; border-bottom:0px solid #0b669c" height="40">
                                  <span style="font-size:11pt;color:#FFF; font-weight: bold;font-family:trebuchet;">Total</span>
                              </td>
                              <td width="12%" align="right" valign="middle" style="padding-right:20px;border-bottom:1px solid #FFFFFF;font-weight: bold;color:#FFF;" >%%TOTAL_PRICE%%</td>
                            </tr>
                      </tbody>
                    </table>
                      

		      		</td></tr></table></div>
					</div>
 

</body>
</html>