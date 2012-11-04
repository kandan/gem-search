<?php include_once(INCLUDES_PATH . DS. 'header.php'); ?> 
<script>
	$(".alert").alert('fade');
	
</script>
<div class="well">
	<div class="row"><br>
		<div id="" class="span3">	
			<form id="login/" action="<?php echo DOMAIN  ?>login/Checkuser/" method="POST">
				<h3>Login.</h3>
				<div class="control-group">
				<label class="control-label" for="username">Username:</label>
					<div class="controls">
						<input name="username" type="text" size="40" value="<?php if (isset($template->user['username'])){ echo $template->user['username']; }?>"  /><br>
						<?php if (isset($template->error['username'])) { echo "<div class='control-group error alert '><span class='help-inline'>" . $template->error['username'] . "</span></div>";} ?>
						</div>
					</div>
				<div class="control-group">
					<label class="control-label" for="password">Password:</label>
					<div class="controls">
						<input name="password" type="password" size="40" /><br>
						<?php if (isset($template->error['password'])) { echo "<div class='control-group error alert '><span class='help-inline'>" . $template->error['password'] . "</span></div>";} ?>
						</div>
					</div>
				<div class="control-group">
					<div class="controls">
					<input name="submit" id="submitButton" class="btn btn-primary" type="submit" size="15" />
					</div>
				</div>
			</form>	
		</div>
	</div>
</div>

<?php include_once(INCLUDES_PATH . DS. 'footer.php'); ?>
