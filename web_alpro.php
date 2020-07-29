<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="Style.css">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Perkenalan algoritma dan pemrograman dasar (ALPRO)</title>
</head>
<body>
	<?php 
	include "koneksi.php";
	include "function.php";
	$sql = "SELECT * from artikel where `id_artikel` = 10";
	$data = select($sql);
	foreach ($data as $b) 
		{
	?>

	<div class="container">
		<div class="header2">
			<p><?php echo $b['ditulis']; ?></p>
		</div>
		<div class="header small_caps">
			<div class="headerright">
				<h1><?php echo $b['judul_artikel']; ?></h1>
			</div>
			<div class="headerstrip"></div>
			<div class="headerleft"></div>
		</div>
		<br>
		
		<div class="topnav">
			<a href="#1">Instalasi Java</a>
			<a href="#2">Keyword</a>
			<a href="#3">Stetement Condition</a>
			<a href="#4">Looping</a>
		</div>
		<br>
		<br>

		<div class="artikel">
				<div class="header_art">
					<h3>Artikel yang berkaitan</h3>
				</div>
				<div class="isi">
					<div class="about">
						<?php echo $b['about']; ?>
					</div>
					<div class="isi1">
	<?php 
		}	
					$sql = "SELECT * from sub where `id_artikel` = 10";
					$data = select($sql);
					foreach ($data as $b)
						{
	?>
						<?php echo $b['sub_judul']; ?>
						<?php echo $b['sub_artikel']; ?>
	<?php 
						}
	?>	
					</div>
				</div>
		</div>	
		<div class="content">
			<div class="sub">
				<ol>
	<?php 
				$sql = "SELECT * from link where `id_artikel` = 10";
				$data = select($sql);
				foreach ($data as $b)
					{
	?>
					<li><b id="<?php echo $b['id_link']; ?>" class="small_caps size"><?php echo $b['nama_link']; ?></b>
						<?php echo $b['link']; ?>
					</li>
					<br>
	<?php 
		}
	?>
				</ol>
			</div>
			<div class="tambah_komen">
				<h4 class="w3-text-dark-grey">Tambah Request Pembahasan yang Berhubungan dengan Java</h4>
				<button class="w3-button w3-rounder w3-teal" onclick="window.location.href = 'modal_click.php';">TAMBAH</button>
			</div>
		</div>
		<div class="footer">
			<p>Copyright&copy; 2020.</p>
		</div>
	</div>
	<script type="text/javascript"></script>
</body>
</html>