<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="w3.css">
	<style type="text/css">
		.container
		{
			width: 900px;
			padding-top: 50px;
			margin: auto;
		}
		.kanan
		{
			float: right;
			margin-bottom: 20px;
			margin-right: 20px;
		}
		@media screen and (max-width: 760px)
		{
			.container
			{
				width: 100%;
			}
		}
	</style>
	<title></title>
</head>
<body>
	<div class="container">
		<div class="w3-card-4">
	  		<div class="w3-container w3-teal">
	    		<h2>Input Request</h2>
	  		</div>
	  		<form class="w3-container" action="aksi_request.php" method="POST">
				<p>      
					<label class="w3-text-teal"><b>Nama</b></label>
					<input class="w3-input w3-border w3-light-gray" name="nama" type="text">
				</p>
				<p>      
					<label class="w3-text-teal"><b>Email</b></label>
					<input class="w3-input w3-border w3-light-gray" name="email" type="email">
				</p>
				<p>
					<label class="w3-text-teal"><b>Request Materi</b></label>
					<input class="w3-input w3-border w3-light-gray" name="request" type="text">
				</p>
				<p>
					<button class="w3-btn w3-teal">Tambah</button>
					<a href="web_alpro.php" class="w3-text-teal kanan">Kembali</a>
				</p>
	  		</form>
		</div>
	</div>
</body>
</html>