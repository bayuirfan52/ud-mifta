	<link rel="stylesheet" href="<?=BASE_URL?>css/login.css">
</head>
<body class="text-center">
	<div class="container-fluid mt-5">
		<form class="form-signin rounded" method="post" action="">
			<h1 class="h3 mb-3 font-weight-normal">UD-MIFTA Login</h1>
			<label for="username" class="sr-only">Username</label>
			<input id="username" class="form-control" placeholder="Username" required="true" autofocus="true" type="text">
			<label class="sr-only" for="password" >Password</label>
			<input class="form-control" placeholder="Password" type="password" required="true">
			<button class="btn btn-lg-primary btn-danger mt-5" type="submit">Login</button>
			<p class="mt-5 mb-3 text-muted">UD-MIFTA 2018</p>
		</form>
	</div>