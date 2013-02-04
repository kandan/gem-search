<?php
include_once(INCLUDES_PATH . DS. 'header.php');



//added containers and grids - Sally
?>

<div class = "container_12 ">
<div class = "grid_4"><p> </p></div>
<div class = "grid_6"><h3>Search Result </h3></div>
<div class = "grid_2"><p><a class="btn btn-primary" href="<?php echo DOMAIN . "search/" ?>">Search Again...</a></p></div>
</div>
<div class = "container_12 searchResult">
<div class = "grid_1"><p></p></div>
<div class = "grid_10">

	     <?php
		    $rowsFound = count($result);
			
			if($rowsFound > 0){
				
				print "<h5><strong>{$rowsFound}</strong> Gem adverts were found according to  your criteria.</h5><br/>";
		 		print "\n<table class='table'>\n<tr>" .
				"\n\t<td width = '20%'><strong>ANZ Code</strong></td>" .
				"\n\t<td width = '15%'><strong>Category</strong></td>" .
				"\n\t<td width = '15%'><strong>Status</strong></td>" .
				"\n\t<td width = '15%'><strong>Date</strong></td>" .
				"\n\t<td width = '15%'><strong>Version</strong></td>";
				if ($user)
				 {
					print "\n\t<td width = '10%'><strong>Admin</strong></td>";
				  }
				    print "\n\t<td width = '10%'><strong>Content</strong></td>\n</tr>";
				
				foreach($result as $results)
				{	
					$myts = $results["date"];
					$mydate = date('F-Y', strtotime($myts));
					if ($mydate == 'November--0001'){
						$mydate = 'Pre March 2012';
						} else {
							$mydate = $mydate;
							}
				   print "\n<tr>\n\t<td>{$results["code"]}</td>";
				   print "\n\t<td>{$results["category"]}</td>";       
				   print "\n\t<td>{$results["status"]}</td>";
				   print "\n\t<td>{$mydate}</td>";
				   print "\n\t<td>{$results["version"]}</td>"; 
				  
				   ?>
				  <?php
					if ($user){
						echo "<td width='115'><a href='".DOMAIN."advert/{$results['id']}/edit/'>Edit</a></td>";
					}
					?>


				   <?php if ($results['status'] != "DISABLED"){ ?>
					
							<?php if ($results['version'] != "Flash Template") { ?>
						   				<td width="115"><a class="btn btn-success" href="<?php echo DOMAIN . "playvideo?code=" . $results['code'] . "&status=" .$results['status'] . "&notes=" .$results['notes']   ?>">View Content</a></td>
							<?php } else { ?>
										<td width="115"><a class="btn btn-success" href="<?php echo DOMAIN . "playflash?code=" . $results['code'] . "&status=" .$results['status'] . "&notes=" .$results['notes']   ?>">View template</a></td>
							<?php }    ?>

				   <?php } else {  ?>
					<td width="115"><a class="btn disabled" >No Content</a></td>

				<? } ?>
				
				<?php
				   print "\n</tr>";
				} }
				   print "\n</table>";
				   } 	
				?>


			
 			
				
		
</div>
<div class = "grid_1"><p></p></div>
</div>
	<script> 
		
			$("tr:odd").css({'color': '#000', 'background-color':'#eee'});</script>

<?php 
include_once(INCLUDES_PATH . DS. 'footer.php');
?>