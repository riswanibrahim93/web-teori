<!DOCTYPE html>
<html>
<head>
	<title>Modul Java</title>
	<link rel="stylesheet" type="text/css" href="Style2.css">
	<meta  name="viewreport" content="width=device-width initial-scale=1.0">
</head>
<body>
	<?php 
	include "koneksi.php";
	include "function.php";
	$id = $_GET['op'];
	$sql = "SELECT * from artikel where `id_artikel` = $id";
	$data = select($sql);
	foreach ($data as $b)
	{
	?>
	<div class="container">	
		<div class="header small_caps">
			<h1><?php echo $b['judul_artikel']; ?></h1>
		</div>
		<div class="penulis">
			<p><?php echo $b['ditulis']; }?></p>
		</div>
	
		<div class="topnav">
			<a href="web_alpro.php">Home</a>
			<a href="bagian.php?op='11'">Install Java</a>
			<a href="bagian.php?op='12'">Keyword</a>
			<a href="bagian.php?op='13'">Statement Condition</a>
			<a href="bagian.php?op='14'">Looping</a>
		</div>
		<br>
		
		<br>
		<div class="content">
			<div class="gambar">
	<?php 
				$sqlgambar = "SELECT * from gambar where `id_artikel` = $id";
				$data = select($sqlgambar);
				foreach ($data as $b)
	?>
			<img src="<?php echo $b['link_gambar']; ?>">
			</div>
			<div class="about">
	<?php 
	$sql = "SELECT * from artikel where `id_artikel` = $id";
	$data = select($sql);
	foreach ($data as $b)
	{
		echo $b['about']; 
	}
	?>
			</div>
			<div class="sub">
				<ol>
	<?php 
					$sql = "SELECT * from sub where `id_artikel` = $id";
					$data = select($sql);
					foreach ($data as $b)
					{
	?>
					<li><b class="small_caps size"><?php echo $b['sub_judul']; ?></b>
						<?php echo $b['sub_artikel']; ?>
					</li>
	<?php 
					}
	?>
				</ol>
			</div>
		</div>
		<div class="footer">
			<p>Copyright&copy; 2020.</p>
		</div>
	</div>
</body>
</html>