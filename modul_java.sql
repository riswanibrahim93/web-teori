-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Okt 2021 pada 13.00
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `modul_java`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `artikel`
--

CREATE TABLE `artikel` (
  `id_artikel` int(10) NOT NULL,
  `judul_artikel` varchar(100) NOT NULL,
  `ditulis` varchar(50) NOT NULL,
  `about` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `artikel`
--

INSERT INTO `artikel` (`id_artikel`, `judul_artikel`, `ditulis`, `about`) VALUES
(10, 'Algoritma dan Pemrograman Dasar', 'Riswan, 2 April 2020', '<h4>ABOUT</h4>\r\n						<p>Artikel ini menjelaskan tentang bahasa pemprograman Java. Artikel ini nantinya menyediakan modul-modul dasar belajar bahasa pemrograman Java. Mulai dari Installasi, Keyword, Tipe Variabel, Operator, statement Condition, dan Looping</p>'),
(11, 'INSTALASI JAVA', 'Riswan, 4 April 2020', ''),
(12, 'TIPE DATA, KEYWORD, VARIABEL, OPERATOR DAN TEKNIK KONFERSI', 'Riswan, 15 April 2020', NULL),
(13, 'STETEMENT CONDITION', 'Riswan, 12 April 2020', '<p>\r\n				Pada bagian   ini,  kita   akan  mempelajari  tentang   struktur   kontrol dimana kita dapat mengubah cara eksekusi pada pernyataan yang dibuat di program kita. Struktur   kontrol  adalah  pernyataan dari Java  yang  mengijinkan  user  untuk memilih dan mengeksekusi blok kode spesifik dan mengabaikan blok kode yang lain. \r\n			</p>'),
(14, 'LOOPING (PERULANGAN)', 'Riswan, 18 April 2020', '<p>\r\n				Pengulangan adalah berupa pernyataan dari Java yang mengijinkan kita untuk mengeksekusi blok code berulang-ulang sesuai dengan  jumlah  tertentu  yang diinginkan.   Ada   tiga   macam   jenis   dari struktur pengulangan yaitu while, do-while, dan for-loops. \r\n			</p>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `gambar`
--

CREATE TABLE `gambar` (
  `no` int(11) NOT NULL,
  `id_artikel` int(10) NOT NULL,
  `link_gambar` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `gambar`
--

INSERT INTO `gambar` (`no`, `id_artikel`, `link_gambar`) VALUES
(1, 11, 'gambar/install.png'),
(2, 12, 'gambar/variabel_tipedata.png'),
(3, 13, 'gambar/percabangan.png'),
(4, 14, 'gambar/looping.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `link`
--

CREATE TABLE `link` (
  `id_link` int(10) NOT NULL,
  `id_artikel` int(10) NOT NULL,
  `nama_link` varchar(100) NOT NULL,
  `link` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `link`
--

INSERT INTO `link` (`id_link`, `id_artikel`, `nama_link`, `link`) VALUES
(1, 10, 'Install Java', '<p>Java adalah salah satu bahasa pemrograman yang bersifat open source yang merupakan produk dari Sun Microsystem. Bahasa Java adalah bahasa modern yang telah diterima masyarakat komputasi dunia. Hampir semua perusahaan perangkat lunak dan komputer besar mendukung dan mengembangkan aplikasi sistem berbasis Java. <a href=\"bagian.php?op=\'11\'\">Read more...</a> \r\n					</p>'),
(2, 10, 'Keyword', '<p>Kata kunci adalah identifier yang telah dipesan untuk didefinisikan sebelumnya oleh Java untuk tujuan tertentu. Anda tidak dapat menggunakan keyword sebagai nama variabel, class, method anda, dsb <a href=\"bagian.php?op=\'12\'\">Read more...</a> \r\n					</p>'),
(3, 10, 'Statement Condition', '<p>\r\n						Pada bagian   ini,  kita   akan  mempelajari  tentang   struktur   kontrol dimana kita dapat mengubah cara eksekusi pada pernyataan yang dibuat di program kita. Struktur   kontrol  adalah  pernyataan dari Java  yang  mengijinkan  user  untuk memilih dan mengeksekusi blok kode spesifik dan mengabaikan blok kode yang lain. <a href=\"bagian.php?op=\'13\'\">Read more...</a> \r\n					</p>'),
(4, 10, 'Looping', '<p>\r\n						Pengulangan adalah berupa pernyataan dari Java yang mengijinkan kita untuk mengeksekusi blok code berulang-ulang sesuai dengan  jumlah  tertentu  yang diinginkan.   Ada   tiga   macam   jenis   dari struktur pengulangan yaitu while, do-while, dan for-loops. <a href=\"bagian.php?op=\'14\'\">Read more...</a> \r\n					</p>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `request`
--

CREATE TABLE `request` (
  `no` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `request` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sub`
--

CREATE TABLE `sub` (
  `id_sub` int(10) NOT NULL,
  `id_artikel` int(10) NOT NULL,
  `sub_judul` varchar(100) NOT NULL,
  `sub_artikel` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sub`
--

INSERT INTO `sub` (`id_sub`, `id_artikel`, `sub_judul`, `sub_artikel`) VALUES
(1, 10, '<h4><b>Kenali Pengertian Java Beserta Fungsi, Kelebihan dan Kekurangan Java</b></h4>', '<p>\r\n								Jika mahasiswa atau siswa jurusan Teknologi Informasi, <a href=\"https://www.nesabamedia.com/pengertian-java/\">Read more...</a> \r\n							</p>'),
(2, 10, '<h4><b>Tutorial Belajar Java Part 1: Pengertian Bahasa Pemrograman Java</h4></b>', '<p>\r\n								Dalam tutorial pertama belajar bahasa pemrograman Java <a href=\"https://www.duniailkom.com/tutorial-belajar-java-pengertian-bahasa-pemrograman-java/\">Read more...</a> \r\n							</p>'),
(3, 10, '<h4><b>Java Syntax</b></h4>', '<p>\r\n								In the previous chapter, we created a Java file called MyClass.java,<a href=\"https://www.w3schools.com/java/java_syntax.asp\">Read more...</a> \r\n							</p>'),
(4, 11, 'Pengenalan Java', '<p>Java adalah salah satu bahasa pemrograman yang bersifat open source yang merupakan produk dari Sun Microsystem. Bahasa Java adalah bahasa modern yang telah diterima masyarakat komputasi dunia. Hampir semua perusahaan perangkat lunak dan komputer besar mendukung dan mengembangkan aplikasi sistem berbasis Java.</p>\r\n				<p>Java adalah salah satu bahasa pemrogaman Multiplatform (Bisa berjalan di berbagai macam system operasi) karena pada dasarnya java mempunyai <b>Jre</b> (<i>java runtime environment</i>) atau dapat kita artikan sebagai mesin tersendiri untuk mengeksekusi binary code hasil dari compilasi program yang telah kita buat, berbeda dengan bahasa pemrograman vb, c++ yang memanfaatkan komponen system dalam Windows untuk mengeksekusi binary code hasil kompilasi program. </p>\r\n				<p> Pada Tahun 1996, Sun Microsystem secara resmi merilis versi awal Java yang kemudian terus berkembang hingga muncul <b>JDK 1.1</b> (<i>Java Development Kit versi 1.1</i>). Perkembangan terus  dilakuk'),
(5, 11, 'Instalasi JDK ', '<p>Sebelum anda membuat aplikasi dengan java maka anda harus menginstal software Bahasa pemrograman java. java dapat anda dapatkan dengan cara download di alamat link berikut <a href=\"http://www.oracle.com/technetwork/java/javase/downloads/index.html\">http://www.oracle.com/technetwork/java/javase/downloads/index.html</a>. Kemudian setelah anda mendownloadnya maka mulai dengan menginstal, pada dasarnya proses insalasi java sangat mudah yaitu dengan cara mengklik ganda pada file master java kemudian ikuti prosedur yang diperintahkan. </p>'),
(6, 11, 'Seting path', '<p>Untuk dapat dijalankan di semua lingkungan pada suatu operasi system, terlebih dahulu kita harus melakukan seting path, untuk melakukan setting path silahkan perhatikan berikut: </p>\r\n					<ul>\r\n						<li>Klik kanan my Computer kemudian pilih properties </li>\r\n						<li>Kemudian muncul jendela seperti berikut, kemudian klik advanced </li>\r\n						<li>Kemudian klik tombol environment variable </li>\r\n						<li>Setelah itu akan muncul jendela environment variable, kemudian klik new pada panel System variable, dan isikan keterangan berikut : </li>\r\n						<ol>\r\n							<li> Variable name = path </li>\r\n							<li> Variable value = C:\\Program Files\\Java\\jdk1.8.0_144\\bin </li>\r\n						</ol>\r\n					</ul>'),
(7, 11, 'Editor Java', '<p>Ada banyak editor yang bisa kita gunakan untuk menuliskan soce code bahasa pemrograman java, bahkan semua editor dimungkinkan selama editor tersebut mampu menyimpan file dengan ekstensi .java yang merupakan ekstensi dari file untuk menyimpan source code bahasa pemrograman java. </p>'),
(8, 12, 'Keyword dalam Java', '<p>\r\n						Kata kunci adalah identifier yang telah dipesan untuk didefinisikan sebelumnya oleh Java untuk tujuan tertentu. Anda tidak dapat menggunakan keyword sebagai nama variabel, class, method anda, dsb \r\n					</p>'),
(12, 12, 'Tipe Data Primitif', '<p>\r\n						Bahasa pemrograman Java mendefinisikan delapan tipe data primitif. Mereka diantaranya adalah boolean (untuk bentuk logika), char (untuk bentuk tekstual), byte, short, int, long (integral), double and float (floating point). \r\n					</p>'),
(13, 12, 'Variabel', '<p>\r\n						Variabel adalah item yang digunakan data untuk menyimpan pernyataan objek. Variabel memiliki <b>tipe</b>, <b>data</b> dan <b>nama</b>. Tipe data menandakan tipe nilai yang dapat dibentuk oleh variabel itu sendiri. Nama variabel harus mengikuti aturan untuk identifier. \r\n					</p>\r\n					<ul>\r\n						<li>\r\n							<b>Deklarasi dan Inisialisasi Variabel</b>\r\n							<p>Untuk deklarasi variabel adalah sebagai berikut,</p>\r\n							<p>\"data tipe\" \"name\" [=initial value]; </p>\r\n							<p>\r\n								Nilainya berada diantara <> adalah nilai yang disyaratkan, sementara nilai dalam tanda [] bersifat optional sesuai dengan tipe data yang dipaki untuk deklarasi variabel. \r\n							</p>\r\n						</li>\r\n						<li>\r\n							<b>Menampilkan Data Variabel</b>\r\n							<p>Untuk mengeluarkan nilai dari variabel yang diinginkan, kita dapat menggunakan perintah sebagai berikut, System.out.println()  atau System.out.print(). </p>\r\n						</li>\r\n					</ul>'),
(14, 12, 'Teknik Konversi Data ', '<p>Konfersi adalah cara untuk memberikan nilai suatu data dari satu tipe data ke tipe data yang lain. </p>\r\n					<p>Contoh: </p>\r\n					<p><b>int a=50;</b></p>\r\n					<p><b>double b=40.5;</b></p>\r\n					<p><b>String konfersi_a =String.valueOf(a);</b>// konfersi dari integer ke string</p>\r\n					<p><b>String konfersi_b =String.valueOf(b);</b>//konfersi dari double ke string </p>\r\n					<p><b>int pindah_keinteger =Integer.parseInt(konfersi_a);</b>// konfersi dari string ke integer </p>\r\n					<p><b>double pindah_kedouble =Double.parseDouble(konfersi_b);</b>// konfersi dari string ke double </p>\r\n					<p>Yang perlu diketahui, bahwa konfersi data dilakukan jika kita membutuhkan suatu tipe data yang sama untuk menjalankan sebuah proses, jika data tersebut sudah sama tipe datanya maka tidak perlu dilakukan proses konfersi data:</p>\r\n					<p>Contoh: </p>\r\n					<p>\r\n						Penjumlahan antara <b>int a=2</b> dan <b>int b=4</b> maka hal ini bisa langsung kita lakukan dengan menjumlahkannya missal int <b>hasil=a+b</b>; namun jika ada <b>String a=”2”;</b> dan <b>int b=4;</b> maka untuk menjumlahkannya terlebih dahulu harus kita lakukan proses konfersi yaitu mengubah nilai string a menjadi int dengan cara int konv_a=<b>Integer.parseInt(a);</b> baru kita lakukan proses penambahan. \r\n					</p>'),
(15, 12, 'Operator', '<p>Dalam Java, ada beberapa tipe operator. Ada operator aritmatika, operator relasi, operator logika, dan operator kondisi. Operator ini mengikuti bermacam-macam prioritas yang pasti sehingga compilernya akan  tahu  yang mana  operator  untuk  dijalankan  lebih  dulu  dalam kasus beberapa operator yang dipakai bersama-sama dalam satu pernyataan. </p>\r\n					<ul>\r\n						<li>\r\n							<b>Operator Aritmatika </b>\r\n							<table>\r\n								<tr>\r\n									<th>Contoh</th>\r\n									<th>Nama</th>\r\n									<th>Hasil</th>\r\n								</tr>\r\n								<tr>\r\n									<td>a + b</td>\r\n									<td>Penjumlahan</td>\r\n									<td>Jumlah dari $a dan $b</td>\r\n								</tr>\r\n								<tr>\r\n									<td>a - b</td>\r\n									<td>Pengurangan</td>\r\n									<td>Selisih dari $a dan $b</td>\r\n								</tr>\r\n								<tr>\r\n									<td>a * b</td>\r\n									<td>Perkalian</td>\r\n									<td>Hasil kali dari $a dan $b</td>\r\n								</tr>\r\n								<tr>\r\n									<td>a / b</td>\r\n									<td>Pembagian</td>\r\n									<td>Pembagian dari $a dan $b</td>\r\n								</tr>\r\n								<tr>\r\n									<td>a % b</td>\r\n									<td>Modulus</td>\r\n									<td>Sisa dari $a dibagi dengan $b</td>\r\n								</tr>\r\n							</table>\r\n						</li>\r\n						<li>\r\n							<b>Operator Relasi</b>\r\n							<p>Operator Relasi membandingkan  dua nilai  dan menentukan  keterhubungan  diantara  nilainilai tersebut. Hasil keluarannya berupa nilai boolean yaitu true atau false.</p>\r\n							<table>\r\n								<tr>\r\n									<th>Contoh</th>\r\n									<th>Nama</th>\r\n									<th>Hasil</th>\r\n								</tr>\r\n								<tr>\r\n									<td>a == b</td>\r\n									<td>sama dengan</td>\r\n									<td>benar jika a sama dengan b</td>\r\n								</tr>\r\n								<tr>\r\n									<td>a != b</td>\r\n									<td>tidak sama</td>\r\n									<td>benar jika a tidak sama dengan b</td>\r\n								</tr>\r\n								<tr>\r\n									<td>a < b</td>\r\n									<td>lebih kecil</td>\r\n									<td>benar jika a lebih kecil b</td>\r\n								</tr>\r\n								<tr>\r\n									<td>a > b</td>\r\n									<td>lebih besar</td>\r\n									<td>benar jika a lebih besar b </td>\r\n								</tr>\r\n								<tr>\r\n									<td>a <= b</td>\r\n									<td>lebih kecil atau sama dengan</td>\r\n									<td>benar jika a lebih kecil atau sama dengan b</td>\r\n								</tr>\r\n								<tr>\r\n									<td>a >= b</td>\r\n									<td>lebih besar atau sama dengan</td>\r\n									<td>benar jika a lebih besar atau sama dengan b</td>\r\n								</tr>\r\n							</table>\r\n						</li>\r\n					</ul>'),
(17, 13, 'Statement if', '<p>\r\n						Pernyataan if akan menentukan sebuah pernyataan (atau blok kode) yang akan eksekusi jika dan hanya jika persyaratan bernilai benar(true). \r\n					</p>'),
(18, 13, 'Statement if-else', '<p>\r\n						Pernyataan  if-else  digunakan  apabila  kita  ingin  mengeksekusi  beberapa  pernyataan dengan kondisi true dan pernyataan yang lain dengan kondisi false. \r\n					</p>'),
(19, 13, 'Statement if-else-if', '<p>\r\n						Pernyataan  pada  bagian  kondisi   else  dari  blok   if-else  dapat  menjadi  struktur   if-else  yang   lain. Kondisi  struktur    seperti    ini   mengijinkan    kita   untuk   membuat    seleksi persyaratan  yang  lebih kompleks. Bentuk statement if-else if,  \r\n					</p>\r\n					<p>\r\n						<br><b>if( boolean_expression1 )  <br>statement1;  <br>else if( boolean_expression2 )  <br>statement2;  <br>else   <br>statement3</b> \r\n					</p>'),
(20, 13, 'Statement switch', '<p>Cara lain untuk membuat cabang  adalah  dengan  menggunakan  kata  kunci  switch. Switch mengkonstruksikan cabang untuk beberapa kondisi dari nilai. Bentuk statement switch,</p>\r\n					<p>\r\n						  <br><b>switch( switch_expression ) <br>{  <br>case case_selector1: statement1;  <br>break;  <br>case case_selector2: statement2;  <br>break;  <br>default: statement3;   <br>break;  <br>} </b>\r\n					</p>'),
(21, 14, 'While Loop', '<p>\r\n						Pernyataan while loop adalah pernyataan atau blok pernyataan yang diulang-ulang sampai mencapai kondisi yang cocok. Bentuk pernyataan while,  <br>\r\n						<b>while( boolean_expression ) <br>{  <br>statement1;  <br>statement2;  <br>}</b>  \r\n					</p>\r\n					<p>\r\n						Pernyataan di dalam while loop akan dieksekusi berulang-ulang selama kondisi boolean_expression bernilai benar (true). Contoh, pada kode dibawah ini,  <br><b>int i = 4;  <br>while ( i > 0 ){ <br>System.out.print(i);  <br>i--;  <br>} </b>\r\n					</p>'),
(22, 14, 'Do-While Loop', '<p>\r\n						Do-while    loop    mirip     dengan    while-loop.     Pernyataan    di    dalam     do-while    loop akan dieksekusi beberapa kali selama kondisi bernilai benar(true). Perbedaan antara while dan dowhile loop adalah dimana pernyataan di dalam do-while loop akan dieksekusi sedikitnya satu kali. Perbedaan antara while dan do-while loop adalah dimana pernyataan di dalam do-while loop akan dieksekusi sedikitnya satu kali. Bentuk pernyataan do-while, <br><b>do{    <br>statement1;  <br>statement2;  <br>}while( boolean_expression );</b>   \r\n					</p>\r\n					<p>\r\n						Pernyataan di dalam do-while loop  akan  dieksekusi  pertama  kali,  dan  akan  dievaluasi kondisi dari boolean_expression.  Jika   nilai pada boolean_expression tersebut   bernilai true, pernyataan di dalam dowhile loop akan dieksekusi lagi. Berikut ini beberapa contoh do-while loop: <br><b>int x = 0;  <br>do  {  <br>System.out.println(x);  <br>x++;  <br>}while (x<10);</b>  <br>\r\n					</p>'),
(23, 14, 'For Loop', '<p>\r\n						Pernyataan for loop memiliki kondisi  hampir  mirip  seperti  struktur  pengulangan sebelumnya yaitu  melakukan  pengulangan  untuk  mengeksekusi  kode  yang  sama sebanyak jumlah yang telah ditentukan. Bentuk dari for loop,  <br><b>for( int i = 0; i < 10; i++ ){  <br>System.out.print(i);  <br>}  </b>\r\n					</p>\r\n					<p>\r\n						Pada contoh ini pernyataan i=0 merupakan inisialisasi dari variabel.  Selanjutnya, kondisi i<10    diperiksa.    Jika    kondisi    bernilai    true, pernyataan di dalam    for    loop dieksekusi. Kemudian, ekspresi i++    dieksekusi, lalu akan kembali pada bagian pemeriksaan terhadap kondisi i<10  lagi.    Kondisi    ini akan dilakukan berulang-ulang sampai mencapai nilai yang salah (false).  \r\n					</p>');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id_artikel`);

--
-- Indeks untuk tabel `gambar`
--
ALTER TABLE `gambar`
  ADD PRIMARY KEY (`no`),
  ADD KEY `id_artikel` (`id_artikel`);

--
-- Indeks untuk tabel `link`
--
ALTER TABLE `link`
  ADD PRIMARY KEY (`id_link`),
  ADD KEY `id_artikel` (`id_artikel`);

--
-- Indeks untuk tabel `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`no`);

--
-- Indeks untuk tabel `sub`
--
ALTER TABLE `sub`
  ADD PRIMARY KEY (`id_sub`),
  ADD KEY `id_artikel` (`id_artikel`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `gambar`
--
ALTER TABLE `gambar`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `link`
--
ALTER TABLE `link`
  MODIFY `id_link` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `request`
--
ALTER TABLE `request`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `sub`
--
ALTER TABLE `sub`
  MODIFY `id_sub` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `gambar`
--
ALTER TABLE `gambar`
  ADD CONSTRAINT `gambar_ibfk_1` FOREIGN KEY (`id_artikel`) REFERENCES `artikel` (`id_artikel`);

--
-- Ketidakleluasaan untuk tabel `link`
--
ALTER TABLE `link`
  ADD CONSTRAINT `link_ibfk_1` FOREIGN KEY (`id_artikel`) REFERENCES `artikel` (`id_artikel`);

--
-- Ketidakleluasaan untuk tabel `sub`
--
ALTER TABLE `sub`
  ADD CONSTRAINT `sub_ibfk_1` FOREIGN KEY (`id_artikel`) REFERENCES `artikel` (`id_artikel`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
