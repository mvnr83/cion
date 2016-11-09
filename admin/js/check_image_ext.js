function check(id)
{
	var fileTypes=["bmp","gif","png","jpg","jpeg"];
	var source=document.getElementById(id).value;
	var ext=source.substring(source.lastIndexOf(".")+1,source.length).toLowerCase();
	if(source == "")
	{
		alert("Please upload image");
		return 1;
	}
	else
	{ 
		for (var i=0; i<fileTypes.length; i++)
			if (fileTypes[i]==ext) break;

		if (i<fileTypes.length)
		{ 
			return 2;
		}
		else
		{
			alert("Upload image only");
			return 1;
		}
	}

}