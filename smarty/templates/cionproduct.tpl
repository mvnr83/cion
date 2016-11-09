<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title></title>
{literal} 
<script language="javascript" type="text/JavaScript">
     // Add this to the onload event of the BODY element
     function addEvents() {
	 
         activateTree(document.getElementById("LinkedList1"));
		 activateTree(document.getElementById("LinkedList2"));
		 activateTree(document.getElementById("LinkedList3"));
     }

     // This function traverses the list and add links 
     // to nested list items
     function activateTree(oList) {
         // Collapse the tree
         
         for (var i = 0; i < oList.getElementsByTagName("ul").length; i++) {
             oList.getElementsByTagName("ul")[i].style.display = "none";
         }
         // Add the click-event handler to the list items
         if (oList.addEventListener) {
             oList.addEventListener("click", toggleBranch, false);
         } else if (oList.attachEvent) { // For IE
             oList.attachEvent("onclick", toggleBranch);
         }
         // Make the nested items look like links
         addLinksToBranches(oList);
     }

     // This is the click-event handler
     function toggleBranch(event) {
        
         var oBranch, cSubBranches;
         if (event.target) {
             oBranch = event.target;
         } else if (event.srcElement) { // For IE
             oBranch = event.srcElement;
         }
         cSubBranches = oBranch.getElementsByTagName("ul");
         if (cSubBranches.length > 0) {
             if (cSubBranches[0].style.display == "block") {
                 cSubBranches[0].style.display = "none";
             } else {
                 cSubBranches[0].style.display = "block";
             }
         }
     }

     // This function makes nested list items look like links
     function addLinksToBranches(oList) {
         var cBranches = oList.getElementsByTagName("li");
         var i, n, cSubBranches;
         if (cBranches.length > 0) {
             for (i = 0, n = cBranches.length; i < n; i++) {
                 cSubBranches = cBranches[i].getElementsByTagName("ul");
                 if (cSubBranches.length > 0) {
                     addLinksToBranches(cSubBranches[0]);
                     cBranches[i].className = "HandCursorStyle";
                     cBranches[i].style.color = "blue";
                     cSubBranches[0].style.color = "black";
                     cSubBranches[0].style.cursor = "auto";
                 }
             }
         }
     }
  </script>
<style type="text/css">
  ul.LinkedList { display: block;  }
  ul.LinkedList ul { display: none; } 
  .HandCursorStyle { cursor: pointer; cursor: hand; }  /* For IE */
  .ul1{
list-style-Type: none;
padding: 0px 0px 0px 20px;
background: url(images/bullet1.gif) no-repeat left top;
}
</style>
  
{/literal}
</head>
<body onload="addEvents();">
<ul id="LinkedList1" class="LinkedList">
  <li class="ul1">
  
  Identity and Access management 
    <ul class="ul1">
      <li class="ul1">Identity Management portal (Active Directory Manager Pro)
      <ul class="ul1">
          <li class="ul1"> Automated User/Group Provisioning and De-provisoning  (Provisoning System)</li>
          <li class="ul1">Active Directory Change Auditor  (Active Directory Change Notifier)</li>
        </ul>
      </li>
      <li class="ul1">Change auditor and reporter (Active Directory Change Notifier and Active Directory Reporter)</li>
      <li class="ul1">Backup and recovery (AD Recovery)</li>
      <li class="ul1">Group Polciy Management (GPOManager)</li>
      <li class="ul1"> Self-service (Enterprise self-service)
        <ul class="ul1">
          <li class="ul1">Password Synchronization</li>
          <li class="ul1">Reset password from windows Login</li>
           <li class="ul1">Multi-factor authentication for ANY Windows desktop login</li>
          <li class="ul1">Web/SaaS application Identity API/user management</li>
        </ul>
      </li>
      <li class="ul1"> Self-service and Web application Identity API (Cloud Identity Minder)
        <ul class="ul1">
      <li class="ul1">Multi-factor authentication for ANY Windows desktop login</li>
      <li class="ul1">Web/SaaS application Identity API/user management</li>
      </ul>
      </li>
      <li class="ul1">System Information and Comparison (System Information and Compare)</li>
      <li class="ul1">Dirsync-office365 management (Cloud Identity management tool)</li>
    </ul>
  </li>
  <li class="ul1">Office365/Azure
    <ul class="ul1">
    <li class="ul1">Dirsync-office365 management (Cloud Identity management tool)</li>
    <li class="ul1">Self-service (Enterprise self-service)</li>
    </ul>
  </li>
  <li class="ul1">Multi-factor authentication
  <ul class="ul1">
    <li class="ul1">As a hosted service</li>
    <li class="ul1">Packaged product for on-premise Enterprise self-service</li>
    <li class="ul1">Packaged product for on-premise Cloud ID Minder</li>
  </ul>
  </li>
  
  
</ul>

</body>
</html>