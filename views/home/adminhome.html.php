<?php
include_once(INCLUDES_PATH . DS. 'header.php');
?>
<div class="container_12">
<div class=grid_2><p></p></div>	
<div class=grid_8>
<h2 class="homeH2"> Administrator Home Page</h2>

</div>
<div class=grid_2><p></p></div>	
</div>
<div class="clear"></div>
<div class="container_12">
	<div class = "grid_3"><p></p></div>
	<div class = "grid_2 admin"><p><a href = "./admin/inventory">Display Inventory</a></p></div>
	<div class = "grid_2"><p></p></div>
 	<div class = "grid_2 admin"><p><a href = "./admin/allParts">Display Parts</a></p></div>
 	<div class = "grid_3"><p></p></div>

</div>
<div class="container_12">
<div class = "grid_3"><p></p></div>
<div class = "grid_2 admin"><p><a href = "./admin/allManufacturers">Display Manufacturers</a></p></div>
<div class = "grid_2"><p></p></div>
<div class = "grid_2 admin"><p><a href = "./admin/allUsers">Display Users</a></p></div>
<div class = "grid_3"><p></p></div>

</div>
<?php 
include_once(INCLUDES_PATH. DS. 'footer.php'); 
?>
