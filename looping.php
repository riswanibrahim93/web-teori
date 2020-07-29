<!DOCTYPE html>
<html>
<head>
	<title>Statement Condition</title>
	<link rel="stylesheet" type="text/css" href="Style2.css">
	<meta  name="viewreport" content="width=device-width initial-scale=1.0">
</head>
<body>
	<?php 
	include "koneksi.php";
	$sql = "SELECT * from artikel where `id_artikel` = 14";
	$a = $koneksi->query($sql);
	while($b = mysqli_fetch_array($a))
	{
	?>
	<div class="container">	
		<div class="header small_caps">
			<h1><?php echo $b['judul_artikel']; ?></h1>
		</div>
		<div class="penulis">
			<p><?php echo $b['ditulis']; ?></p>
		</div>
	
		<div class="topnav">
			<a href="web_alpro.php">Home</a>
			<a href="install.php">Install Java</a>
			<a href="keyword.php">Keyword</a>
			<a href="statment_condition.php">Statement Condition</a>
			<a href="looping.php">Looping</a>
		</div>
		<br>
		<br>
		<div class="content">
	<?php echo $b['about']; 
	}
	?>
			<ol>
				<?php 
				$sql = "SELECT * from sub where `id_artikel` = 14";
				$a = $koneksi->query($sql);
				while($b = mysqli_fetch_array($a))
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
		<div class="footer">
			<p>Copyright&copy; 2020.</p>
		</div>
	</div>
</body>
</html>