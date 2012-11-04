<?php
// available vars:
include_once(INCLUDES_PATH . DS. 'header.php');

if (isset($template->advert['id']))
	{
		$id =  $template->advert['id'];
	}


?>
<div class="row">
	<div class="span2">
		<h3>Edit an advert </h3>
			<a href="<?php echo DOMAIN. 'search/';?>"  class='btn btn-primary' id='search' >Search</a>
      </div>
	
<div id="swrapper" class="span11">
		
		
		<form method="POST" id="searchform" class="form-horizontal" action="<?php echo DOMAIN . "advert/{$id}/update/"; ?>" >
			
			<fieldset>			
				<div class="control-group">
				
				<label class="control-label" for="code">Name:</label>
					<div class="controls">
						<input type="text" name="code" value="<?php if (isset($template->advert['code'])){echo $template->advert['code'];} ?>"/>
						<span class="help-inline error"><?php if (isset($template->error['code'])) { echo $template->error['code'];} ?></span>
					</div>
					</div>
				<div class="control-group">
				<label class="control-label" for="name">Category:</label>
					<div class="controls"><select type="text" name="category">
							<option selected="selected" value="0" >Please select...</option>
							<option value="1" <?php if (isset($template->advert['category'])) {if ($template->advert['category'] == 1){ echo "selected";} else { echo "";}} ?> >Brand</option>
							<option value="2" <?php if (isset($template->advert['category'])) {if ($template->advert['category'] == 2){ echo "selected";} else { echo "";}} ?> >Campaign</option>
							<option value="3" 
							<?php if (isset($template->advert)) {if ($template->advert['category'] == 3){ echo "selected";} else { echo "";}} ?> >Info</option>
							<option value="4" <?php if (isset($template->advert['category'])) {if ($template->advert['category'] == 4){ echo "selected";} else { echo "";}} ?> >Community</option>
							<option value="5" <?php if (isset($template->advert['category'])) {if ($template->advert['category'] == 5){ echo "selected";} else { echo "";}} ?> >Tips</option>
							</select>
							<span class="help-inline error"><?php if (isset($template->error['category'])) { echo $template->error['category'];} ?></span>
							</div>
							</div>
				<div class="control-group">
				<label class="control-label" for="name">Version: </label>
				<div class="controls"><select type="text" name="version">
							<option selected="selected" value="0" >Please select...</option>
							<option value="1" <?php if (isset($template->advert['version'])) {if ($template->advert['version'] == 1){ echo "selected";} else { echo "";}} ?>  >Standard Gem</option>
							<option value="2" <?php if (isset($template->advert['version'])) {if ($template->advert['version'] == 2){ echo "selected";} else { echo "";}} ?>  >Prospect</option>
							<option value="3" <?php if (isset($template->advert['version'])) {if ($template->advert['version'] == 3){ echo "selected";} else { echo "";}} ?>  >Template</option>
							<option value="4" <?php if (isset($template->advert['version'])) {if ($template->advert['version'] == 4){ echo "selected";} else { echo "";}} ?>  >Matrix</option>
							</select>
							<span class="help-inline error"><?php if (isset($template->error['version'])) { echo $template->error['version'];} ?></span>
							</div>
							</div>
				<div class="control-group">
				<label class="control-label" for="name">Status: </label>
				<div class="controls"><select type="text" name="status">
							<option selected="selected" value="0" >Please select...</option>
							<option value="1" <?php if (isset($template->advert['status'])) {if ($template->advert['status'] == 1){ echo "selected";} else { echo "";}} ?>  >In Progress</option>
							<option value="2" <?php if (isset($template->advert['status'])) {if ($template->advert['status'] == 2){ echo "selected";} else { echo "";}} ?>  >Completed</option>
							<option value="3" <?php if (isset($template->advert['status'])) {if ($template->advert['status'] == 3){ echo "selected";} else { echo "";}} ?>  >Archive</option>
							<option value="4" <?php if (isset($template->advert['status'])) {if ($template->advert['status'] == 4){ echo "selected";} else { echo "";}} ?>  >Disabled</option>
							</select>
							<span class="help-inline error"><?php if (isset($template->error['status'])) { echo $template->error['status'];} ?></span>
							</div>
							</div>
				<div class="control-group">
				<label class="control-label" for="notes">Info:</label>
				<div class="controls">
							<textarea rows="6" cols="20" type="text" name="notes" value=""><?php if (isset($template->advert['notes'])){echo $template->advert['notes'];} ?></textarea>
							<span class="help-inline error"><?php if (isset($template->error['notes'])) { echo $template->error['notes'];} ?></span>
							</div>
							</div>
				<div class="control-group">
				<div class="controls"><input type="submit" name="submit" value="Update Advert" class="btn" />
								</div>
								</div>
						</fieldset>
						</form>
						</div>
					</div>


<?php 
include_once(INCLUDES_PATH . DS. 'footer.php');  
?>
