<?php
// available vars:
include_once(INCLUDES_PATH . DS. 'header.php');
?>
		<div class="container_12">
		<div class=grid_2><p></p></div>	
		<div class=grid_8>
		<h2 class="homeH2">You are <?php if(isset($_SESSION['member']['username'])){ echo 'already '; } else { echo 'now'; } ?> logged in....</h2>
		</div>
		<div class=grid_2><p></p></div>	
		</div>
		<div class="clear"></div>
  <div class="container_12">

  <div class="grid_3"><p></p></div>
  <div class="grid_2 register"><p><a href="/amazing-awesomeness/search" >Search Items</a></p></div>
  <div class="grid_2"><p></p></div>
  <div class="grid_2 login"><p><a href="/amazing-awesomeness/admin" >Admin</a></p></div>
  <div class="grid_3"><p></p></div>
  </div>
<?php 
include_once(INCLUDES_PATH. DS. 'footer.php'); 
?>