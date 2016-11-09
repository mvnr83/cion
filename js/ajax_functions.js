function createXMLHttpRequest() {
   try
    { 
		return new ActiveXObject("Msxml2.XMLHTTP"); 
	} 
	catch (e) 
	{
	}
   	try 
	{ 
	return new ActiveXObject("Microsoft.XMLHTTP"); 
	}
	 catch (e)
	 {
	 }
   try 
   { 
   return new XMLHttpRequest(); 
   } 
   catch(e) 
   {
   }
   alert("XMLHttpRequest not supported");
   return null;
 }

var xhReq = createXMLHttpRequest();


/*  function to get the blog responses */
function blog_comments(blogId)
{
		xhReq.open("GET","ajax_BolgComments.php?bid="+blogId);
		divId = "comment_"+blogId;
		xhReq.onreadystatechange=function(){getresponse(divId);}
		xhReq.send(null);
}

function getresponse(divId)
{
	if(xhReq.readyState==4)
	{
		 var serverResponse=xhReq.responseText;
		 document.getElementById(divId).style.display = "block";
	     document.getElementById(divId).innerHTML=serverResponse;
	}
}
