<?php 
if($_GET['product'] == "ActiveDirectoryManager"){

echo '<script type="text/javascript">

	alert("Thank you. You can now login to the selected Application with the following credentials.\r\n\nUsername: admin\r\nPassword: admin\r\n\n*Use Internet Explorer 6.0 or above for optimum results.");

	window.location="http://173.160.159.49/activedirectorymanager/userlogin.aspx";

	</script>';

}



else if($_GET['product'] == "ActiveDirectoryRecovery"){

echo '<script type="text/javascript">

	alert("Thank you. You can now login to the selected Application with the following credentials.\r\n\nUsername: admin\r\nPassword: admin\r\n\n*Use Internet Explorer 6.0 or above for optimum results.");

	window.location="http://173.160.159.49/ADRecoverySetup/Default.aspx";

</script>';

}



else if($_GET['product'] == "ActiveDirectorySelfService"){

echo '<script type="text/javascript">alert("Thank you. You can now login to the selected Application with the following credentials.\r\n\nUsername: admin\r\nPassword: admin\r\n\n*Use Internet Explorer 6.0 or above for optimum results.");window.location="http://173.160.159.49/adselfservice/userlogin.aspx";</script>';

}



else if($_GET['product'] == "ActiveDirectoryReporter"){

echo '<script type="text/javascript">alert("Thank you. You can now login to the selected Application with the following credentials.\r\n\nUsername: admin\r\nPassword: admin\r\n\n*Use Internet Explorer 6.0 or above for optimum results.");window.location="http://173.160.159.49/activedirectoryreporter/userlogin.aspx";</script>';

}
?>