<?php

   if(isset($_GET['filename']))
  {
   $filename=$_GET['filename'];
   $file="../white_papers/".$filename;
   $filesize=filesize($file);
   header("Content-Type: application/x-octet-stream");
   header("Content-Disposition: attachment; filename=\"" . $filename . "\"");
   header("Content-Length: " . $filesize);
  }
?>