<!DOCTYPE html>
<html> 
   <head>
   <title><?php echo ucfirst($template->title); ?></title>
      <!-- <link rel="stylesheet" type="text/css" media="all" href="<?php echo DOMAIN ?>css/reset.css" />
           <link rel="stylesheet" type="text/css" media="all" href="<?php echo DOMAIN ?>css/text.css" />
           <link rel="stylesheet" type="text/css" media="all" href="<?php echo DOMAIN ?>css/960.css" /> -->
      <link rel="stylesheet" type="text/css" media="all" href="<?php echo DOMAIN ?>css/XmainStyle.css" />
	<!-- <link rel="stylesheet" type="text/css" media="all" href="<?php echo DOMAIN ?>css/bootstrap.css" /> -->
	<link rel="stylesheet" type="text/css" media="all" href="<?php echo DOMAIN ?>css/bootstrap.min.css" />
	<!-- <link rel="stylesheet" type="text/css" media="all" href="<?php echo DOMAIN ?>css/bootstrap-responsive.css" /> -->
	<link rel="stylesheet" type="text/css" media="all" href="<?php echo DOMAIN ?>css/bootstrap-responsive-min.css" />
		<!-- <link href="../../css/styles.css" rel="stylesheet" type="text/css" /> -->
	  <script src="http://code.jquery.com/jquery-latest.js"></script>
	 <script src="<?php echo DOMAIN ?>js/bootstrap.min.js"></script>
	<script src="<?php echo DOMAIN ?>js/swfobject_modified.js" type="text/javascript"></script>
	<!--[if lt IE 9]>
				<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
			<![endif]-->
	 
	<style>
		#kandan_logo {
			background:url("<?php echo DOMAIN ?>/images/kandan_logo.gif") no-repeat top right ;
			width: 99%;
			border-bottom-width: thin;
			border-bottom-style: solid;
			border-bottom-color: #317EC2;
			text-align: right;
			padding-right: 0px;
			padding-top: 0px;
			margin:15px -140px 0 0;
			display:block;
			height:100px
		}
	</style>
    </head>
	<body>
		<div id="kandan_logo"></div>
		<div class="container-fluid">
			<div class = "grid_3 cartBox">
		  	<?php if(isset($_SESSION['user']['user_id'])) { ?>
			<p>You are logged in as: <strong><?php echo $_SESSION['user']['username'] ?></strong> who is
			
			<?php 
			
			$user = false;

			if (isset($_SESSION['user']['user_id']) && $_SESSION['user']['user_id'] == 1) { $user = true;  }
				
				if (isset($_SESSION['user']['user_id']))
				
				{
					if ($_SESSION['user']['user_id'] > 1)
					
					{
						$user_type = "a User.";
					} 
						else 
					{
						$user_type = "an Admin.";
					}	
						echo $user_type;
			    }
			 ?>
			</p>
		  	<a class="btn btn-small" id = "logout" href = "<?php echo DOMAIN ?>logout/" >Log Out</a>
		  	<?php } else {echo "<p>not logged in... </p>"; }?>
		  	</div>
		    <br>  
	<!-- start of content area -->

