	<link rel="stylesheet" href="<?=BASE_URL?>assets/css/login.css">
</head>
<body class="text-center">
	<div class="container mt-5">
		<form class="form-signin rounded" method="post" action="<?=BASE_URL?>home/validate/">
			<h1 class="h3 mb-3 font-weight-normal">UD-MIFTA Login</h1>
			<label for="username" class="sr-only">Username</label>
			<input id="username" name="username" class="form-control" placeholder="Username" required="true" autofocus="true" type="text">
			<label class="sr-only" for="password" >Password</label>
			<input class="form-control" name="password" placeholder="Password" type="password" required="true">
			<button class="btn btn-lg-primary btn-danger mt-5" type="submit">Login</button>
			<p class="mt-5 mb-3 text-muted">UD-MIFTA 2018</p>
		</form>
	</div>
</body>