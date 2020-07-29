<?php 
include "function.php";
$sql = "SELECT `judul_artikel`, `ditulis` from artikel";
$data = select($sql);
 ?>

<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
	<table border="1">
		<tr>
			<th>judul artikel</th>
			<th>ditulis</th>
		</tr>
			<?php 
			foreach ($data as $d) 
			{
			?>
			<tr>
			 	<td><?php echo $d['judul_artikel'] ?></td>
			 	<td><?php echo $d['ditulis'] ?></td>
			</tr>
			<?php 	
			} 
			?>
	</table>

</body>
</html>