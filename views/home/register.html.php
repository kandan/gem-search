<?php
// available vars:
include_once(INCLUDES_PATH . DS. 'header.php'); ?>
<div class="container_12 ">
  <div class="grid_3"><p></p></div>
	<div class="grid_6 registerConsole">
	<form id="register" action="<?php echo DOMAIN ?>register/checkUser/" method="POST">
<table>
	<tr>
	<td class="labelText">Username:</td>
	<td><input name="username" type="text" size="40" value="<?php if (isset($template->user['username'])){echo $template->user['username']; }?>" /></td>
	<td class="error"><?php if (isset($template->error['username'])) { echo $template->error['username'];   }  ?></td>
	</tr>
	<tr>
	<td class="labelText">Password:</td>
	<td><input name="password" type="password" size="40" value="" /></td>
	<td class="error"><?php if (isset($template->error['password'])) { echo $template->error['password'];   }  ?></td>
	</tr>
	<tr>
	<td class="labelText">Password: (again)</td>
	<td><input name="password2" type="password" size="40" value="" /></td>
	<td class="error"><?php if (isset($template->error['password2'])) { echo $template->error['password2'];   }  ?></td>
	</tr>
	<tr>
	<td class="labelText">Type:</td>
	<td><select name="user_type" style="margin: 5px 10px;">
		<option value="0">Select a user type...</option>
		<option value="1">Admin</option>
		<option value="2">User</option>
		</select></td>
	<td class="error"><?php if (isset($template->error['user_type'])) { echo '<p>'.$template->error['user_type'].'</p>';   }  ?></td>
	</tr>
	<tr>
		<td ><input name="submit" id="submitButton" type="submit" size="15" /></td>
		<td class="error"></td>
		<td class="smllText">Already Registered? Login <a href="<?php echo DOMAIN  ?>login/" >Here</a></td>
	</tr>
</table>
</form>	
</div>
<div class="grid_3"><p></p></div>
</div>
<div class="clear"></div>
<?php 
include_once(INCLUDES_PATH . DS. 'footer.php');  
?>
