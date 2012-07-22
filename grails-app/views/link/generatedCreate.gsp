


<!doctype html>

<html lang="en">

	<head>

		<meta charset="utf-8">

		<title>Create Link</title>

		<meta name="description" content="">

		<meta name="author" content="mike miller">



		<meta name="viewport" content="initial-scale = 1.0">



		<!-- Le HTML5 shim, for IE6-8 support of HTML elements -->

		<!--[if lt IE 9]>

			<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>

		<![endif]-->



		



		<!-- Le fav and touch icons -->

		<link rel="shortcut icon" href="/Linker/static/images/favicon.ico" type="image/x-icon">

		<link rel="apple-touch-icon" href="/Linker/static/images/apple-touch-icon.png">

		<link rel="apple-touch-icon" sizes="72x72" href="/Linker/images/apple-touch-icon-72x72.png">

		<link rel="apple-touch-icon" sizes="114x114" href="/Linker/static/images/apple-touch-icon-114x114.png">



		
		<meta name="layout" content="bootstrap">
		
		
	

		<script src="/Linker/static/plugins/jquery-1.7.1/js/jquery/jquery-1.7.1.min.js" type="text/javascript" ></script>
<link href="/Linker/static/bundle-bundle_bootstrap_head.css" type="text/css" rel="stylesheet" media="screen, projection" />

<link href="/Linker/static/css/scaffolding.css" type="text/css" rel="stylesheet" media="screen, projection" />


	</head>



	<body>



		<nav class="navbar navbar-fixed-top">

			<div class="navbar-inner">

				<div class="container-fluid">

					

					<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">

						<span class="icon-bar"></span>

						<span class="icon-bar"></span>

						<span class="icon-bar"></span>

					</a>

					

					<a class="brand" href="/Linker/">Linker</a>



					<div class="nav-collapse">

						<ul class="nav">							

							<li><a href="/Linker/">Home</a></li>

						</ul>

					</div>

					<form class="navbar-search pull-right" action="">

						<input type="text" class="search-query span2" placeholder="Search">

					</form>

				</div>

			</div>

		</nav>



		<div class="container-fluid">

			
		
		<div class="row-fluid">
		
			<div class="span3">
				<div class="well">
					<ul class="nav nav-list">
						<li class="nav-header">Link</li>
						<li class="active">
							<a href="/Linker/link/list" class="list">
								<i class="icon-list icon-white"></i>
								Link List
							</a>
						</li>
						<li>
							<a href="/Linker/link/create" class="create">
								<i class="icon-plus"></i>
								Create Link
							</a>
						</li>
					</ul>
				</div>
			</div>

			<div class="span9">
				<div id="create-link" class="content scaffold-create" role="main">
					<h1>Create Link</h1>
					
					
					<form action="/Linker/link/save" method="post" >
						<fieldset class="form">
							

<div class="control-group ">

	<label class="control-label" for="urlLink">Url Link</label>

	<div class="controls">

		<input type="url" name="urlLink" value="" id="urlLink" />

		

	</div>

</div>

<div class="control-group ">

	<label class="control-label" for="rating">Rating</label>

	<div class="controls">

		<input type="range" name="rating" value="" required="" min="1" max="5" id="rating" />

		

	</div>

</div>

<div class="control-group ">

	<label class="control-label" for="summary">Summary</label>

	<div class="controls">

		<input type="text" name="summary" value="" required="" id="summary" />

		

	</div>

</div>

<div class="control-group ">

	<label class="control-label" for="user">User</label>

	<div class="controls">

		<input type="text" name="user" value="" required="" id="user" />

		

	</div>

</div>
						</fieldset>
						<fieldset class="buttons">
							<input type="submit" name="create" class="save" value="Create" id="create" />
						</fieldset>
					</form>
				</div>
			</div>
		</div>
	



			<hr>



			<footer>

				<p>&copy; Mike Miller 2012</p>

			</footer>

		</div>



		<script src="/Linker/static/bundle-bundle_bootstrap_defer.js" type="text/javascript" ></script>















	</body>

</html>