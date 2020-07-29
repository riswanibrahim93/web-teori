<?php 
include "koneksi.php";
include "function.php";

$nama = $_POST['nama'];
$email = $_POST['email'];
$req = $_POST['request'];

echo $nama, $email, $req;
$sql = "INSERT INTO `request`(`nama`, `email`, `request`) VALUES ('$nama','$email','$req')";
$hasil = insert($sql);

if($hasil == true)
{
	echo "<script>alert('request berhasil, -->klik kembali untuk ke halaman utama<--');history.back()</script>";
}
else
{
	echo "<script>alert('gagal request, -->coba lagi<--');history.back()</script>";
}
 ?>