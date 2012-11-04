<?php
include_once(INCLUDES_PATH . DS. 'header.php');

$code = $_GET['code'];
$status = $_GET['status'];
$notes = $_GET['notes'];



/* get URL */
/* code taken from http://dev.kanngard.net/Permalinks/ID_20050507183447.html */ 


function selfURL() {
	$s = empty($_SERVER["HTTPS"]) ? ''
		: ($_SERVER["HTTPS"] == "on") ? "s"
		: "";
	$protocol = strleft(strtolower($_SERVER["SERVER_PROTOCOL"]), "/").$s;
	$port = ($_SERVER["SERVER_PORT"] == "80") ? ""
		: (":".$_SERVER["SERVER_PORT"]);
	return $protocol."://".$_SERVER['SERVER_NAME'].$port.$_SERVER['REQUEST_URI'];
}
function strleft($s1, $s2) {
	return substr($s1, 0, strpos($s1, $s2));
}

//gets the data from a URL  
function get_tiny_url($url)  {  
  $ch = curl_init();  
  $timeout = 5;  
  curl_setopt($ch,CURLOPT_URL,'http://tinyurl.com/api-create.php?url='.$url);  
  curl_setopt($ch,CURLOPT_RETURNTRANSFER,1);  
  curl_setopt($ch,CURLOPT_CONNECTTIMEOUT,$timeout);  
  $data = curl_exec($ch);  
  curl_close($ch);  
  return $data;  
}

$email_url = get_tiny_url(selfURL());

//echo $email_url;


?>
<!--  NEW CONTENT -->
<script type="text/javascript" src="<?php echo DOMAIN; ?>/flvplayer/swfobject.js"></script>

<script type="text/javascript">
	var flashvars = {};
	
		/* flv player parameters */		
		flashvars.playerpath = ""; 				
		flashvars.contentpath = "<?php echo DOMAIN; ?>flv";	
		
		flashvars.video = "<?php echo $code; ?>.flv";

		flashvars.preview = "demo-preview.jpg";						
		
	   flashvars.skin = "skin-play-seek-fullscreen.swf";
		flashvars.skincolor = "0x2c8cbd";
		flashvars.skinscalemaximum = "1";				
					
		var params = {};
			params.scale = "noscale";
			params.allowfullscreen = "true";
			params.salign = "tl";   
   		 	params.base = ".";  
		
		var attributes = {};
			attributes.align = "left";   
		   
		
	/* embed flv player */			
	// adapt the path to flvplayer.swf and expressInstall.swf
	// adapt the display size of the flash file	
	swfobject.embedSWF("<?php echo DOMAIN; ?>/flvplayer/flvplayer.swf", "videoPlayer", "680", "450", "9.0.0", "<?php echo DOMAIN; ?>/flvplayer/expressInstall.swf", flashvars, params, attributes);
	

	/* end */	
	
</script>

  <!-- END OF NEW CONTENT-->

<?php //if (isset($_SESSION['user']['user_id'])){  ?>
<div class="well span9" style="margin-left:0;">
<div id="videoPlayer">

<div>
        <h4>Content on this page requires a newer version of Adobe Flash Player.</h4>
        <p><a href="http://www.adobe.com/go/getflashplayer"><img src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif" alt="Get Adobe Flash player" /></a></p>
      </div>
</div>



</div>

<div class="well span5">
	<dl>
		<dt>Name:</dt>
		<dd><?php echo $code ?></dd>
		<dt>Status:</dt>
		<dd><?php echo $status ?></dd>
		<dt>Notes:</dt>
		<dd><?php echo $notes ?></dd>
	</dl>

<p><?php if (isset($HTTP_REFERER)) { 
echo "<a href='$HTTP_REFERER'><<Back</a><a href='". DOMAIN . "search/'>Search Again</a>"; 
} else { 
echo "<a class='btn' href='javascript:history.back()'><i class='icon-backward'></i> Back</a> <a class='btn' href='". DOMAIN . "search/'>Search Again</a>"; 
echo "<p><a class='btn btn-info' href='mailto:?subject={$code}&body={$email_url}'>Email content to view <i class='icon-envelope icon-white'></i></a></p>";
} ?>
</p>
<?php if ($status == 'COMPLETE' || $status == 'ARCHIVE'){
	echo "<p><a class='btn btn-primary' href='". DOMAIN ."wmv/" . $code . ".wmv.zip'>Download WMV Version <i class='icon-download icon-white'></i></a></p>";
	
} ?>

</div>
<?php /*} else {
	//echo 'Sorry, You need to be logged in.';	
 }*/?>

<?php 
include_once(INCLUDES_PATH . DS. 'footer.php');
?>