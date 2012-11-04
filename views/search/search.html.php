<?php
include_once(INCLUDES_PATH . DS. 'header.php');

$user = false;

if (isset($_SESSION['user']['user_id']) && $_SESSION['user']['user_id'] == 1) { $user = true;  }
?>
<style type="text/css">
<!--

.formstyle {
	width: 120px;
}

td {
	width: 120px;
	height: 30px;
}

tr {
	text-align: center;
}


-->
</style>

<div class="well">
<div class="row"><br>

	<?php if (isset($_SESSION['user']['user_id'])){  ?>
<div id="swrapper" class="span4">
<form action="<?php echo DOMAIN . "searchResult/"; ?>" method="GET" id="searchform" class="sform-horizontal" >
	<fieldset>
		<!-- <div class="control-group">
			<label class="control-label" for="name">Name:</label>
				<div class="controls">
					<input type="text" name="name" class="error" />
				</div>
				</div> -->
	<div class="control-group">
	<label class="control-label" for="name">ANZ - Code: </label>
		<div class="controls"><input type="text" name="code" />
			</div>
			</div>
		<!-- <div class="control-group">
		<label class="control-label" for="name">K Number: </label>
		<div class="controls"><input type="text" name="knumber" />
			</div>
			</div> -->
		<div class="control-group">
	<label class="control-label" for="name">Category:</label>
		<div class="controls"><select type="text" name="category">
				<option selected="selected" value="0" >ALL</option>
				<option value="1" >Brand</option>
				<option value="2" >Campaign</option>
				<option value="3" >Info</option>
				<option value="4" >Community</option>
				<option value="5" >Tips</option>
				</select>
				</div>
				</div>
	<div class="control-group">
	<label class="control-label" for="name">Version: </label>
	<div class="controls"><select type="text" name="version">
				<option selected="selected" value="1" >Standard Gem</option>
				<option value="2" >Prospect</option>
				<option value="3" >Template</option>
				<option value="4" >Matrix</option>
				</select>
				</div>
				</div>
	<div class="control-group">
	<label class="control-label" for="name">Status: </label>
	<div class="controls"><select type="text" name="status">
				<option value="1" >In Progress</option>
				<option value="2" >Completed</option>
				<option value="3" >Archive</option>
				
				
				<?php
					if ($user){
						echo "<option selected='selected' value='4'>Disabled</option>";
					}
				?>
				<option selected="selected" value="0" >ALL</option>
				</select>
				</div>
				</div>
	<div class="control-group">
	<div class="controls"><input type="submit" name="submit" value="Search" class="btn-success" />
			<?php
				if ($user){
					echo " <input id='add' type='button' value='Add advert' class='btn btn-primary' />";
				} 
				?>
	</div>
	</div>
	</fieldset>
	<script>
		$("#add").click(function () { 
		      window.location.href = "../advert/";
		    });
		
	</script>
</form>

</div>

<?php } else {
	echo '<div class="span4">';
	echo '<p>Sorry, You need to be logged in.</p>';
	echo "<p><a class='btn btn-primary' href='" . DOMAIN . "login/'>Login.</a></p>";
	echo '</div';
	
}?>
</div>
<?php 
include_once(INCLUDES_PATH . DS. 'footer.php');
?>