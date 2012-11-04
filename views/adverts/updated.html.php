<?php
include_once(INCLUDES_PATH . DS. 'header.php');

if (isset($template->advert)) {
	$code = $template->advert['code'];
	$category = $template->advert['category'];
	$version = $template->advert['version'];
	$status = $template->advert['status'];
	$notes = $template->advert['notes'];
	
	if ($category == 1) $category = "BRAND";
	if ($category == 2) $category = "CAMPAIGN";
	if ($category == 3) $category = "INFO";
	if ($category == 4) $category = "COMMUNITY";
	if ($category == 5) $category = "TIPS";
	
	if ($version == 1) $version = "Standard Gem Advert";
	if ($version == 2) $version = "Prospect";
	if ($version == 3) $version = "Flash Template";
	if ($version == 4) $version = "Matrix";
	
	if ($status == 1) $status = "IN PROGRESS";
	if ($status == 2) $status = "COMPLETE";
	if ($status == 3) $status = "ARCHIVE";
	
}

?>
<div class="row">
	<div class="span1"></div>
	
<div id="swrapper" class="span11">

  <?php if (isset($template->advert)): ?>
    <h3>Add Updated:</h3>
	<pre>
	  ANZ Code: <?php echo $template->advert['code']; ?>
	</pre>
	<pre>
	 Category: <?php echo $category; ?>
	</pre>
	<pre>
	  Version: <?php echo $version; ?>
	</pre>
	<pre>
	  Status: <?php echo $status; ?>
	</pre>
	<pre>
	  Info: <?php echo $notes; ?>
	</pre>
	<pre>
	 <a href="search/">Search Again</a>
	</pre>
  <?php else: ?>
    <h2>The thing with id "<?php echo $template->id; ?>" does not exist</h2>
  <?php endif; ?>
<?php 
include_once(INCLUDES_PATH . DS. 'footer.php');  
?>