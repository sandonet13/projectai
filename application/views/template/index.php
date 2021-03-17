<html>
	<head>
		<title><?php echo $title ?></title>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	    <meta name="description" content="Demo project with jQuery">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/css/bootstrap.min.css" integrity="sha384-Zug+QiDoJOrZ5t4lssLdxGhVrurbmBWopoEl+M6BdEfwnCJZtKxi1KgxUyJq13dy" crossorigin="anonymous">
		<style type="text/css"></style>
	</head>
	<body>
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		  <a class="navbar-brand" href="#">Navbar</a>
		  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
		    <span class="navbar-toggler-icon"></span>
		  </button>
		  <div class="collapse navbar-collapse" id="navbarNav">
		    <ul class="navbar-nav">
		      <li class="nav-item active">
		        <a class="nav-link" href="<?php echo site_url('home') ?>">Home</a>
		      </li>
		      <li class="nav-item active">
		        <a class="nav-link" href="<?php echo site_url('profile') ?>">Profile</a>
		      </li>
		      <li class="nav-item active">
		        <a class="nav-link" href="<?php echo site_url('contact') ?>">Contact</a>
		      </li>
		    </ul>
		  </div>
		</nav>
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="jumbotron">
						<h1> Hallo, <?= $page ?> </h1>
						<p><?= $content ?></p>
					</div>
				</div>
			</div>
		</div>
		
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		<script type="text/javascript">
			jQuery(function(){
				
			});
		</script>
	</body>
</html>