<?php
include_once(INCLUDES_PATH . DS. 'header.php');

?>
	<div class="span5 well" style="margin:0;">
  <?php if (isset($template->advert)): ?>
    <p>Add created: "<?php echo $template->advert['code']; ?>" and the id "<?php echo $template->advert['id']; ?>"</p>
	<a href="<?php echo DOMAIN . '/search/'; ?>" class="btn btn-primary">Search</a>
  <?php else: ?>
    <p>The thing with id "<?php echo $template->id; ?>" does not exist</p>
  <?php endif; ?>
</div>
<?php 
include_once(INCLUDES_PATH . DS. 'footer.php');  
?>
