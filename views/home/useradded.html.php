<?php
// available vars:
include_once(INCLUDES_PATH . DS. 'header.php');
?>
		<div class="container_12">
		<div class=grid_2><p></p></div>	
		<div class=grid_8>
		<h2 class="homeH2">Registered successfully....</h2>
		</div>
		<div class=grid_2><p></p></div>	
		</div>
		<div class="clear"></div>
  <div class="container_12">

  <div class="grid_3"><p></p></div>
  <div class="grid_2 register"><p><a href="<?php echo DOMAIN ?>register/" >Register</a></p></div>
  <div class="grid_2"><p><?php if (isset($template->useradded['firstname'])) { echo 'First name: ' .$template->useradded['firstname'];} ?></p>
							   <p><?php if (isset($template->useradded['surname'])) { echo 'Surname: ' .$template->useradded['surname'];} ?></p>
							   <p><?php if (isset($template->useradded['email'])) { echo 'Email: '. $template->useradded['email'];} ?></p>
							   <p><?php if (isset($template->useradded['Username'])) { echo 'Username: ' .$template->useradded['firstname'];} ?></p>
							   <p><?php if (isset($template->useradded['type'])) { echo 'Type:' .$template->useradded['type'];} ?></p>
							   <p><?php if (isset($template->useradded['address'])) { echo 'First name: ' .$template->useradded['address'];} ?></p></div>
  <div class="grid_2 login"><p><a href="<?php echo DOMAIN ?>login/" >Login</a></p></div>
  <div class="grid_3"><p></p></div>
  </div>
<?php 
include_once(INCLUDES_PATH. DS. 'footer.php'); 
?>