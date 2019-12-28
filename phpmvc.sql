-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 28, 2019 at 06:58 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `berita_terkini`
--
CREATE DATABASE IF NOT EXISTS `berita_terkini` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `berita_terkini`;

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `judul` varchar(50) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id`, `tanggal`, `judul`, `kategori`, `gambar`, `keterangan`) VALUES
(1, '0000-00-00', 'pencurian sepeda motor', 'kriminal', 'sidu23.jpg', 'ucapan selamat  atas penghargaan khusus Outstanding Minister dalam bisinis indonesia'),
(2, '0000-00-00', 'PSM Makasar vs Persija', 'olahraga', 'bola.jpg', 'pertandingan sepak bola yang diadakan di'),
(3, '0000-00-00', 'Mobil Listrik masuk indonesia', 'otomotif', 'ballance3.jpg', 'baru baru ini presiden joko widodo telah menandatangani  perhal mobil listrik'),
(4, '0000-00-00', 'make up murah', 'detikHealth', 'era3.jpg', 'make up murah yang dipakai aris'),
(5, '2019-08-12', 'Nasib LRT jakarta yang tak kunjung di resmikan', 'detikFinance', 'era4.jpg', 'LRT jakarta yang dibangun pada tahun 2015 kini mennuggu peresmian dari pak presiden '),
(6, '2019-08-12', 'Agnez Mo Gaya dengan Rambut Cornrow dan Kulit Gela', 'Wolipop', 'mo1.jpeg', 'Jakarta - Belakangan ini Agnez Mo tampil berbeda dari biasanya. Rambutnya dibuat kepang cornrow dengan tampilan kulit yang lebih gelap. Gaya pelantun \'Coke Bottle\' itu dinilai mengikuti orang kulit hitam hingga menuai kritik dari warganet.\r\n\r\nBelum diketa'),
(7, '2019-12-02', 'satria', 'detikSport', '20190521_134736.jpg', 'asdasd');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `kategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `kategori`) VALUES
(1, 'detikNews'),
(2, 'detikFinance'),
(3, 'detikHot'),
(4, 'detikNet'),
(5, 'detikHot'),
(6, 'detikNet');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(5) NOT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `pass` varchar(100) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `nama`, `pass`, `email`) VALUES
(1, 'jaenudin', '123', 'jae@');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `blog`
--
CREATE DATABASE IF NOT EXISTS `blog` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `blog`;
--
-- Database: `codei`
--
CREATE DATABASE IF NOT EXISTS `codei` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `codei`;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `slug` varchar(128) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `slug`, `text`) VALUES
(8, 'berita ojol nakal', 'berita-ojol-nakal', ' driver ojol mengalami  pelecehan'),
(9, 'cebong berkeliaean', 'cebong-berkeliaean', ' cebong berkeliaran'),
(10, 'ppost terbaru', 'ppost-terbaru', 'ini adalah pst terbaru\r\n');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slug` (`slug`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Database: `codeigniter`
--
CREATE DATABASE IF NOT EXISTS `codeigniter` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `codeigniter`;

-- --------------------------------------------------------

--
-- Table structure for table `codei`
--

CREATE TABLE `codei` (
  `id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `slug` varchar(128) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `codei`
--

INSERT INTO `codei` (`id`, `title`, `slug`, `text`) VALUES
(8, 'berita ojol nakal', 'berita-ojol-nakal', ' driver ojol mengalami  pelecehan'),
(9, 'cebong berkeliaean', 'cebong-berkeliaean', ' cebong berkeliaran');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `slug` varchar(128) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `slug`, `text`) VALUES
(1, 'Jaenudin S.Com, M.Com', 'jaenudin-scom-mcom', '    adalah legenda massa kini aja');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `codei`
--
ALTER TABLE `codei`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slug` (`slug`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slug` (`slug`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `codei`
--
ALTER TABLE `codei`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `company_proflle`
--
CREATE DATABASE IF NOT EXISTS `company_proflle` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `company_proflle`;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(5) NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`) VALUES
(1, 'admin', 'jaenudin0901@bsi.ac.id', 'zxcvbnm'),
(2, 'jae', 'jae@', 'jae'),
(3, 'saya', 'saya@', 'saya');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `dbmebel`
--
CREATE DATABASE IF NOT EXISTS `dbmebel` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `dbmebel`;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `no_telp` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `level` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT 'user',
  `blokir` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`username`, `password`, `nama_lengkap`, `email`, `no_telp`, `level`, `blokir`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator', 'dadang@yahoo.com', '085123456789', 'admin', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `hubungi`
--

CREATE TABLE `hubungi` (
  `id_hubungi` int(5) NOT NULL,
  `nama` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `subjek` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `pesan` text COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `hubungi`
--

INSERT INTO `hubungi` (`id_hubungi`, `nama`, `email`, `subjek`, `pesan`, `tanggal`) VALUES
(34, 'dadang tes', 'dadang@yahoo.com', 'tes pesan', 'tes pesan sodara sodara', '2013-03-30'),
(35, 'ff', 'efewf', 'frfaerga', 'rgergerg', '2017-05-22');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(5) NOT NULL,
  `nama_kategori` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `kategori_seo` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `kategori_seo`) VALUES
(17, 'kitchenshet', 'kitchenshet'),
(16, 'meja belajar', 'meja-belajar'),
(15, 'meja tamu', 'meja-tamu'),
(14, 'pintu', 'pintu'),
(18, 'Lemari Pakaian', 'lemari-pakaian');

-- --------------------------------------------------------

--
-- Table structure for table `kota`
--

CREATE TABLE `kota` (
  `id_kota` int(3) NOT NULL,
  `id_perusahaan` int(10) NOT NULL,
  `nama_kota` varchar(100) NOT NULL,
  `ongkos_kirim` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kota`
--

INSERT INTO `kota` (`id_kota`, `id_perusahaan`, `nama_kota`, `ongkos_kirim`) VALUES
(5, 5, 'Jakarta', 15000),
(6, 6, 'Bandung', 15000),
(7, 5, 'Surabaya', 13000),
(8, 5, 'Semarang', 17500),
(9, 6, 'Medan', 20000),
(10, 6, 'Aceh', 25000),
(11, 6, 'Banjarmasin', 17500);

-- --------------------------------------------------------

--
-- Table structure for table `kustomer`
--

CREATE TABLE `kustomer` (
  `id_customer` int(11) NOT NULL,
  `nama_kustomer` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `alamat` text COLLATE latin1_general_ci NOT NULL,
  `telpon` varchar(35) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `blokir` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `kustomer`
--

INSERT INTO `kustomer` (`id_customer`, `nama_kustomer`, `alamat`, `telpon`, `email`, `password`, `blokir`) VALUES
(1, 'Slamet sejahtera selalu', 'Jl. Wolter Monginsidi Jakarta', '087654321', 'user@gmail.com', 'ee11cbb19052e40b07aac0ca060c23ee', 'N'),
(2, 'darno', 'Jl. Ciputat Raya', '09898767', 'darno@gmail.com', 'bb394065bf2d32d16a89addd566dd87d', 'N'),
(3, 'andi jehamat', 'jakarta selatan', '0892413342341', 'andi12@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `modul`
--

CREATE TABLE `modul` (
  `id_modul` int(5) NOT NULL,
  `nama_modul` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `link` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `static_content` text COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `status` enum('user','admin') COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL,
  `urutan` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `modul`
--

INSERT INTO `modul` (`id_modul`, `nama_modul`, `link`, `static_content`, `gambar`, `status`, `aktif`, `urutan`) VALUES
(18, 'Tambah Produk', '?module=produk', '', '', 'admin', 'Y', 5),
(42, 'Lihat Order Masuk', '?module=order', '', '', 'admin', 'Y', 8),
(10, 'Manajemen Modul', '?module=modul', '', '', 'admin', 'Y', 19),
(31, 'Tambah Kategori Produk', '?module=kategori', '', '', 'admin', 'Y', 4),
(43, 'Edit Profil', '?module=profil', '<p class=\"MsoNormal\">\r\n<!--[if gte mso 9]><xml>\r\n<w:WordDocument>\r\n<w:View>Normal</w:View>\r\n<w:Zoom>0</w:Zoom>\r\n<w:Compatibility>\r\n<w:BreakWrappedTables/>\r\n<w:SnapToGridInCell/>\r\n<w:WrapTextWithPunct/>\r\n<w:UseAsianBreakRules/>\r\n</w:Compatibility>\r\n<w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>\r\n</w:WordDocument>\r\n</xml><![endif]-->\r\n<!--\r\n/* Style Definitions */\r\np.MsoNormal, li.MsoNormal, div.MsoNormal\r\n{mso-style-parent:\"\";\r\nmargin:0cm;\r\nmargin-bottom:.0001pt;\r\nmso-pagination:widow-orphan;\r\nfont-size:12.0pt;\r\nfont-family:\"Times New Roman\";\r\nmso-fareast-font-family:\"Times New Roman\";}\r\n@page Section1\r\n{size:612.0pt 792.0pt;\r\nmargin:72.0pt 90.0pt 72.0pt 90.0pt;\r\nmso-header-margin:35.4pt;\r\nmso-footer-margin:35.4pt;\r\nmso-paper-source:0;}\r\ndiv.Section1\r\n{page:Section1;}\r\n-->\r\n<!--[if gte mso 10]>\r\n<style>\r\n/* Style Definitions */\r\ntable.MsoNormalTable\r\n{mso-style-name:\"Table Normal\";\r\nmso-tstyle-rowband-size:0;\r\nmso-tstyle-colband-size:0;\r\nmso-style-noshow:yes;\r\nmso-style-parent:\"\";\r\nmso-padding-alt:0cm 5.4pt 0cm 5.4pt;\r\nmso-para-margin:0cm;\r\nmso-para-margin-bottom:.0001pt;\r\nmso-pagination:widow-orphan;\r\nfont-size:10.0pt;\r\nfont-family:\"Times New Roman\";}\r\n</style>\r\n<![endif]--><font size=\"2\">Buana Elektronik adalah toko elektronik online, yang menyediakan segala kebutuhan barang-barang elektronik anda. Buana elektronik&nbsp;</font><font size=\"2\">ingin memberikan kemudahan kepada para calon pembeli, cara santai, mudah dan hemat dalam berbelanja barang elektronik berkualias dengan harga yang terjangkau.\r\n</font>\r\n</p>\r\n<p class=\"MsoNormal\">\r\n<font size=\"2\">Karena itulah website ini dibuat sedemikian sederhananya sehingga diharapkan dapat membantu para pengunjung untuk dapat menelusuri produk-produk yang ditawarkan secara lebih mudah.<br />\r\n</font>\r\n</p>\r\n<p class=\"MsoNormal\">\r\n<font size=\"2\">Selain melayani pesanan produk-produk yang ada di toko online, kami menerima pembelian secara offline dengan datang ke toko kami yang ada di Jl. Singaparna No.99 Tasikmalaya.<br />\r\n</font>\r\n</p>\r\n<p class=\"MsoNormal\">\r\n<font size=\"2\">Akhirnya, kami mengucapkan terima kasih atas kunjungan anda di Buana Elektronik.</font>\r\n</p>\r\n', '12sfhijau.jpg', 'admin', 'Y', 7),
(44, 'Lihat Pesan Masuk', '?module=hubungi', '', '', 'admin', 'Y', 9),
(45, ' Edit Cara Pembelian', '?module=carabeli', '<ol>\r\n	<li>Klik pada tombol&nbsp;<span style=\"font-weight: bold\">Beli</span> pada produk yang ingin Anda pesan.</li>\r\n	<li>Produk yang Anda pesan akan masuk ke dalam <span style=\"font-weight: bold\">Keranjang Belanja</span>. Anda dapat melakukan perubahan jumlah produk yang diinginkan dengan mengganti angka di kolom <span style=\"font-weight: bold\">Jumlah</span>, kemudian klik tombol <span style=\"font-weight: bold\">Update</span>. Sedangkan untuk menghapus sebuah produk dari Keranjang Belanja, klik tombol Kali yang berada di kolom paling kanan.</li>\r\n	<li>Jika sudah selesai, klik tombol <span style=\"font-weight: bold\">Selesai Belanja</span>, maka akan tampil form untuk pengisian data kustomer/pembeli.</li>\r\n	<li>Setelah data pembeli selesai diisikan, klik tombol <span style=\"font-weight: bold\">Proses</span>, maka akan tampil data pembeli beserta produk yang dipesannya (jika diperlukan catat nomor ordernya). Dan juga ada total pembayaran serta nomor rekening pembayaran.</li>\r\n	<li>Apabila telah melakukan pembayaran, maka produk/barang akan segera kami kirimkan. <br />\r\n	</li>\r\n</ol>\r\n', 'gedung.jpg', 'admin', 'Y', 10),
(48, 'Edit Ongkos Kirim', '?module=ongkoskirim', '', '', 'user', 'Y', 11),
(49, 'Ganti Password', '?module=password', '', '', 'user', 'Y', 1),
(52, 'Lihat Laporan Transaksi', '?module=laporan', '', '', 'user', 'Y', 14),
(56, 'Edit Jasa Pengiriman', '?module=jasapengiriman', '', 'hai.jpg', 'user', 'Y', 12);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id_orders` int(5) NOT NULL,
  `nama_kustomer` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `alamat` text COLLATE latin1_general_ci NOT NULL,
  `telpon` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `status_order` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT 'Baru',
  `tgl_order` date NOT NULL,
  `jam_order` time NOT NULL,
  `id_kota` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id_orders`, `nama_kustomer`, `alamat`, `telpon`, `email`, `status_order`, `tgl_order`, `jam_order`, `id_kota`) VALUES
(45, 'Dadang', 'Singaparna', '123456', 'dadang@yahoo.com', 'Lunas/Terkirim', '2013-03-30', '12:32:29', 6),
(48, 'andi', 'bandung fharthgsrt', '0892413342341', 'andi12@gmail.com', 'Baru', '2017-05-22', '00:55:02', 6),
(49, 'andi', 'bandung fharthgsrt', '0892413342341', 'andi12@gmail.com', 'Baru', '2017-05-22', '01:13:38', 6),
(50, 'andi', 'bandung fharthgsrt', '0892413342341', 'andi12@gmail.com', 'Baru', '2017-05-22', '01:14:21', 6);

-- --------------------------------------------------------

--
-- Table structure for table `orders_detail`
--

CREATE TABLE `orders_detail` (
  `id_orders` int(5) NOT NULL,
  `id_produk` int(5) NOT NULL,
  `jumlah` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `orders_detail`
--

INSERT INTO `orders_detail` (`id_orders`, `id_produk`, `jumlah`) VALUES
(45, 16, 1),
(45, 17, 1),
(46, 19, 1),
(47, 19, 1),
(48, 20, 1),
(49, 20, 1),
(50, 20, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders_temp`
--

CREATE TABLE `orders_temp` (
  `id_orders_temp` int(5) NOT NULL,
  `id_produk` int(5) NOT NULL,
  `id_session` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `jumlah` int(5) NOT NULL,
  `tgl_order_temp` date NOT NULL,
  `jam_order_temp` time NOT NULL,
  `stok_temp` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `orders_temp`
--

INSERT INTO `orders_temp` (`id_orders_temp`, `id_produk`, `id_session`, `jumlah`, `tgl_order_temp`, `jam_order_temp`, `stok_temp`) VALUES
(16, 20, 'u9o139o1hgl5r1sc56nng3s5r0', 1, '2017-05-22', '01:18:38', 2);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(5) NOT NULL,
  `id_kategori` int(5) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `produk_seo` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `harga` int(20) NOT NULL,
  `stok` int(5) NOT NULL,
  `berat` decimal(5,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `tgl_masuk` date NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `dibeli` int(5) NOT NULL DEFAULT '1',
  `diskon` int(5) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `id_kategori`, `nama_produk`, `produk_seo`, `deskripsi`, `harga`, `stok`, `berat`, `tgl_masuk`, `gambar`, `dibeli`, `diskon`) VALUES
(21, 17, '4 pintu', '4-pintu', 'dweterywtygg56456\r\n', 2500000, 3, '20.00', '2017-05-22', '933D_Ball_in_Green_Grass.jpg', 1, 10),
(20, 18, 'Lemari Pakaian pintu 3', 'lemari-pakaian-pintu-3', 'frgraegagrsthghsthsrthgstgsb\r\n', 1350000, 2, '15.00', '2017-05-22', '9clownfish-1366x768-diving-red-sea-coral-worlds-best-diving-sites-4085.jpg', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `shop_pengiriman`
--

CREATE TABLE `shop_pengiriman` (
  `id_perusahaan` int(10) NOT NULL,
  `nama_perusahaan` varchar(100) NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shop_pengiriman`
--

INSERT INTO `shop_pengiriman` (`id_perusahaan`, `nama_perusahaan`, `gambar`) VALUES
(6, 'JNE', ''),
(5, 'TIKI', ''),
(7, 'POS EKSPRESS', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `hubungi`
--
ALTER TABLE `hubungi`
  ADD PRIMARY KEY (`id_hubungi`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `kota`
--
ALTER TABLE `kota`
  ADD PRIMARY KEY (`id_kota`);

--
-- Indexes for table `kustomer`
--
ALTER TABLE `kustomer`
  ADD PRIMARY KEY (`id_customer`);

--
-- Indexes for table `modul`
--
ALTER TABLE `modul`
  ADD PRIMARY KEY (`id_modul`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id_orders`);

--
-- Indexes for table `orders_temp`
--
ALTER TABLE `orders_temp`
  ADD PRIMARY KEY (`id_orders_temp`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `shop_pengiriman`
--
ALTER TABLE `shop_pengiriman`
  ADD PRIMARY KEY (`id_perusahaan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hubungi`
--
ALTER TABLE `hubungi`
  MODIFY `id_hubungi` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `kota`
--
ALTER TABLE `kota`
  MODIFY `id_kota` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `kustomer`
--
ALTER TABLE `kustomer`
  MODIFY `id_customer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `modul`
--
ALTER TABLE `modul`
  MODIFY `id_modul` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id_orders` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `orders_temp`
--
ALTER TABLE `orders_temp`
  MODIFY `id_orders_temp` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `shop_pengiriman`
--
ALTER TABLE `shop_pengiriman`
  MODIFY `id_perusahaan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Database: `db_berita`
--
CREATE DATABASE IF NOT EXISTS `db_berita` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_berita`;

-- --------------------------------------------------------

--
-- Table structure for table `buku_tamu`
--

CREATE TABLE `buku_tamu` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `pesan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku_tamu`
--
ALTER TABLE `buku_tamu`
  ADD PRIMARY KEY (`id`);
--
-- Database: `db_upload`
--
CREATE DATABASE IF NOT EXISTS `db_upload` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_upload`;

-- --------------------------------------------------------

--
-- Table structure for table `tb_produk`
--

CREATE TABLE `tb_produk` (
  `id` int(11) NOT NULL,
  `nama_produk` varchar(50) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `harga` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_produk`
--

INSERT INTO `tb_produk` (`id`, `nama_produk`, `gambar`, `harga`) VALUES
(1, 'motor', 'spda_anak1.gif', 12),
(2, 'motor', 'IMG_20170906_072845_459.jpg', 12),
(3, 'kP', 'Asian_Games_logo_svg_1521689309.png', 12),
(4, 'aa', '3_1521624943.jpg', 11),
(5, 'qq', '8-Brick-Wall-Textures_1521610736.jpg', 0),
(6, 'wq', '76c21994e5cded3325b9e50a7d841545_1521629112.jpg', 0),
(7, 'jeruk', '3_1521639658.jpg', 2090),
(8, 'apel', '394839_1521640578.jpg', 200),
(9, 'sa', '11_1521639011.jpg', 0),
(10, 'myessa', '7015951-3d-funny-animal_1521728863.jpg', 0),
(11, 'sad', '3_15216396581.jpg', 0),
(12, 'sad', '3_15216396582.jpg', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_produk`
--
ALTER TABLE `tb_produk`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_produk`
--
ALTER TABLE `tb_produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- Database: `inews`
--
CREATE DATABASE IF NOT EXISTS `inews` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `inews`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama_lengkap` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `nama_lengkap`) VALUES
(1, 'yogi123', '202cb962ac59075b964b07152d234b70', 'Yogi Prayogi');

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `id_anggota` int(11) NOT NULL,
  `nama_lengkap` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(40) NOT NULL,
  `aktif` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`id_anggota`, `nama_lengkap`, `password`, `email`, `aktif`) VALUES
(1, 'Ahmad Firdaus', '202cb962ac59075b964b07152d234b70', 'firdaus@gmail.com', b'1'),
(3, 'gie', '202cb962ac59075b964b07152d234b70', 'gie.hermawan@gmail.com', b'1'),
(4, '', '', '', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(11) NOT NULL,
  `judul` varchar(70) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `gambar` varchar(70) NOT NULL,
  `teks_berita` text NOT NULL,
  `tgl_posting` datetime NOT NULL,
  `id_admin` int(11) NOT NULL,
  `dilihat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `judul`, `id_kategori`, `gambar`, `teks_berita`, `tgl_posting`, `id_admin`, `dilihat`) VALUES
(1, 'ini adalah judul berita yang pertama', 1, 'iss.gif', 'ini adalah text berita paragraf pertama\r\n\r\nini adalah paragraf berita yang kedua', '2015-08-10 08:35:27', 1, 4),
(2, 'ini adalah judul berita yang ke-dua', 2, '4bukukecil.jpg', 'ini judul berita kedua, paragraf pertama\r\n\r\nini adalah judul berita pargraf kedua', '2015-08-16 10:28:31', 1, 23),
(3, 'ini adalah judul berita yang ketiga', 3, 'j7p.jpg', 'teks berita yang ke-tiga, paragraf pertama.\r\n\r\nteks berita', '2015-08-03 17:25:43', 1, 12),
(5, 'Maju Bersama Mencerdaskan Bangsa', 1, 'logo.png', 'Maju bersama mencerdaskan bangsa\r\n', '2015-08-09 15:55:04', 1, 18),
(6, 'Usai Silaturahmi di Kemenkopolhukam, Wiranto Kembali ke RSPAD', 0, '', 'Menko Polhukam Wiranto langsung kembali ke RSPAD Gatot Soebroto Jakarta usai mengikuti kegiatan singkat di Kemenko Polhukam. Wiranto kembali melanjutkan perawatan di rumah sakit.\r\n\r\n\"Setelah ini saya akan kembali ke rumah sakit ya untuk terus menjalani perawatan,\" ucap Wiranto kepada wartawan saat konferensi pers, di kantornya, Jalan Medan Merdeka Barat, Jakarta Pusat, Sabtu (17/10/2019).\r\n\r\nDari pantauan, Wiranto tampak berjalan perlahan dari kantornya menuju ke mobilnya. Tampak pegawai kementerian membantunya naik ke mobil.\r\n\r\nTampak setelahnya Wiranto tiba di RSPAD pada pukul 15.42 WIB. Mobil yang membawa Wiranto tampak dikawal sejumlah mobil lainnya.\r\n\r\nWiranto masuk melalui pintu belakang Paviliun Kartika. Wiranto terlihat turun dari mobil Toyota Alphard warna hitam nopol B-2527-RFS dengan digandeng salah seorang pria. Kemudian ia langsung masuk ke Paviliun Kartika RSPAD Gatot Subroto.\r\n\r\nSebelumnya Wiranto meninggalkan RSPAD Gatot Soebroto pada pukul 13.10 WIB untuk menghadiri silaturahmi dalam rangka purnatugas sebagai Menko Polhukam. Dalam acara itu, Wiranto mengaku masih dirawat di RSPAD dan mendapat izin dari dokter.\r\n', '2019-10-19 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `iklan`
--

CREATE TABLE `iklan` (
  `id_iklan` int(11) NOT NULL,
  `nm_perusahaan` varchar(50) NOT NULL,
  `isi_iklan` varchar(200) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_akhir` date NOT NULL,
  `id_admin` int(11) NOT NULL,
  `hargasewa` double NOT NULL,
  `lamasewa` int(11) NOT NULL,
  `totalharga` double NOT NULL,
  `aktif` bit(1) NOT NULL,
  `email` varchar(50) NOT NULL,
  `link` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `iklan`
--

INSERT INTO `iklan` (`id_iklan`, `nm_perusahaan`, `isi_iklan`, `gambar`, `tgl_mulai`, `tgl_akhir`, `id_admin`, `hargasewa`, `lamasewa`, `totalharga`, `aktif`, `email`, `link`) VALUES
(1, 'elex', 'Koleksi Buku Terlengkap', 'iklan1.jpg', '2015-08-16', '2015-08-17', 2, 15000, 1, 3000, b'1', 'mail@elex.com', 'http://elexbuku.com'),
(6, 'BSI', 'kuliah ???. BSI aja !!!', 'logobsi.jpg', '2015-08-16', '2015-08-17', 1, 2000, 2, 4000, b'1', 'kampus@bsi.ac.id', 'http://www.bsi.ac.id'),
(7, 'oke', 'ss', '', '2015-08-09', '2015-08-09', 0, 0, 0, 0, b'1', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `kategori` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `kategori`) VALUES
(1, 'nasional'),
(2, 'olah raga'),
(3, 'teknologi');

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `id_komentar` int(11) NOT NULL,
  `id_berita` int(11) NOT NULL,
  `id_anggota` int(11) NOT NULL,
  `tgl_komentar` datetime NOT NULL,
  `isi_komentar` text NOT NULL,
  `ip_address` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `komentar`
--

INSERT INTO `komentar` (`id_komentar`, `id_berita`, `id_anggota`, `tgl_komentar`, `isi_komentar`, `ip_address`) VALUES
(1, 0, 3, '2015-08-09 09:40:34', 'mantap cooy', '127.0.0.1'),
(2, 2, 3, '2015-08-09 09:41:58', 'oke', '127.0.0.1'),
(3, 2, 3, '2015-08-09 09:42:06', 'Mantap', '127.0.0.1'),
(4, 2, 3, '2015-08-09 09:43:53', 'sip\r\n', '127.0.0.1'),
(5, 1, 3, '2015-08-09 09:45:59', 'oke mantap', '127.0.0.1'),
(6, 5, 3, '2015-08-16 10:27:19', 'wow, kereenn', '127.0.0.1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `iklan`
--
ALTER TABLE `iklan`
  ADD PRIMARY KEY (`id_iklan`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id_komentar`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id_anggota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `iklan`
--
ALTER TABLE `iklan`
  MODIFY `id_iklan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_komentar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Database: `info`
--
CREATE DATABASE IF NOT EXISTS `info` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `info`;

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(5) NOT NULL,
  `id_kategori` int(5) NOT NULL,
  `judul` varchar(30) NOT NULL,
  `isi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `id_kategori`, `judul`, `isi`) VALUES
(1, 1, 'Kebakaran', 'senin pagi, terjadi kebakaran di pasar blok A jakarta selatan.\r\ndengan cepat si jago merah melahap seluruh bangunan yang ada di pasar blok beruntung tidak ada korban di perkirakan kerugian mencapai ratusan juta rupiah'),
(2, 2, 'BUMN Hadir Untuk Negri', 'sabtu dini hari, kementrian BUMN mengadakkan sidak di daerah yaitu medan sumatra utara, kunjungan yang dilakukan membuat para perkerja di perusahan pelindo 7 ketar ketir');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(5) NOT NULL,
  `nm_kategori` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nm_kategori`) VALUES
(1, 'News'),
(2, 'Finance');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `jaenudin`
--
CREATE DATABASE IF NOT EXISTS `jaenudin` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `jaenudin`;

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(255) NOT NULL,
  `isi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `isi`) VALUES
(1, 'saya adalah seorang yang ingin maju dan terus maju, menyesuaikan jaman yang selalu berubah ruba dan tdari waktu kewaktu');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(255) NOT NULL,
  `judul` varchar(300) NOT NULL,
  `isi` text NOT NULL,
  `penulis` varchar(50) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `judul`, `isi`, `penulis`, `tanggal`) VALUES
(1, 'Tutorial', 'ini adalah cara membangun website menggunakan codeigniter dan bootstrap  semoga ini dapat membantu belajar rekan rekan semuanya. terimakasi ', 'jaenudin', '2019-04-03'),
(2, 'cara download codeignter pada window 10', 'dalam kesempatan yang berbahagia ini penulis akan menjelaskan bagaimana cara mendownload codeigniter pada window 10\r\nhal pertama yang perlu disiapkan adalah hardware berupa leptop atau komputer dengan spek minmimal ram 2GB dan haridsk 255', 'jaenudin', '2019-04-04');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'jaenudin', 11170952);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `koperasi`
--
CREATE DATABASE IF NOT EXISTS `koperasi` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `koperasi`;

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `id_anggota` int(5) NOT NULL,
  `nama_anggota` varchar(30) NOT NULL,
  `alamat_anggota` varchar(50) NOT NULL,
  `tempat_lahir` text NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jekel` varchar(12) NOT NULL,
  `status` varchar(12) NOT NULL,
  `telp` int(12) NOT NULL,
  `ket_anggota` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `angsuran`
--

CREATE TABLE `angsuran` (
  `id_angsuran` int(5) NOT NULL,
  `id_kategori` int(5) NOT NULL,
  `id_anggota` int(5) NOT NULL,
  `tgl_pembayaran` date NOT NULL,
  `angsuran_ke` int(12) NOT NULL,
  `besar_angsuran` double NOT NULL,
  `ket_angsuran` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `detail_angsuran`
--

CREATE TABLE `detail_angsuran` (
  `id_angsuran` int(5) NOT NULL,
  `tgl_jatuh_tempo` date NOT NULL,
  `besar_angsuran` double NOT NULL,
  `ket_detail_angsuran` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `katagori_pinjaman`
--

CREATE TABLE `katagori_pinjaman` (
  `id_kat_pinjaman` int(5) NOT NULL,
  `nama_pinjaman` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(5) NOT NULL,
  `nama_petugas` varchar(30) NOT NULL,
  `alamat_petugas` text NOT NULL,
  `telp` int(12) NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `ket` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pinjaman`
--

CREATE TABLE `pinjaman` (
  `id_pinjaman` int(5) NOT NULL,
  `nama_pinjaman` varchar(30) NOT NULL,
  `id_anggota` int(5) NOT NULL,
  `besar_pinjaman` double NOT NULL,
  `tgLpengajuan_pinjaman` date NOT NULL,
  `tgl_acc_pinjaman` date NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_pelunasan` date NOT NULL,
  `id_angsuran` int(5) NOT NULL,
  `ket_pinjaman` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(5) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(8) NOT NULL,
  `id_petugas` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indexes for table `angsuran`
--
ALTER TABLE `angsuran`
  ADD PRIMARY KEY (`id_angsuran`);

--
-- Indexes for table `katagori_pinjaman`
--
ALTER TABLE `katagori_pinjaman`
  ADD PRIMARY KEY (`id_kat_pinjaman`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indexes for table `pinjaman`
--
ALTER TABLE `pinjaman`
  ADD PRIMARY KEY (`id_pinjaman`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id_anggota` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `angsuran`
--
ALTER TABLE `angsuran`
  MODIFY `id_angsuran` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_petugas` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pinjaman`
--
ALTER TABLE `pinjaman`
  MODIFY `id_pinjaman` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(5) NOT NULL AUTO_INCREMENT;
--
-- Database: `lentera`
--
CREATE DATABASE IF NOT EXISTS `lentera` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `lentera`;

-- --------------------------------------------------------

--
-- Table structure for table `custmoer`
--

CREATE TABLE `custmoer` (
  `id` int(5) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `telp` int(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `galleri`
--

CREATE TABLE `galleri` (
  `id` int(3) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `deskripsi` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `id_invoice` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `telp` varchar(13) NOT NULL,
  `tgl_pesan` datetime NOT NULL,
  `batas_bayar` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`id_invoice`, `name`, `telp`, `tgl_pesan`, `batas_bayar`) VALUES
(3, 'Jaenudin', '083147195211', '2019-11-09 02:10:13', '2019-11-10 02:10:13'),
(4, 'Dwi Nuryati', '55544', '2019-11-09 02:13:44', '2019-11-10 02:13:44'),
(5, 'qq', 'qq', '2019-11-09 02:17:56', '2019-11-10 02:17:56'),
(6, 'ai', 'bd', '2019-11-09 02:24:41', '2019-11-10 02:24:41'),
(7, 'uu', 'uu', '2019-11-09 02:26:47', '2019-11-10 02:26:47'),
(8, 'santy', 'psta', '2019-11-09 02:30:53', '2019-11-10 02:30:53'),
(9, '', '', '2019-11-09 10:17:51', '2019-11-10 10:17:51'),
(10, 'santri', '7777', '2019-11-09 15:40:54', '2019-11-10 15:40:54'),
(11, 'ujang', '000', '2019-11-09 15:52:04', '2019-11-10 15:52:04'),
(12, '', '', '2019-11-09 15:52:54', '2019-11-10 15:52:54'),
(13, 'aku lah arjuna', '5224475', '2019-11-09 15:55:11', '2019-11-10 15:55:11'),
(14, 'wisnutama', '2333', '2019-11-09 15:58:08', '2019-11-10 15:58:08'),
(15, '', '', '2019-11-09 18:39:26', '2019-11-10 18:39:26'),
(16, 'safa', '5224475', '2019-11-13 17:13:13', '2019-11-14 17:13:13'),
(17, 'nurdin', '22333444', '2019-11-13 17:14:48', '2019-11-14 17:14:48'),
(18, 'gedrfg', 'dafgad', '2019-11-13 17:16:20', '2019-11-14 17:16:20'),
(19, 'juni', '083147195211', '2019-11-13 18:31:28', '2019-11-14 18:31:28'),
(20, '', '', '2019-11-16 05:23:32', '2019-11-17 05:23:32'),
(21, '', '', '2019-11-16 05:38:04', '2019-11-17 05:38:04'),
(22, 'SNADRA', '234356', '2019-11-16 05:40:45', '2019-11-17 05:40:45'),
(23, 'SNADRA', '234356', '2019-11-16 05:41:32', '2019-11-17 05:41:32'),
(24, 'awi', '55', '2019-11-16 05:54:01', '2019-11-17 05:54:01'),
(25, 'diana', '235654', '2019-11-20 16:03:46', '2019-11-21 16:03:46'),
(26, 'jaenudin', '083157444', '2019-11-21 13:56:44', '2019-11-22 13:56:44'),
(27, 'jaenudin', '083157444', '2019-11-21 14:03:18', '2019-11-22 14:03:18'),
(28, 'jaenudin', '083157444', '2019-11-21 14:06:01', '2019-11-22 14:06:01'),
(29, 'jaenudin', '083157444', '2019-11-21 14:07:32', '2019-11-22 14:07:32'),
(30, 'jaenudin', '083157444', '2019-11-21 14:09:19', '2019-11-22 14:09:19'),
(31, 'jaenudin', '083157444', '2019-11-21 14:09:45', '2019-11-22 14:09:45'),
(32, 'jaenudin', '083157444', '2019-11-21 14:11:07', '2019-11-22 14:11:07'),
(33, 'jaenudin', '083157444', '2019-11-21 14:12:08', '2019-11-22 14:12:08'),
(34, '', '', '2019-11-21 14:17:25', '2019-11-22 14:17:25'),
(35, 'sayam', '999', '2019-11-21 14:43:56', '2019-11-22 14:43:56'),
(36, 'aini', '7777', '2019-11-21 14:58:57', '2019-11-22 14:58:57'),
(37, '', '', '2019-11-21 15:15:04', '2019-11-22 15:15:04'),
(38, '', '', '2019-11-21 15:36:01', '2019-11-22 15:36:01'),
(39, '', '', '2019-11-21 15:47:35', '2019-11-22 15:47:35'),
(40, '', '', '2019-11-21 15:50:02', '2019-11-22 15:50:02'),
(41, '', '', '2019-11-21 15:51:34', '2019-11-22 15:51:34'),
(42, '', '', '2019-11-21 15:51:52', '2019-11-22 15:51:52'),
(43, '', '', '2019-11-21 15:52:19', '2019-11-22 15:52:19'),
(44, '', '', '2019-11-21 15:53:20', '2019-11-22 15:53:20'),
(45, '', '', '2019-11-21 15:53:46', '2019-11-22 15:53:46'),
(46, '', '', '2019-11-21 15:54:21', '2019-11-22 15:54:21'),
(47, '', '', '2019-11-21 15:55:32', '2019-11-22 15:55:32'),
(48, '', '', '2019-11-21 15:57:08', '2019-11-22 15:57:08'),
(49, '', '', '2019-11-21 16:08:21', '2019-11-22 16:08:21'),
(50, '', '', '2019-11-21 16:08:52', '2019-11-22 16:08:52'),
(51, '', '', '2019-11-21 16:16:34', '2019-11-22 16:16:34'),
(52, '', '', '2019-11-21 16:23:55', '2019-11-22 16:23:55'),
(53, '', '', '2019-11-21 16:24:23', '2019-11-22 16:24:23'),
(54, 'saya', '788', '2019-11-21 17:15:17', '2019-11-22 17:15:17'),
(55, 'saya', '788', '2019-11-21 17:16:26', '2019-11-22 17:16:26'),
(56, 'saya', '788', '2019-11-21 17:16:50', '2019-11-22 17:16:50'),
(57, 'saya', '788', '2019-11-21 17:18:45', '2019-11-22 17:18:45'),
(58, 'saya', '788', '2019-11-21 17:19:27', '2019-11-22 17:19:27'),
(59, 'saya', '788', '2019-11-21 17:19:46', '2019-11-22 17:19:46'),
(60, 'saya', '788', '2019-11-21 17:21:39', '2019-11-22 17:21:39'),
(61, 'saya', '788', '2019-11-21 17:36:28', '2019-11-22 17:36:28'),
(62, 'saya', '788', '2019-11-21 17:41:11', '2019-11-22 17:41:11'),
(63, 'saya', '788', '2019-11-21 17:41:28', '2019-11-22 17:41:28'),
(64, 'saya', '788', '2019-11-21 17:42:08', '2019-11-22 17:42:08'),
(65, 'saya', '788', '2019-11-21 17:43:49', '2019-11-22 17:43:49'),
(66, 'saya', '788', '2019-11-21 17:44:27', '2019-11-22 17:44:27'),
(67, 'saya', '788', '2019-11-21 17:45:07', '2019-11-22 17:45:07'),
(68, 'saya', '788', '2019-11-21 17:45:29', '2019-11-22 17:45:29'),
(69, 'saya', '788', '2019-11-21 17:45:43', '2019-11-22 17:45:43'),
(70, 'saya', '788', '2019-11-21 17:46:07', '2019-11-22 17:46:07'),
(71, 'saya', '788', '2019-11-21 17:46:20', '2019-11-22 17:46:20'),
(72, 'saya', '788', '2019-11-21 17:46:40', '2019-11-22 17:46:40'),
(73, 'saya', '788', '2019-11-21 17:47:25', '2019-11-22 17:47:25'),
(74, 'saya', '788', '2019-11-21 17:47:48', '2019-11-22 17:47:48'),
(75, 'saya', '788', '2019-11-21 17:48:04', '2019-11-22 17:48:04'),
(76, 'saya', '788', '2019-11-21 17:48:40', '2019-11-22 17:48:40');

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `id_pesanan` int(11) NOT NULL,
  `id_invoice` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `pilihan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`id_pesanan`, `id_invoice`, `id`, `name`, `jumlah`, `harga`, `pilihan`) VALUES
(3, 0, 3, 'Room A', 1, 2500000, ''),
(4, 0, 3, 'Room B', 1, 3000000, ''),
(5, 4, 2, 'Room B', 1, 3000000, ''),
(6, 5, 1, 'Room A', 1, 2500000, ''),
(7, 5, 2, 'Room B', 1, 3000000, ''),
(8, 6, 2, 'Room B', 1, 3000000, ''),
(9, 6, 1, 'Room A', 1, 2500000, ''),
(10, 7, 2, 'Room B', 2, 3000000, ''),
(11, 8, 2, 'Room B', 1, 3000000, ''),
(12, 8, 1, 'Room A', 1, 2500000, ''),
(13, 9, 2, 'Room B', 1, 3000000, ''),
(14, 10, 1, 'Room A', 1, 2500000, ''),
(15, 10, 2, 'Room B', 1, 3000000, ''),
(16, 11, 2, 'Room B', 1, 3000000, ''),
(17, 11, 1, 'Room A', 1, 2500000, ''),
(18, 12, 2, 'Room B', 1, 3000000, ''),
(19, 12, 1, 'Room A', 1, 2500000, ''),
(20, 13, 2, 'Room B', 2, 3000000, ''),
(21, 13, 1, 'Room A', 1, 2500000, ''),
(22, 14, 2, 'Room B', 3, 3000000, ''),
(23, 14, 1, 'Room A', 1, 2500000, ''),
(24, 15, 2, 'Room B', 1, 3000000, ''),
(25, 16, 1, 'Room A', 1, 2500000, ''),
(26, 17, 1, 'Room A', 2, 2500000, ''),
(27, 18, 1, 'Room A', 1, 2500000, ''),
(28, 19, 1, 'Room A', 1, 2500000, ''),
(29, 19, 2, 'Room B', 1, 3000000, ''),
(30, 20, 2, 'Room B', 1, 3000000, ''),
(31, 21, 1, 'Room A', 1, 2500000, ''),
(32, 22, 2, 'Room B', 1, 3000000, ''),
(33, 24, 1, 'Room A', 1, 2500000, ''),
(34, 24, 2, 'Room B', 2, 3000000, ''),
(35, 25, 1, 'Room A', 1, 2500000, ''),
(36, 26, 1, 'Room A', 1, 2500000, ''),
(37, 34, 1, 'Room A', 1, 2500000, ''),
(38, 35, 2, 'Room B', 1, 3000000, ''),
(39, 35, 1, 'Room A', 1, 2500000, ''),
(40, 37, 2, 'Room B', 1, 3000000, ''),
(41, 38, 1, 'Room A', 1, 2500000, ''),
(42, 39, 1, 'Room A', 1, 2500000, ''),
(43, 49, 2, 'Room B', 1, 3000000, ''),
(44, 51, 2, 'Room B', 1, 3000000, ''),
(45, 53, 2, 'Room B', 1, 3000000, ''),
(46, 54, 2, 'Room B', 1, 3000000, ''),
(47, 55, 2, 'Room B', 1, 3000000, ''),
(48, 56, 2, 'Room B', 1, 3000000, ''),
(49, 57, 2, 'Room B', 1, 3000000, ''),
(50, 58, 2, 'Room B', 1, 3000000, ''),
(51, 59, 2, 'Room B', 1, 3000000, ''),
(52, 60, 2, 'Room B', 1, 3000000, ''),
(53, 61, 2, 'Room B', 1, 3000000, ''),
(54, 62, 2, 'Room B', 1, 3000000, ''),
(55, 63, 2, 'Room B', 1, 3000000, ''),
(56, 64, 2, 'Room B', 1, 3000000, ''),
(57, 65, 2, 'Room B', 1, 3000000, ''),
(58, 66, 2, 'Room B', 1, 3000000, ''),
(59, 67, 2, 'Room B', 1, 3000000, ''),
(60, 68, 2, 'Room B', 1, 3000000, ''),
(61, 69, 2, 'Room B', 1, 3000000, ''),
(62, 70, 2, 'Room B', 1, 3000000, ''),
(63, 71, 2, 'Room B', 1, 3000000, ''),
(64, 72, 2, 'Room B', 1, 3000000, ''),
(65, 73, 2, 'Room B', 1, 3000000, ''),
(66, 74, 2, 'Room B', 1, 3000000, ''),
(67, 75, 2, 'Room B', 1, 3000000, ''),
(68, 76, 2, 'Room B', 1, 3000000, '');

--
-- Triggers `pesanan`
--
DELIMITER $$
CREATE TRIGGER `pesanan_penjualan` AFTER INSERT ON `pesanan` FOR EACH ROW BEGIN
UPDATE ROOMS SET stok = stok-new.jumlah
WHERE id = NEW.id;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(3) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(255) NOT NULL,
  `stok` int(11) NOT NULL,
  `price` double NOT NULL,
  `facilities` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `image`, `stok`, `price`, `facilities`) VALUES
(1, 'Room A', 'img_8.jpg', 12, 2500000, 'AC<br>\r\nTelevisi<br>\r\nInternet Access<br>'),
(2, 'Room B', 'img_9.jpg', -8, 3000000, 'AC<br>\r\n\r\nTV<br>\r\n\r\nInternet Access<br>Kulkas');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(2) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(12) NOT NULL,
  `role_id` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `username`, `password`, `role_id`) VALUES
(1, 'admin', 'admin@lentera.com', 'admin', 1),
(2, 'user', 'user@gmail.com', 'user', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `custmoer`
--
ALTER TABLE `custmoer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleri`
--
ALTER TABLE `galleri`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id_invoice`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id_pesanan`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `custmoer`
--
ALTER TABLE `custmoer`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleri`
--
ALTER TABLE `galleri`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id_invoice` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id_pesanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `materi_portalberita`
--
CREATE DATABASE IF NOT EXISTS `materi_portalberita` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `materi_portalberita`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama_lengkap` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `nama_lengkap`) VALUES
(1, 'yogi123', '202cb962ac59075b964b07152d234b70', 'Yogi Prayogi');

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `id_anggota` int(11) NOT NULL,
  `nama_lengkap` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(40) NOT NULL,
  `aktif` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`id_anggota`, `nama_lengkap`, `password`, `email`, `aktif`) VALUES
(1, 'Ahmad Firdaus', '202cb962ac59075b964b07152d234b70', 'firdaus@gmail.com', b'1'),
(3, 'gie', '202cb962ac59075b964b07152d234b70', 'gie.hermawan@gmail.com', b'1'),
(4, '', '', '', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(11) NOT NULL,
  `judul` varchar(70) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `gambar` varchar(70) NOT NULL,
  `teks_berita` text NOT NULL,
  `tgl_posting` datetime NOT NULL,
  `id_admin` int(11) NOT NULL,
  `dilihat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `judul`, `id_kategori`, `gambar`, `teks_berita`, `tgl_posting`, `id_admin`, `dilihat`) VALUES
(1, 'ini adalah judul berita yang pertama', 1, 'iss.gif', 'ini adalah text berita paragraf pertama\r\n\r\nini adalah paragraf berita yang kedua', '2015-08-10 08:35:27', 1, 4),
(2, 'ini adalah judul berita yang ke-dua', 2, '4bukukecil.jpg', 'ini judul berita kedua, paragraf pertama\r\n\r\nini adalah judul berita pargraf kedua', '2015-08-16 10:28:31', 1, 27),
(3, 'ini adalah judul berita yang ketiga', 3, 'j7p.jpg', 'teks berita yang ke-tiga, paragraf pertama.\r\n\r\nteks berita', '2015-08-03 17:25:43', 1, 12),
(5, 'Maju Bersama Mencerdaskan Bangsa', 1, 'logo.png', 'Maju bersama mencerdaskan bangsa\r\n', '2015-08-09 15:55:04', 1, 19),
(6, 'Usai Silaturahmi di Kemenkopolhukam, Wiranto Kembali ke RSPAD', 0, '', 'Menko Polhukam Wiranto langsung kembali ke RSPAD Gatot Soebroto Jakarta usai mengikuti kegiatan singkat di Kemenko Polhukam. Wiranto kembali melanjutkan perawatan di rumah sakit.\r\n\r\n\"Setelah ini saya akan kembali ke rumah sakit ya untuk terus menjalani perawatan,\" ucap Wiranto kepada wartawan saat konferensi pers, di kantornya, Jalan Medan Merdeka Barat, Jakarta Pusat, Sabtu (17/10/2019).\r\n\r\nDari pantauan, Wiranto tampak berjalan perlahan dari kantornya menuju ke mobilnya. Tampak pegawai kementerian membantunya naik ke mobil.\r\n\r\nTampak setelahnya Wiranto tiba di RSPAD pada pukul 15.42 WIB. Mobil yang membawa Wiranto tampak dikawal sejumlah mobil lainnya.\r\n\r\nWiranto masuk melalui pintu belakang Paviliun Kartika. Wiranto terlihat turun dari mobil Toyota Alphard warna hitam nopol B-2527-RFS dengan digandeng salah seorang pria. Kemudian ia langsung masuk ke Paviliun Kartika RSPAD Gatot Subroto.\r\n\r\nSebelumnya Wiranto meninggalkan RSPAD Gatot Soebroto pada pukul 13.10 WIB untuk menghadiri silaturahmi dalam rangka purnatugas sebagai Menko Polhukam. Dalam acara itu, Wiranto mengaku masih dirawat di RSPAD dan mendapat izin dari dokter.\r\n', '2019-10-19 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `iklan`
--

CREATE TABLE `iklan` (
  `id_iklan` int(11) NOT NULL,
  `nm_perusahaan` varchar(50) NOT NULL,
  `isi_iklan` varchar(200) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_akhir` date NOT NULL,
  `id_admin` int(11) NOT NULL,
  `hargasewa` double NOT NULL,
  `lamasewa` int(11) NOT NULL,
  `totalharga` double NOT NULL,
  `aktif` bit(1) NOT NULL,
  `email` varchar(50) NOT NULL,
  `link` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `iklan`
--

INSERT INTO `iklan` (`id_iklan`, `nm_perusahaan`, `isi_iklan`, `gambar`, `tgl_mulai`, `tgl_akhir`, `id_admin`, `hargasewa`, `lamasewa`, `totalharga`, `aktif`, `email`, `link`) VALUES
(1, 'elex', 'Koleksi Buku Terlengkap', 'iklan1.jpg', '2015-08-16', '2015-08-17', 2, 15000, 1, 3000, b'0', 'mail@elex.com', 'http://elexbuku.com'),
(6, 'BSI', 'kuliah ???. BSI aja !!!', 'logobsi.jpg', '2015-08-16', '2015-08-17', 1, 2000, 2, 4000, b'0', 'kampus@bsi.ac.id', 'http://www.bsi.ac.id'),
(7, 'oke', 'ss', '', '2015-08-09', '2015-08-09', 0, 0, 0, 0, b'0', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `kategori` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `kategori`) VALUES
(1, 'nasional'),
(2, 'olah raga'),
(3, 'teknologi');

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `id_komentar` int(11) NOT NULL,
  `id_berita` int(11) NOT NULL,
  `id_anggota` int(11) NOT NULL,
  `tgl_komentar` datetime NOT NULL,
  `isi_komentar` text NOT NULL,
  `ip_address` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `komentar`
--

INSERT INTO `komentar` (`id_komentar`, `id_berita`, `id_anggota`, `tgl_komentar`, `isi_komentar`, `ip_address`) VALUES
(1, 0, 3, '2015-08-09 09:40:34', 'mantap cooy', '127.0.0.1'),
(2, 2, 3, '2015-08-09 09:41:58', 'oke', '127.0.0.1'),
(3, 2, 3, '2015-08-09 09:42:06', 'Mantap', '127.0.0.1'),
(4, 2, 3, '2015-08-09 09:43:53', 'sip\r\n', '127.0.0.1'),
(5, 1, 3, '2015-08-09 09:45:59', 'oke mantap', '127.0.0.1'),
(6, 5, 3, '2015-08-16 10:27:19', 'wow, kereenn', '127.0.0.1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `iklan`
--
ALTER TABLE `iklan`
  ADD PRIMARY KEY (`id_iklan`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id_komentar`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id_anggota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `iklan`
--
ALTER TABLE `iklan`
  MODIFY `id_iklan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_komentar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Database: `mycompany`
--
CREATE DATABASE IF NOT EXISTS `mycompany` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `mycompany`;

-- --------------------------------------------------------

--
-- Table structure for table `lowongan`
--

CREATE TABLE `lowongan` (
  `id_lowongan` int(11) NOT NULL,
  `nama_perusahaan` varchar(30) NOT NULL,
  `jabatan` varchar(30) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `telp` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(8) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `telp` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
--
-- Database: `myshop`
--
CREATE DATABASE IF NOT EXISTS `myshop` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `myshop`;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(10) NOT NULL,
  `admin_email` varchar(100) NOT NULL,
  `admin_pass` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_email`, `admin_pass`) VALUES
(1, 'jae@gmail', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(10) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'New Era'),
(2, 'Polo Ralph Lauren '),
(3, 'Huft'),
(4, 'Twill Baseball Hat'),
(5, 'Adidas'),
(6, 'New Era'),
(7, 'New Blance'),
(8, 'homyped'),
(9, 'Sinar Dunia'),
(10, 'Big Boss'),
(11, 'Kiky Boxy');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `p_id` int(10) NOT NULL,
  `ip_add` int(10) NOT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`p_id`, `ip_add`, `qty`) VALUES
(1, 0, 0),
(2, 0, 0),
(3, 0, 0),
(5, 0, 0),
(9, 0, 0),
(10, 0, 0),
(12, 0, 0),
(13, 0, 0),
(14, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `catagories`
--

CREATE TABLE `catagories` (
  `cat_id` int(10) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `catagories`
--

INSERT INTO `catagories` (`cat_id`, `cat_title`) VALUES
(1, 'topi anak'),
(2, 'topi dewasa'),
(3, 'topi baseball'),
(4, 'New Era'),
(5, 'Polo Ralph Lauren'),
(6, 'Huf'),
(7, 'Twill Baseball Hat'),
(8, 'Adidas'),
(9, 'sepatu'),
(10, 'Buku');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(30) NOT NULL,
  `customer_email` varchar(30) NOT NULL,
  `customer_pass` varchar(8) NOT NULL,
  `customer_country` text NOT NULL,
  `customer_city` text NOT NULL,
  `customer_contact` int(12) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_pass`, `customer_country`, `customer_city`, `customer_contact`, `customer_address`, `customer_image`) VALUES
(1, 'Dwi', 'dwi@gmail', '12345678', 'indo', 'jakarta', 85678910, 'kp duku rt09/05 kebayoran lamaa utara, kebayoran lama jakarta selatan', 'jae.jpg\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `brand_id` int(10) NOT NULL,
  `date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `product_title` text NOT NULL,
  `product_img1` text NOT NULL,
  `product_img2` text NOT NULL,
  `product_img3` text NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_desc` text NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `cat_id`, `brand_id`, `date`, `product_title`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_desc`, `status`) VALUES
(1, 1, 1, '2019-01-12 19:23:54.660639', 'topi anak New Era \r\n', 'boy.jpg', 'boy2.jpg', 'boy3.jpg', 30000, 'topi new era adalah topi buuatan local yang terbaik', ''),
(2, 3, 2, '2019-01-12 19:18:07.299496', 'Polo Ralph Lauren', 'baseball.jpg', 'baseball.jpg', 'baseball.jpg', 75000, 'baseball topi adalah topi olahraga yang mudah dan nyaman digunakan', ''),
(3, 2, 1, '2019-01-12 19:00:00.000000', 'snapback topi warna hijau', 'snapback.gif', 'snapback.gif', 'snapback.gif', 200000, '- 100% Snapback Original\r\n- Comfortable to Wear\r\n- Neat Stitching and Strong\r\n- Snapback Type (Adjustable)', ''),
(4, 4, 1, '2019-03-09 17:35:06.000000', 'sepatu jaman now', 'new era.jpg', '', '', 3500000, '<p>sepatu nyang nyaman digunakan bahan adem ayem</p>', 'on'),
(5, 1, 5, '2019-08-04 03:29:36.000000', 'spiderman', '7015951-3d-funny-animal_1521603987.jpg', 'Asian_Games_logo.svg_1521689309.png', 'freelancer working in his laptop_1521689146.png', 250000, 'topi anak spiderman membuat anak tersa menjadi spiderman', 'on'),
(6, 9, 7, '2019-08-09 12:19:26.000000', 'new ballance a1', 'ballance.jpg', 'ballance3.jpg', 'ballance4.jpg', 500000, '<p>sepatu terkini nyaman di pakai, bisa digunakan sat santai</p>', 'on'),
(7, 9, 7, '2019-08-09 12:21:18.000000', 'New Ballance A2', 'bllance2.jpg', 'ballance4.jpg', 'ballance3.jpg', 700000, '<p>sangat nyaman</p>', 'on'),
(8, 10, 9, '2019-08-09 12:29:42.000000', 'Buku Sinar Dunia 58 lembar', 'sidu1.jpg', '', '', 40000, '<p>buku denga merek sinar dunia&nbsp; 58 lembar</p>', 'on'),
(9, 10, 10, '2019-08-09 12:36:46.000000', 'Big Boss 42 lembar isi 6 ', 'boss1.jpg', '', '', 30000, '<p>buku dengan ukan persegi panjang dengan halaman 42 lembar dan isi 6&nbsp; buku.</p>', 'on'),
(10, 10, 10, '2019-08-09 12:39:29.000000', 'Big boss 50 lembar isi 10 buku', 'boos2.jpg', '', '', 500000, '<p>buku dengan tebal yang lumayan dan nyaman buat tulis menulis</p>', 'on'),
(11, 10, 9, '2019-08-09 12:51:15.000000', 'Buku sidu 38 lembar', 'sidu2.jpg', '', '', 30000, '<p>buku sidu 38 lembar untuk anak sd sangat cocok</p>', 'on'),
(12, 9, 6, '2019-08-09 12:56:19.000000', 'New Era  keren', 'era.jpg', '', '', 150000, '<p>sepatu keren</p>', 'on'),
(13, 9, 6, '2019-08-09 12:57:12.000000', 'New era terhit', 'era1.jpg', '', '', 150000, '<p>sepatu terhit</p>', 'on'),
(14, 9, 6, '2019-08-09 12:58:01.000000', 'New Era Sport', 'era4.jpg', '', '', 200000, '<p>sepatu yang nyaman buat olahraga.</p>', 'on');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `catagories`
--
ALTER TABLE `catagories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `brand_id` (`brand_id`),
  ADD KEY `cat_id` (`cat_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `p_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `catagories`
--
ALTER TABLE `catagories`
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`brand_id`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`cat_id`) REFERENCES `catagories` (`cat_id`);
--
-- Database: `pendaftaran`
--
CREATE DATABASE IF NOT EXISTS `pendaftaran` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `pendaftaran`;

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE `pasien` (
  `id` int(5) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `usia` int(2) NOT NULL,
  `polis` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pasien`
--

INSERT INTO `pasien` (`id`, `nama`, `usia`, `polis`) VALUES
(1, 'Jaenudin', 28, 'Doktor Umum'),
(2, 'Dwin Nuryati', 28, 'Doktor GIGi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pasien`
--
ALTER TABLE `pasien`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `phpmvc`
--
CREATE DATABASE IF NOT EXISTS `phpmvc` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `phpmvc`;

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(8) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `nrp` int(8) NOT NULL,
  `email` varchar(30) NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nama`, `nrp`, `email`, `jurusan`, `foto`) VALUES
(5, 'Rudi aja', 111789, 'rudi@gmail.com', 'Teknik Informatika', ''),
(6, 'Jaenudin', 11170952, 'Jaenudin@bsi.ac.id', 'Teknik Informatika', ''),
(7, 'Hendra', 1117945, 'Hendra@gmail.bom', 'Teknik Industri', ''),
(22, 'herryansah', 12345, 'her@gamil.com', 'Teknik Industri', ''),
(23, 'Nabila Haimi', 3434, 'nabila@gmail.oom', 'Teknik Informatika', ''),
(24, 'Tri Purwanto s', 12140089, 'tri@gmail.com', 'Teknik Informatika', ''),
(25, 'sadi', 111, 'sandi@gmail.com', 'Teknik plabiologi', '');

-- --------------------------------------------------------

--
-- Table structure for table `peoples`
--

CREATE TABLE `peoples` (
  `id` int(9) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `peoples`
--

INSERT INTO `peoples` (`id`, `name`, `address`, `email`) VALUES
(2, 'Tyler Murray', '95364 Chaim Stravenue Apt. 989', 'cweissnat@example.org'),
(3, 'Mr. Andre Bosco', '13635 Kory Glens Apt. 588', 'mckenna.koelpin@example.net'),
(4, 'Dr. Suzanne Becker', '0301 Porter Field', 'mitchell.gabriella@example.com'),
(5, 'Mr. Dylan Boehm', '5409 Kathryn Street', 'toy.delfina@example.net'),
(6, 'Caleigh Anderson', '34334 Abbigail Expressway', 'nichole95@example.net'),
(7, 'Ms. Albina Connelly III', '62435 Juvenal Hills Suite 437', 'wolf.theodora@example.net'),
(8, 'Marlin Schmitt', '54960 Aurelia Camp Apt. 097', 'jolie73@example.net'),
(9, 'Hellen Weimann', '25679 Augustine Junctions Suite 045', 'jerome32@example.net'),
(10, 'Dr. Hortense Mitchell', '79553 Elena Mews', 'oo\'keefe@example.com'),
(11, 'Lilly Murazik MD', '8630 Wyman Spur Apt. 061', 'heidenreich.dena@example.com'),
(12, 'Sigmund Doyle', '8244 Liza Isle Suite 790', 'xgulgowski@example.org'),
(13, 'Prof. Lavern Oberbrunner', '9212 Goodwin Run Suite 448', 'cremin.lessie@example.com'),
(14, 'Emiliano Langosh', '28995 Daniel Glens Apt. 376', 'barrows.miles@example.net'),
(15, 'Vidal Bartoletti DDS', '845 Bruce Green', 'lo\'conner@example.com'),
(16, 'Carter Sanford', '934 Bashirian Club', 'colten64@example.net'),
(17, 'Tony Blick MD', '992 Wellington Squares Apt. 371', 'enicolas@example.com'),
(18, 'Holden Beer', '14420 Hahn Summit Apt. 449', 'istanton@example.net'),
(19, 'Dr. Jaydon Parker IV', '553 Yost Shore Suite 626', 'ynader@example.org'),
(20, 'Rudy Schumm', '50447 Alessandro Shoal Suite 351', 'gianni14@example.net'),
(21, 'Mr. Connor Jacobson', '14036 Bechtelar Mountains Suite 793', 'boris.bednar@example.com'),
(22, 'Ms. Selena Olson', '224 Brown Branch', 'streich.camila@example.org'),
(23, 'Brielle Runte', '76309 Botsford Manor', 'leanne31@example.net'),
(24, 'Betty Grimes', '67866 Michele Street', 'aditya.daugherty@example.net'),
(26, 'Ms. Emmie Lang Jr.', '081 Ward Ville', 'blaise41@example.com'),
(27, 'Neil Bauch IV', '147 Zakary Mountains Suite 963', 'theidenreich@example.org'),
(28, 'Ted Hills DVM', '1577 Friedrich Squares Suite 705', 'tianna98@example.com'),
(29, 'Taryn Prosacco', '5239 Virgie Knolls', 'sierra53@example.com'),
(30, 'Donna Tillman', '100 Terry Ford Suite 995', 'delbert77@example.com'),
(31, 'Toni Abshire', '34968 Reyes Pass Apt. 503', 'nhills@example.org'),
(32, 'Amy Littel', '3309 Bethany Ports Apt. 165', 'williamson.garrick@example.org'),
(33, 'Nicolette Padberg', '399 Delbert Drives Suite 785', 'qdibbert@example.net'),
(34, 'Miss Selena Okuneva IV', '947 Destini Fort', 'shemar59@example.org'),
(35, 'Gilda Runolfsson', '37157 Grimes Bridge Apt. 334', 'mdavis@example.net'),
(36, 'Darrel Torp', '6836 Sheldon Center Suite 296', 'barrett97@example.net'),
(37, 'Favian Durgan III', '999 Conn Mountain', 'collier.erich@example.com'),
(38, 'Neva Bins', '2399 Jaylon Club Apt. 327', 'twindler@example.com'),
(39, 'Emmet Fisher', '792 Waino Overpass Suite 463', 'kaylah46@example.org'),
(40, 'Merritt Hilpert', '267 Clifton Cliffs', 'zulauf.leann@example.org'),
(41, 'Reba McCullough', '498 Bartell Fall Suite 839', 'bernhard.christophe@example.org'),
(42, 'Prof. Cooper Harris', '2118 Keegan Squares', 'davis.nickolas@example.com'),
(43, 'Jettie Cummerata MD', '0193 Predovic Falls', 'josefa35@example.org'),
(44, 'Stuart Kunze', '9613 Swift Brook Apt. 936', 'hudson01@example.org'),
(45, 'Ansley West Jr.', '6765 Willms Meadow', 'swaniawski.camille@example.com'),
(46, 'Ms. Kari Price', '2455 Armstrong Underpass Apt. 145', 'margarett.hauck@example.net'),
(47, 'Lafayette Dickinson', '67504 Pfeffer Pass', 'reilly.virginie@example.com'),
(48, 'Ms. Cecile Schamberger', '824 Lenny Summit', 'britney04@example.com'),
(49, 'Arvel Lynch', '091 Cummings Parkway', 'hcrist@example.org'),
(50, 'Celia Pagac', '34841 Kasey Springs', 'albin94@example.org'),
(51, 'Guadalupe Hoppe', '57415 Ocie Knolls', 'sally14@example.net'),
(52, 'Prof. Americo Rempel Jr.', '6118 Kade Pine', 'uritchie@example.com'),
(53, 'Crystal Larson', '046 Ledner Plains Suite 918', 'stacey85@example.com'),
(54, 'John Metz II', '99493 Sydnie Route Apt. 728', 'kessler.zachery@example.com'),
(55, 'Mr. Keanu Paucek IV', '3244 Cummings Isle Suite 619', 'heloise.bosco@example.net'),
(56, 'Prof. Shanny Gottlieb I', '47451 Tyshawn Station', 'pacocha.rosalyn@example.net'),
(57, 'Madge Osinski V', '774 Cindy Flats', 'nkuhlman@example.net'),
(58, 'Mitchel Ullrich', '1761 Bechtelar Walk Apt. 172', 'brad48@example.com'),
(59, 'Prof. Demarcus Sanford DDS', '450 O\'Conner Park', 'lukas84@example.org'),
(60, 'Ernie Ziemann III', '081 Ricardo Keys', 'verner54@example.com'),
(61, 'Stephanie Shanahan', '364 Okuneva Lodge Suite 854', 'awaters@example.org'),
(62, 'Jamel Grady', '2589 Wintheiser Ports', 'elenora32@example.org'),
(63, 'Gunnar Heathcote', '518 Nader Lock', 'rylan75@example.com'),
(64, 'Prof. Andreanne Lakin', '85811 Cheyanne Brooks', 'aurelia.waters@example.net'),
(65, 'Dr. Hilton Schneider MD', '532 Simonis Plaza Suite 915', 'roosevelt.king@example.com'),
(66, 'Prof. Merle Grady', '81160 Kelton Inlet', 'yvonne18@example.org'),
(67, 'Brandt Effertz', '9004 Bins Plains Suite 927', 'ara57@example.org'),
(68, 'Prof. Nels Ferry III', '0247 Schmidt Oval', 'merlin.langworth@example.com'),
(69, 'Montana Ortiz', '3417 Klocko Summit Suite 149', 'anastasia19@example.net'),
(70, 'Tiffany Hills', '5530 Gutmann Crest', 'bschuster@example.org'),
(71, 'Kaia Gaylord', '74874 Johan Extensions Apt. 568', 'ngottlieb@example.org'),
(72, 'Ms. Antonietta Keeling DDS', '452 Lakin Cliff', 'mstracke@example.com'),
(73, 'Mr. King Schinner', '096 Keon Prairie', 'monahan.jessika@example.net'),
(74, 'Ms. Melba Schneider', '9871 Roberts Lodge', 'balistreri.brielle@example.net'),
(75, 'Bart Ferry', '2665 Wilford Oval Apt. 022', 'lynch.hans@example.org'),
(76, 'Jarrell McGlynn', '55132 Lubowitz Freeway Apt. 765', 'skiles.dedrick@example.org'),
(77, 'Lea Hintz', '0777 Brown Mountains', 'breana.pagac@example.org'),
(78, 'Jarret Wilkinson', '227 Judd Gateway', 'stiedemann.opal@example.com'),
(79, 'Abe Kerluke', '671 May Field', 'qerdman@example.com'),
(80, 'Maximo Hudson DVM', '391 Kautzer Curve', 'weissnat.jeanie@example.com'),
(81, 'Jesus Dietrich', '4657 Norval Ways Apt. 811', 'dpaucek@example.com'),
(82, 'Alexzander Fahey', '36276 Carolyne Ferry Suite 902', 'jeffrey.glover@example.org'),
(83, 'Helen Prosacco', '9015 Hadley Estate Apt. 287', 'rafaela85@example.net'),
(84, 'Larue Eichmann DDS', '77490 Holden Mill', 'jblanda@example.net'),
(85, 'Tate Schaden', '362 Kylie Crossing', 'pbarton@example.com'),
(86, 'Glennie Brown', '58643 Terry Ports Suite 684', 'jonathon04@example.net'),
(87, 'Marquise Stroman', '046 Angeline Hill', 'williamson.mabel@example.net'),
(88, 'Joel Turner', '4653 Herzog Curve', 'towne.alexandria@example.com'),
(89, 'Mrs. Justine Daugherty PhD', '6739 Antonina Skyway', 'hegmann.magnolia@example.net'),
(90, 'Dr. Giles Stroman', '00308 Gonzalo Lodge Apt. 638', 'joesph68@example.org'),
(91, 'Coby Marks', '966 Mraz Ramp', 'nathen13@example.org'),
(92, 'Tressa O\'Keefe I', '9687 Ruth Ports Suite 434', 'prosacco.mauricio@example.com'),
(93, 'Victoria Koss', '03842 Roselyn Locks Apt. 103', 'bosco.verner@example.com'),
(94, 'Prof. Annamae O\'Reilly', '30895 Williamson Villages Apt. 739', 'keyon.ratke@example.com'),
(95, 'Ewald Batz MD', '83495 Hansen Shoals Apt. 202', 'elise97@example.org'),
(96, 'Olen Prohaska', '35493 Harvey Lodge Suite 873', 'angus.dooley@example.com'),
(97, 'Dr. Cole Gutkowski', '5648 Bashirian Land Apt. 493', 'pansy.nader@example.com'),
(98, 'Mrs. Ada Morissette Sr.', '65952 Ramona Meadows', 'tessie.gibson@example.com'),
(99, 'Meagan Wiza I', '442 Abbey Ville', 'd\'amore.brady@example.org'),
(100, 'Hector Koepp', '5573 Mayert Prairie', 'legros.keeley@example.net'),
(101, 'Elinore Altenwerth', '78182 Davin Inlet', 'walsh.joey@example.com'),
(102, 'Mrs. Amely Blanda', '569 Hand Mountains Apt. 600', 'ndare@example.org'),
(103, 'Mrs. Christiana Wilkinson V', '6290 Pacocha Canyon', 'furman56@example.com'),
(104, 'Beth Friesen', '1271 Erin Island', 'shalvorson@example.com'),
(105, 'Kira Krajcik', '486 Marian Courts Suite 292', 'connie18@example.org'),
(106, 'Prof. Roberto Adams Jr.', '050 Christina Locks', 'ethan21@example.org'),
(107, 'Rebekah Beatty', '83094 Okuneva Tunnel Apt. 334', 'zane98@example.com'),
(108, 'Wilmer Cronin', '6808 Cecil Locks Apt. 714', 'jay01@example.com'),
(109, 'Derek Beahan', '40832 Ardith Lake Apt. 472', 'lisette.kshlerin@example.net'),
(110, 'Miller Medhurst', '0082 Brown Station Apt. 293', 'kunde.mariana@example.net'),
(111, 'Prof. Jeffry Gleichner I', '3257 Titus Trace', 'pfeffer.arvid@example.org'),
(112, 'Derek Little', '0286 Aubrey Estates', 'ukrajcik@example.net'),
(113, 'Tanya Strosin', '678 Ali Garden', 'wfranecki@example.org'),
(114, 'Mikayla Gibson', '0437 Asia Grove Suite 711', 'rutherford.alphonso@example.net'),
(115, 'Dr. Wilfrid Weissnat', '3284 Nikki Pike', 'vdickinson@example.org'),
(116, 'Alessia Feeney DDS', '8712 Bernier Landing Apt. 357', 'schmidt.giovani@example.com'),
(117, 'Cruz Orn', '11443 Schmitt Station', 'ymacejkovic@example.com'),
(118, 'Mr. Eduardo Gerhold', '83487 Kilback Centers Suite 061', 'gottlieb.grayce@example.net'),
(119, 'Rhiannon Herzog', '368 Manuel Keys', 'jeffery.rice@example.com'),
(120, 'Adrian Becker', '2716 Dibbert Estate', 'alanis40@example.org'),
(121, 'Dr. Joel Rowe DVM', '3850 Herta Cliffs', 'kuhic.mason@example.org'),
(122, 'Mrs. Elda Nienow', '219 Rowe Valleys Suite 812', 'gleannon@example.org'),
(123, 'Mohammad Macejkovic', '98510 Aylin Freeway', 'alexanne45@example.com'),
(124, 'Aliya Streich', '700 Johnson Trail Apt. 740', 'berry.marquardt@example.net'),
(125, 'Ms. Kavon Mosciski', '33286 Barton Spurs', 'o\'conner.andres@example.org'),
(126, 'Ethel Rempel', '794 Dorris Unions Suite 779', 'schuppe.berenice@example.org'),
(127, 'Mr. Avery Davis MD', '7395 Metz Meadows', 'gbahringer@example.org'),
(128, 'Cicero Kris', '10261 Ara Prairie Apt. 698', 'mcclure.lisandro@example.org'),
(129, 'Winona Hayes', '609 Javier Greens', 'ricardo.cummings@example.org'),
(130, 'Estel Hammes', '264 Cullen Ridges', 'hettinger.malika@example.net'),
(131, 'Sienna Kuphal', '320 Elizabeth Lake', 'florian03@example.org'),
(132, 'Ms. Bonita Stroman', '283 Una Heights Apt. 409', 'toy.vito@example.com'),
(133, 'Pearlie Mayer', '3663 Justice Mills', 'janessa.russel@example.org'),
(134, 'Mr. Jaylen Kshlerin', '8276 Clair Rapid Suite 643', 'payton46@example.com'),
(135, 'Ebba Schamberger Sr.', '95306 Della Mountain', 'nolan.austyn@example.org'),
(136, 'Kaelyn Kulas', '9987 Mayert Expressway Suite 909', 'brody31@example.org'),
(137, 'Glennie O\'Conner', '853 Alta Tunnel', 'harber.bert@example.com'),
(138, 'Linda Gleichner', '566 Lane Parkways Suite 700', 'vito15@example.com'),
(139, 'Miss Euna Ankunding I', '40764 Upton Extension', 'phoebe02@example.com'),
(140, 'Ms. Shakira McCullough II', '403 Doyle Trafficway Apt. 040', 'kunze.theresia@example.net'),
(141, 'Mr. Wilfrid Barrows Sr.', '95075 Swaniawski Grove', 'imohr@example.org'),
(142, 'Dr. Rae Dickens V', '42828 Tillman Spurs Suite 667', 'marilou.legros@example.net'),
(143, 'Marta Streich DVM', '53695 Heller Course', 'hettinger.kamron@example.com'),
(144, 'Katelin Wehner', '64684 Heller Stream', 'gerhard.tromp@example.com'),
(145, 'Dr. Alaina Emard IV', '236 Treva Fall Suite 483', 'becker.eldridge@example.net'),
(146, 'Rosie Flatley', '4730 Wisoky Neck', 'feeney.raquel@example.org'),
(147, 'Austyn Barton', '1832 Fisher Union', 'carleton21@example.com'),
(148, 'Oswaldo Dickens IV', '2863 Schmitt Stream', 'predovic.stacy@example.com'),
(149, 'Ms. Keara Becker', '76013 Ariel Key', 'bins.will@example.net'),
(150, 'Aliyah Konopelski', '13023 Tyrese Lane Apt. 866', 'shaina.block@example.net'),
(151, 'Jeramie Cronin', '86076 Kristian Haven Apt. 918', 'padberg.tatum@example.org'),
(152, 'Chester Barton', '12723 Kuhlman Key Apt. 326', 'rutherford.wilhelmine@example.com'),
(153, 'Vicente Schuster', '78958 Gudrun Unions', 'kpouros@example.org'),
(154, 'Micheal Hirthe', '850 O\'Keefe Hollow Suite 140', 'mary.daniel@example.com'),
(155, 'Liza Wolff', '29112 Rath Pine Apt. 438', 'gail67@example.org'),
(156, 'Tierra Jerde', '246 Kub Pine', 'berge.jade@example.com'),
(157, 'Krystal Abbott', '72969 Shanahan Falls Apt. 384', 'mayer.eldridge@example.org'),
(158, 'Juanita Bernier Sr.', '3531 Jadon Mission Suite 498', 'neil.mitchell@example.org'),
(159, 'Lenora Kilback', '35968 Bella Walks', 'ressie.leannon@example.org'),
(160, 'Emil Macejkovic V', '108 Crooks Shores', 'o\'hara.martine@example.net'),
(161, 'Riley Dibbert I', '6710 Isobel Burg', 'xlebsack@example.com'),
(162, 'Evert Graham PhD', '006 Lionel Branch', 'djacobi@example.com'),
(163, 'Niko Lubowitz', '63637 Laurence Forks', 'akshlerin@example.com'),
(164, 'Retha Weimann', '84126 West Ridge Suite 736', 'von.elwin@example.net'),
(165, 'Eldora Reinger', '998 Jones Row Apt. 073', 'amely.kohler@example.net'),
(166, 'Prof. Paris Little', '0735 Rafaela Underpass Suite 088', 'thintz@example.org'),
(167, 'Freeda Schumm', '180 Predovic Gardens', 'reinger.rasheed@example.com'),
(168, 'Dr. Finn Hintz II', '13302 Maybell Fork', 'heather.trantow@example.net'),
(169, 'Prof. Maxwell Torp V', '02869 Hosea Spurs Suite 216', 'terrence01@example.net'),
(170, 'Clarissa Robel', '50517 Mario Meadow Apt. 465', 'wmaggio@example.com'),
(171, 'Mariela Erdman V', '13901 Flatley Ferry Apt. 096', 'adrain.considine@example.com'),
(172, 'Mr. Mario D\'Amore', '7045 Linnea Hills', 'lucius.ruecker@example.org'),
(173, 'Viva Paucek', '387 Cummerata Parks Apt. 558', 'vmann@example.net'),
(174, 'Torrance Rippin PhD', '44996 Laverne Mews', 'uriel33@example.org'),
(175, 'Herta Spinka', '4562 Waelchi Mission', 'francisco.hoeger@example.net'),
(176, 'Mr. Chris Sporer II', '559 Mack Ramp Apt. 834', 'kcrist@example.com'),
(177, 'Gay Bailey', '889 Skiles Pines Apt. 613', 'morar.garth@example.com'),
(178, 'Shyann Okuneva', '0643 Melissa Knolls', 'ayden.kris@example.org'),
(179, 'Dr. Oswald Lang Sr.', '619 Darryl Pike Apt. 214', 'feil.flavie@example.org'),
(180, 'Torrance Harris', '4937 Jaycee Lock', 'hoppe.kaylie@example.com'),
(181, 'Miss Hallie Gibson MD', '544 Abshire Plain', 'gianni74@example.org'),
(182, 'Dr. Reynold Schinner', '080 Lueilwitz Meadows Apt. 553', 'sylvia.kohler@example.org'),
(183, 'Alivia Kuhn PhD', '303 Faye Overpass', 'keshaun.hodkiewicz@example.net'),
(184, 'Mrs. Janie Lockman II', '4162 Isaac Row Apt. 747', 'mlindgren@example.org'),
(185, 'Aylin Jacobi', '26013 Bashirian Plaza Suite 270', 'stoltenberg.crawford@example.net'),
(186, 'Mitchel Murphy', '46024 Hintz View', 'peyton55@example.com'),
(187, 'Cornell Gulgowski', '11990 Bashirian Mews Suite 859', 'xboyer@example.com'),
(188, 'Jaycee Bashirian MD', '685 Hagenes Lake Apt. 612', 'nyundt@example.net'),
(189, 'Mrs. Meggie Bogan', '5719 Schinner Skyway', 'xconsidine@example.net'),
(190, 'Sonia Klein', '387 Lelia Isle', 'amelie97@example.net'),
(191, 'Evan Ward', '16675 Thaddeus Mountains', 'brice54@example.com'),
(192, 'Griffin Schaefer', '98834 O\'Conner Club Apt. 153', 'kaley92@example.org'),
(193, 'Dr. Helen Balistreri PhD', '069 Bergstrom Motorway', 'wyman04@example.org'),
(194, 'Rusty Howell IV', '99525 Fiona Islands', 'alba78@example.net'),
(195, 'Caterina Lesch', '634 Pink Creek', 'fmcglynn@example.net'),
(196, 'Dr. Heber Gorczany', '7060 Alexandria Island', 'ggreen@example.org'),
(197, 'Eliza Quigley II', '49101 Runolfsdottir Bridge', 'hbosco@example.net'),
(198, 'Kattie Zemlak', '9830 Ophelia Neck Suite 964', 'barrows.horacio@example.com'),
(199, 'Mr. Darrick Rutherford III', '19253 Brown Forest', 'renner.consuelo@example.com'),
(200, 'Spencer Hackett', '015 Jay Camp', 'dominic34@example.org'),
(201, 'Mose Kuhic', '001 Runolfsdottir Tunnel Apt. 075', 'zechariah.stroman@example.org'),
(202, 'Stephon Gutkowski MD', '635 Kautzer Ridge Apt. 225', 'humberto.ferry@example.net'),
(203, 'Florencio O\'Keefe', '1752 Shaniya Locks', 'ewalker@example.net'),
(204, 'Taurean Heathcote', '2329 Carter Cliff', 'andrew.abbott@example.net'),
(205, 'Erna Hahn', '380 Cassin Ranch Apt. 119', 'mclaughlin.naomi@example.net'),
(206, 'Miss Kenyatta Kub', '439 Annie Meadow Apt. 266', 'sam91@example.com'),
(207, 'Alek McDermott', '444 Wilfred Route Apt. 011', 'jadon36@example.net'),
(208, 'Lonie Cruickshank', '93022 Shea Courts Apt. 583', 'prempel@example.net'),
(209, 'Walter Von DDS', '6145 Rohan Dale', 'maia10@example.com'),
(210, 'Mrs. Asha Hirthe', '4292 Wolff Terrace', 'mortimer.boyer@example.net'),
(211, 'Bernardo Herman', '87670 Bednar Stravenue', 'leonor59@example.net'),
(212, 'Ms. Carolyne Cronin DDS', '3920 Maurine Extension Suite 126', 'juwan.jaskolski@example.org'),
(213, 'Cloyd Lind', '945 Russel Common', 'flatley.opal@example.net'),
(214, 'Golda Jacobi DDS', '681 Rempel Inlet', 'berge.moriah@example.net'),
(215, 'Loy Metz', '7325 Block Road Apt. 243', 'pdubuque@example.net'),
(216, 'Prof. Dayna Kirlin', '26370 Grady Canyon Suite 351', 'ylittle@example.net'),
(217, 'Mr. William King', '8486 McDermott Lock', 'ohaag@example.net'),
(218, 'Ms. Jacky Jaskolski PhD', '360 Veda Road Suite 417', 'wraynor@example.com'),
(219, 'Phoebe Bernier', '9641 Bins Stravenue', 'klein.izabella@example.org'),
(220, 'Ms. Hilma Corkery IV', '08014 Gutmann Place Apt. 121', 'samantha93@example.org'),
(221, 'Mrs. Cassandre Gibson Jr.', '62507 Elijah Pine', 'yvonne.jakubowski@example.org'),
(222, 'Jefferey Funk III', '03322 Pagac Mountain Suite 168', 'chelsey.cronin@example.net'),
(223, 'Ferne Pagac', '4106 Tobin Spur', 'mozell.wiegand@example.net'),
(224, 'Marshall Rodriguez', '146 Hodkiewicz Plains', 'montana59@example.org'),
(225, 'Miss Rebekah Marvin III', '225 Alexander Points', 'eldon72@example.net'),
(226, 'Philip Braun', '905 Schulist Corners', 'hgrant@example.net'),
(227, 'Miss Macie Becker', '2670 Wiegand Groves Suite 048', 'pollich.jaylen@example.org'),
(228, 'Sherman Grimes III', '67898 Maggio Flat', 'brielle18@example.net'),
(229, 'Coy Murazik IV', '92986 Mann Plains Apt. 523', 'ledner.stanley@example.net'),
(230, 'Alverta Hintz', '13202 Schneider Ridges Apt. 051', 'turner.katherine@example.com'),
(231, 'Breana Lind', '856 Elinor Station Suite 866', 'konopelski.nora@example.com'),
(232, 'Audrey Trantow IV', '346 Kiley Route Suite 157', 'ava05@example.net'),
(233, 'Herminio Hansen', '5930 Gilda Common Suite 159', 'delaney30@example.org'),
(234, 'Prof. Eulah Hermann V', '145 Mante Loop', 'pthiel@example.org'),
(235, 'Myrl Stroman', '295 Leatha Square Suite 557', 'garnet.hayes@example.com'),
(236, 'Terrell Graham', '722 Kuhic Divide', 'merle.emmerich@example.com'),
(237, 'Alicia Schaden', '1038 Tristian Throughway Apt. 032', 'stewart14@example.net'),
(238, 'Clementine Purdy IV', '326 Leda Square', 'helmer64@example.net'),
(239, 'Prof. Sheldon Nitzsche', '59920 Grady Flat', 'emard.jadon@example.com'),
(240, 'Alexandra Bartoletti MD', '81861 Carter Creek', 'camren.schroeder@example.org'),
(241, 'Vincenza Gusikowski PhD', '0416 Tremblay Groves Apt. 213', 'watsica.taya@example.org'),
(242, 'Yvette Mueller MD', '546 Powlowski Crossroad Apt. 097', 'elangworth@example.org'),
(243, 'Isaias Renner', '15876 Daphnee Lakes', 'juanita87@example.com'),
(244, 'Berta Murazik', '130 Lebsack Vista', 'fritsch.rodrigo@example.net'),
(245, 'Rosanna Little III', '730 Richard Circles', 'christiansen.david@example.com'),
(246, 'Adah Price', '56510 Walter Tunnel', 'schuster.roy@example.net'),
(247, 'Dr. Forrest Hodkiewicz III', '2904 Pacocha Glen', 'considine.diamond@example.com'),
(248, 'Maurine Jacobi MD', '909 Heathcote Roads Suite 649', 'andreanne.dicki@example.org'),
(249, 'Sharon Cummerata DVM', '466 Wiegand Spur Apt. 852', 'kreiger.clementina@example.org'),
(250, 'Mr. Sven Ernser DDS', '7277 Willms Fields', 'reed.waters@example.com'),
(251, 'Sylvester Rohan', '214 Rath Garden Suite 776', 'jalon.lubowitz@example.net'),
(252, 'Krystal Klein', '2807 Schultz Plains Suite 563', 'huels.curt@example.com'),
(253, 'Natalia Farrell', '895 Hermina Shore', 'ernser.domenica@example.com'),
(254, 'Ms. Lilla Tremblay IV', '95582 Anabelle Track', 'cecil.yundt@example.net'),
(255, 'Prof. Garett Effertz', '5559 Effertz Drive Apt. 158', 'clovis.koch@example.com'),
(256, 'Mr. Adonis Heaney', '29008 Aracely Ford', 'schowalter.margot@example.org'),
(257, 'Jeff Rodriguez', '4909 Gloria Loop Apt. 456', 'robb.hickle@example.com'),
(258, 'Ms. Rosanna Wilderman DVM', '0410 Hand Crescent Suite 395', 'destany03@example.org'),
(259, 'Laverna Schinner', '44997 Genesis Turnpike', 'luettgen.kenneth@example.com'),
(260, 'Arden Funk', '38659 Mosciski Union', 'dcarter@example.org'),
(261, 'Dr. Jadon Casper', '537 Harvey Island Apt. 006', 'toney24@example.net'),
(262, 'Vito O\'Conner DVM', '1639 Brenda Land', 'dorian99@example.net'),
(263, 'Prof. Reggie Fahey', '3598 Reinhold Crescent', 'scarlett.blanda@example.net'),
(264, 'Maudie Wehner Jr.', '768 Brakus Ford Suite 011', 'maurine.ruecker@example.net'),
(265, 'Leslie Klocko', '721 Kerluke Stream', 'fschamberger@example.com'),
(266, 'Mertie McDermott', '8109 Collins Ville Suite 552', 'clementine69@example.org'),
(267, 'Dr. Erwin Hoeger', '007 Hauck Glens Suite 111', 'imitchell@example.com'),
(268, 'Conrad Legros MD', '46028 Lesch Shoal', 'tyrell.homenick@example.com'),
(269, 'Laney Marks', '119 Hermann Mall', 'osvaldo.gerhold@example.net'),
(270, 'Mrs. Aaliyah Koss', '143 Harris Pike Apt. 124', 'isabell55@example.net'),
(271, 'Frank Jakubowski', '12207 Marjory Expressway Apt. 158', 'nrowe@example.net'),
(272, 'Thurman Gaylord', '93480 Pfannerstill Tunnel', 'lcruickshank@example.net'),
(273, 'Mrs. Tanya Leuschke', '3505 Osinski Loop Suite 254', 'lance90@example.com'),
(274, 'Prof. Eve Funk', '9498 Annalise Junction Apt. 966', 'zora.lehner@example.net'),
(275, 'Zola Herzog MD', '105 Annie Loaf', 'pouros.nina@example.com'),
(276, 'Delmer Hand', '547 Jerde Views', 'jast.magnus@example.com'),
(277, 'Dr. Quinten Mosciski', '87583 Dayne Forges', 'keely.ziemann@example.org'),
(278, 'Glenda Dooley', '72181 Schinner Valley Apt. 995', 'ffadel@example.com'),
(279, 'Faustino Wolff II', '417 Rolfson Mount Apt. 711', 'herzog.chase@example.net'),
(280, 'Arvilla Metz DVM', '37042 Dakota Drives', 'vance19@example.org'),
(281, 'Mrs. Daphne McCullough', '486 Schinner Turnpike Apt. 819', 'zfranecki@example.net'),
(282, 'Ole Abshire', '37013 Medhurst Manor Apt. 930', 'lela24@example.com'),
(283, 'Prof. Carleton Hansen V', '79227 Samson Village Suite 983', 'mante.filomena@example.com'),
(284, 'Miss Halie Sanford DVM', '7335 Johnson Street Apt. 071', 'crist.magali@example.net'),
(285, 'Dedric Rau', '314 Stefanie Pine', 'conroy.lillie@example.net'),
(286, 'Garry Dickens', '5086 Brenna Mills Apt. 080', 'rblock@example.net'),
(287, 'Morris Murphy', '5481 Milan Flats', 'tiara.streich@example.org'),
(288, 'Tom Romaguera Jr.', '438 Bergstrom Parkways Suite 931', 'vdare@example.org'),
(289, 'Miss Gwendolyn Legros', '03460 Beulah Dale', 'caitlyn.hayes@example.net'),
(290, 'Lenny Senger', '0406 Mraz Dale', 'kaden.schiller@example.com'),
(291, 'Theresia Boehm', '3156 Orville Groves', 'skiles.ricardo@example.net'),
(292, 'Mrs. Jazmin Bernier I', '017 Curt Place Suite 456', 'annalise.mante@example.org'),
(293, 'John Casper', '4722 Connie Way Apt. 006', 'trey.stanton@example.com'),
(294, 'Celine Becker', '8865 Rohan Canyon', 'nikko75@example.org'),
(295, 'Skye Gusikowski', '7765 Leannon Unions Apt. 588', 'pjakubowski@example.org'),
(296, 'Kamron Wunsch', '70625 Purdy Courts Suite 491', 'buckridge.megane@example.net'),
(297, 'Mollie Cummerata', '98457 Vallie Inlet', 'koss.jadon@example.org'),
(298, 'Christy Hudson', '4675 Jenkins Walk Apt. 645', 'phoebe.smitham@example.net'),
(299, 'Prof. Ibrahim Smith Sr.', '4095 Thiel Ways Suite 581', 'gia.bechtelar@example.org'),
(300, 'Frida Sipes DDS', '43386 Sanford Crescent', 'eauer@example.com'),
(301, 'Dr. Charlotte Bauch', '387 Renner Ford', 'zhand@example.com'),
(302, 'Arvel Rath PhD', '945 Layne Coves Apt. 422', 'carroll.kyler@example.com'),
(303, 'Daija Schumm', '629 Lelia Unions', 'stokes.shana@example.com'),
(304, 'Prof. Kurtis Friesen III', '7397 Jerde Extensions', 'pdavis@example.net'),
(305, 'Nicolette Block', '12069 Goyette Vista', 'ckutch@example.org'),
(306, 'Price Willms Jr.', '135 Berneice Walks', 'haag.madyson@example.com'),
(307, 'Silas Friesen', '7061 Koepp Isle', 'emmalee84@example.org'),
(308, 'Prof. Merl Goyette Sr.', '2382 Era Spurs', 'ynader@example.net'),
(309, 'Marjolaine Farrell', '6517 Jaime Lock Suite 690', 'reichel.sheridan@example.org'),
(310, 'Prof. Michelle Hirthe DVM', '694 Sawayn Square Apt. 607', 'mstrosin@example.org'),
(311, 'Ethyl Wilderman DVM', '0551 Peyton Drive', 'kaitlin.harris@example.net'),
(312, 'Bessie Schuster', '37646 Hermiston Squares Suite 149', 'zola.borer@example.net'),
(313, 'Judge Crona', '13240 Metz Mountains', 'ellen14@example.org'),
(314, 'Gage Weber', '2049 Okuneva Mills', 'mohr.eugenia@example.net'),
(315, 'Cydney Baumbach I', '9884 Freeman Haven Suite 473', 'lavinia75@example.com'),
(316, 'Clare Heaney', '4521 Billy Loaf Suite 398', 'obosco@example.org'),
(317, 'Miss Natalia Stiedemann DDS', '5773 Laurine Run Apt. 099', 'emil41@example.com'),
(318, 'Priscilla Goodwin II', '68592 Price Via Suite 373', 'lola.beahan@example.net'),
(319, 'Jaydon Welch', '526 Vilma Trafficway', 'krajcik.lois@example.org'),
(320, 'Raul Jakubowski', '274 Sylvester Street Suite 576', 'oklocko@example.com'),
(321, 'Mark Hermann', '15984 Kuhn Point Apt. 261', 'caden68@example.com'),
(322, 'Daphne Beer', '39902 Genesis Drive Suite 947', 'collins.jermaine@example.com'),
(323, 'Janae Kilback', '3292 General Island Suite 306', 'kstreich@example.net'),
(324, 'Stanley Labadie', '4540 Jany Dale Suite 419', 'emelia.medhurst@example.org'),
(325, 'Jovani Waters', '238 Larson Plains', 'cremin.rolando@example.net'),
(326, 'Amani Gislason V', '59382 Gulgowski Flats', 'aufderhar.ladarius@example.org'),
(327, 'Dr. Davonte Miller III', '3308 Clarissa Via Suite 435', 'cpfeffer@example.com'),
(328, 'Lucio Zieme MD', '993 Tanner Divide', 'slehner@example.com'),
(329, 'Abel Labadie', '8485 Walsh River Apt. 827', 'durgan.jason@example.org'),
(330, 'Kylie Quigley', '6537 Beth Court', 'kirstin.mraz@example.net'),
(331, 'Justice Considine', '427 Kuhn Rapid', 'glenda.shields@example.org'),
(332, 'Mabelle Huel', '396 Ernesto Heights', 'leffler.karianne@example.org'),
(333, 'Mrs. Elinor Cassin', '29624 Hodkiewicz Parks Suite 745', 'crooks.kristin@example.org'),
(334, 'Arch Langworth', '3928 Blaise Lock Apt. 866', 'crystal.rowe@example.com'),
(335, 'Mrs. Claire Schmidt', '0738 Dorris Cape Apt. 802', 'shayna.o\'keefe@example.net'),
(336, 'Camren Flatley', '05824 Casimir Alley Apt. 139', 'xankunding@example.com'),
(337, 'Kristian Stark', '89677 Dustin Wall', 'ikling@example.net'),
(338, 'Nelda Boyer', '94805 Feil Keys', 'gwalter@example.org'),
(339, 'Justice Upton', '035 Lincoln Village', 'kreynolds@example.net'),
(340, 'Brionna Larson', '768 Goyette Mountain', 'hstreich@example.com'),
(341, 'Mrs. Katelyn Auer', '8501 Alize Circle Suite 559', 'keara.orn@example.com'),
(342, 'Kassandra Hettinger', '0301 Okuneva Path', 'cartwright.kacey@example.com'),
(343, 'Chester Oberbrunner', '6161 Kessler Via', 'xbeahan@example.org'),
(344, 'Leo Hahn', '9774 Johnston Courts', 'egorczany@example.net'),
(345, 'Melyna Keebler', '95281 Rosamond Court', 'pgerlach@example.net'),
(346, 'Paul Pouros', '8792 Kilback Loop Apt. 030', 'mwelch@example.org'),
(347, 'Mr. Herbert Luettgen', '92019 Hudson Hollow', 'tamia.morissette@example.com'),
(348, 'Amelia Stiedemann', '897 Kiana Inlet Apt. 707', 'florencio.wunsch@example.net'),
(349, 'Joannie Hilpert', '12939 Frami Summit Apt. 151', 'alphonso44@example.org'),
(350, 'Ivory Mitchell', '3448 Trantow Inlet Suite 282', 'gerhold.thurman@example.net'),
(351, 'Mr. Jaquan Collins PhD', '458 Lemke Cliffs Apt. 890', 'frieda.hickle@example.org'),
(352, 'Mrs. Marjorie Heidenreich', '1788 Colten Freeway', 'wcartwright@example.com'),
(353, 'Angelina Russel', '877 Leilani Row', 'bmohr@example.net'),
(354, 'Micaela Pfannerstill', '1068 Swift Lakes Suite 557', 'carroll.leo@example.com'),
(355, 'Dr. Gregory Miller I', '68270 Cummings Plain', 'noemi06@example.net'),
(356, 'Forest Nader', '0755 Morissette Tunnel Suite 940', 'arielle.gusikowski@example.net'),
(357, 'Pablo Sipes', '730 Becker Path Suite 296', 'haven.quigley@example.org'),
(358, 'Hermina Rosenbaum', '2041 Shields Plaza', 'dortha.gulgowski@example.com'),
(359, 'Catharine Feeney DDS', '629 Elenor River', 'afritsch@example.com'),
(360, 'Ethel Hermann', '7458 Lane Turnpike', 'hershel.ortiz@example.net'),
(361, 'Leland Eichmann', '059 Mathew Passage Apt. 435', 'dell.crist@example.net'),
(362, 'Mr. Armand Ortiz PhD', '4985 Harrison Walks', 'rowe.ramiro@example.com'),
(363, 'Jermain Raynor DVM', '2218 Zion Ridge Apt. 131', 'meffertz@example.net'),
(364, 'Monserrate Rowe', '3437 Electa Park', 'vallie15@example.com'),
(365, 'Marilie Lang', '1141 Lisa Hills Apt. 185', 'melvin.stokes@example.net'),
(366, 'Dawn Brown', '11617 Hickle Mews', 'vkiehn@example.net'),
(367, 'Ryan Lehner', '7900 Augusta Walks', 'kshlerin.garret@example.com'),
(368, 'Prof. Shaina Pfeffer', '936 Smitham Fields', 'pkoepp@example.com'),
(369, 'Mr. Rahul Corkery', '044 Ziemann Light', 'adam.mclaughlin@example.com'),
(370, 'Carter Kshlerin', '906 Eliane Court Suite 302', 'wilbert53@example.net'),
(371, 'Guiseppe Brekke', '511 Omari Islands Apt. 744', 'julian42@example.org'),
(372, 'Tyson Hoppe', '49744 Johann Mountains Apt. 509', 'labadie.jolie@example.org'),
(373, 'Camden Torp', '5805 Tillman Groves', 'holly.kassulke@example.org'),
(374, 'Mrs. Delfina Moore IV', '959 Osinski Rapid', 'jovany72@example.org'),
(375, 'Alf Gulgowski', '922 Schaden Mills', 'feest.myrtie@example.net'),
(376, 'Dr. Tomas Herman', '87974 Bailey Course', 'marina47@example.com'),
(377, 'Fleta Swift', '0037 Marcella Villages Apt. 262', 'reynolds.aniyah@example.org'),
(378, 'Dora Braun Jr.', '1483 Conroy Rapids Apt. 023', 'alexys.gerlach@example.net'),
(379, 'Mr. Armand Kuvalis', '4561 Lurline Glen Suite 286', 'zemlak.johnpaul@example.org'),
(380, 'Josie Toy', '94852 Rossie Ramp Apt. 953', 'abshire.elisa@example.com'),
(381, 'Eden Reinger', '6675 Witting Junction Suite 926', 'pgorczany@example.net'),
(382, 'Dr. Jayda Lehner', '2500 Vilma Harbor', 'imraz@example.org'),
(383, 'Henri Sawayn', '4348 Casper Fork Suite 345', 'npowlowski@example.net'),
(384, 'Dr. Tyson Schimmel MD', '11556 Ritchie Mews', 'rosella.orn@example.org'),
(385, 'Angelica Wilderman', '938 Rath Ramp Suite 351', 'xgrady@example.org'),
(386, 'Mrs. Lea Kris III', '90817 Johanna Court', 'shirley75@example.com'),
(387, 'Dr. Jasper Heidenreich Jr.', '840 Lavina Mill Apt. 104', 'mgutkowski@example.org'),
(388, 'Ms. Carolyne Dibbert Jr.', '78942 Kim Court', 'christina48@example.org'),
(389, 'Prof. Stella Kovacek', '150 Jaida Plain Apt. 965', 'rprohaska@example.com'),
(390, 'Prof. General Kirlin DVM', '76658 Batz Vista Suite 241', 'hmarquardt@example.net'),
(391, 'Korbin Pfeffer', '75767 Lester Prairie', 'koepp.harmon@example.org'),
(392, 'Cullen Bergstrom', '8156 Jakubowski Underpass', 'beryl82@example.com'),
(393, 'Joshua Veum', '1203 Schmeler Valleys', 'dschroeder@example.net'),
(394, 'Jevon Nolan', '661 Jacobi Estates Suite 778', 'fkiehn@example.net'),
(395, 'Retta Stracke Sr.', '89844 Russ Extensions Apt. 611', 'marisa79@example.net'),
(396, 'Hudson Emard', '2443 Orn Rapid', 'lily.crist@example.com'),
(397, 'Richmond Leuschke', '79892 Tillman Meadow Apt. 907', 'mgrady@example.net'),
(398, 'Gregory Moore', '142 Annetta Ridge Suite 153', 'pblanda@example.net'),
(399, 'Dr. Mylene Rempel Jr.', '636 Rory Islands Apt. 869', 'delphia40@example.org'),
(400, 'Jonathan Schmeler', '583 Kamren Vista Suite 322', 'qgreenholt@example.net'),
(401, 'Tito Zieme DDS', '309 Verla Spurs', 'enrique.ferry@example.net'),
(402, 'Michael Hamill', '6509 Block Knolls Apt. 046', 'fredrick.gulgowski@example.org'),
(403, 'Mr. Raleigh Swaniawski', '0251 Runolfsson Curve Suite 044', 'elnora43@example.com'),
(404, 'Lemuel Lindgren', '575 Donato Junctions', 'vince.fritsch@example.net'),
(405, 'Dr. Uriah Kerluke II', '2139 Cheyanne Keys Apt. 830', 'hammes.kirk@example.net'),
(406, 'Elody Green', '431 Kuphal Street', 'mitchell.bethany@example.net'),
(407, 'Joannie Koelpin', '42253 Gottlieb Inlet', 'rosanna12@example.org'),
(408, 'Florida Heaney Sr.', '1817 Volkman Landing Apt. 631', 'fwest@example.com'),
(409, 'Vinnie Boyle', '0349 Altenwerth Spring Apt. 600', 'gcrist@example.org'),
(410, 'Stacy Wyman DVM', '981 Schultz Shores Suite 846', 'xschumm@example.net'),
(411, 'Una Cummings IV', '97492 Renee Estate', 'tromp.kali@example.net'),
(412, 'Ari Predovic', '8410 Clay Vista Suite 812', 'qcartwright@example.com'),
(413, 'Sunny Wyman', '510 Schaefer Alley', 'rippin.serena@example.org'),
(414, 'Fabiola Labadie', '5589 Aubree Crescent Apt. 281', 'moore.kaela@example.com'),
(415, 'Amparo Satterfield', '89593 Padberg Isle', 'rowland93@example.net'),
(416, 'Dr. Kaylie Heathcote Sr.', '00384 Anya Stream', 'schaefer.evelyn@example.net'),
(417, 'Pasquale Hyatt', '1642 Deckow Prairie', 'pollich.izaiah@example.net'),
(418, 'Dr. Lamont Dooley I', '09432 McCullough Hills Suite 617', 'delaney.mcglynn@example.net'),
(419, 'Jean Schultz V', '7851 Schamberger Circle', 'jacey.leannon@example.com'),
(420, 'Thomas Wyman', '40870 Kilback Rapids Suite 791', 'clint00@example.com'),
(421, 'Rosamond Armstrong', '7749 Chris Trace Apt. 049', 'cortez33@example.com'),
(422, 'Prof. Mavis Crooks Jr.', '665 Lehner Radial Apt. 670', 'yost.gerald@example.org'),
(423, 'Ms. Alverta Hirthe DVM', '4280 Bruen Viaduct', 'norval87@example.net'),
(424, 'Russ Moore', '01121 Dietrich Lakes Apt. 297', 'roel.kertzmann@example.net'),
(425, 'Prof. Mavis Kunze MD', '616 Rosie Trace', 'gabriel.veum@example.org'),
(426, 'Beaulah Hane DDS', '201 Wisozk Walks', 'npfannerstill@example.net'),
(427, 'Haskell Deckow', '05902 Bernadine Forges Apt. 284', 'runolfsson.virgil@example.net'),
(428, 'Dr. Mckenna Herzog I', '99106 Bogan Road', 'smitham.brent@example.net'),
(429, 'Edmund Konopelski', '79949 Grady Union Apt. 202', 'ubergnaum@example.com'),
(430, 'Britney Medhurst', '78182 Okuneva Drives', 'camille.runte@example.org'),
(431, 'Dr. Maynard Cruickshank', '413 Austyn Via', 'joshuah.brakus@example.org'),
(432, 'Rae Halvorson', '230 Quitzon Pike Suite 986', 'deion.thiel@example.org'),
(433, 'Mrs. Kaylee Feest', '3681 Keegan Coves', 'joyce.jenkins@example.net'),
(434, 'Carolyne Botsford', '044 Electa Extension Suite 452', 'amir.weimann@example.org'),
(435, 'Mollie Kulas', '804 Cristobal Shore', 'ashly35@example.org'),
(436, 'Cooper Kulas', '990 Mohr Spurs Suite 946', 'viviane97@example.net'),
(437, 'Ignatius Wilderman', '605 Novella Causeway', 'nya00@example.net'),
(438, 'Marcelle Moen', '6696 Hadley Landing', 'pyundt@example.org'),
(439, 'Osvaldo Boyer', '929 Hessel Inlet Apt. 392', 'helene.gutkowski@example.net'),
(440, 'Christian Morissette', '7336 Fadel Cliffs', 'uhalvorson@example.com'),
(441, 'Carmella Keeling', '4286 Blair Shore', 'ambrose.becker@example.com'),
(442, 'Zita Halvorson', '18552 Bode Square Suite 361', 'myron.feeney@example.net'),
(443, 'Mr. Garfield Mayert', '26768 Harvey Road Apt. 577', 'erdman.forest@example.com'),
(444, 'Jackie Osinski', '66486 Sienna Station Suite 336', 'manley.weissnat@example.com'),
(445, 'Prof. Grayce Gislason II', '70788 Luz Camp Apt. 719', 'royal.grant@example.org'),
(446, 'Prof. Xzavier Huel DVM', '31707 Mackenzie Plain Suite 478', 'knitzsche@example.com'),
(447, 'Morris Torphy', '8294 Welch Parkways Suite 570', 'viola.effertz@example.org'),
(448, 'Dr. Elmore Heller', '3939 Hane Streets', 'fletcher.weissnat@example.net'),
(449, 'Julian Stark III', '855 Hailey Terrace Apt. 019', 'aurore37@example.org'),
(450, 'Prof. Bradley Crooks MD', '847 Renner Stravenue Apt. 705', 'lacey.brekke@example.net'),
(451, 'Dr. Cordie Fisher', '60991 Terry Knolls', 'bennett98@example.com'),
(452, 'Prof. Casandra Sanford', '71503 Ubaldo Shore', 'yadira.sanford@example.net'),
(453, 'Christine Spinka', '8026 Miller Spring Suite 758', 'billie.o\'hara@example.org'),
(454, 'Imani Kunde', '959 Brakus Parkways', 'cielo87@example.org'),
(455, 'Cristopher Sauer', '8118 Towne Court', 'treva.muller@example.com'),
(456, 'Korbin Gaylord', '083 Angelina Passage', 'dietrich.heaven@example.org'),
(457, 'Prof. Stanton Leannon', '6227 Olen Wells', 'mbashirian@example.org'),
(458, 'Mr. Buddy Fisher', '373 Koepp Expressway Suite 121', 'corwin.orland@example.net'),
(459, 'Mrs. Calista Lockman DDS', '82051 Jakubowski Ways Suite 193', 'arvid.kihn@example.com'),
(460, 'Matteo Murphy II', '5100 Sauer Land Suite 663', 'nienow.ashley@example.net'),
(461, 'Humberto Fadel', '137 Towne Stream Suite 351', 'tom.ernser@example.org'),
(462, 'Erica Flatley', '1596 Kurt Terrace', 'griffin.will@example.org'),
(463, 'Petra Cummerata', '478 Dan Ranch', 'karen89@example.org'),
(464, 'Daphne Maggio III', '898 Baumbach Turnpike', 'edison86@example.net'),
(465, 'Dr. Sage Bogan III', '1461 Labadie Forks', 'kkilback@example.org'),
(466, 'Melyna Waelchi', '74332 Nicolas Crossroad', 'jedediah26@example.org'),
(467, 'Josefina Hayes', '35222 Tyree Mission', 'gabbott@example.org'),
(468, 'Scottie Mraz', '9161 Fisher River', 'srutherford@example.com'),
(469, 'Sabrina Nader', '03029 Schiller Haven Apt. 491', 'raymond30@example.org'),
(470, 'Brown Sanford', '20054 Margarette Way Apt. 135', 'rocky.gleason@example.net'),
(471, 'Ulises Baumbach Sr.', '2738 McDermott Mills Apt. 216', 'considine.rene@example.com'),
(472, 'Peter Kohler', '712 Rhea Drive Apt. 679', 'paucek.elisabeth@example.net'),
(473, 'Prof. Sylvester Towne', '1150 Dach Streets Suite 151', 'nicola.lakin@example.org'),
(474, 'Fritz Moen', '99196 Larson Crest', 'rjerde@example.org'),
(475, 'Thalia Glover', '4474 Jacobson Highway Suite 117', 'lavada86@example.org'),
(476, 'Clementina Brown', '463 Lue Ferry', 'garry28@example.com'),
(477, 'Ethelyn Langosh V', '8275 Orn Squares Suite 956', 'joseph.ullrich@example.net'),
(478, 'Eleazar Pouros', '9867 Jacobson Springs', 'hailie75@example.net'),
(479, 'Wilmer Bahringer', '28172 Shakira Forest Suite 414', 'kmoen@example.net'),
(480, 'Jena Renner', '6706 Maurine Key', 'cummings.florence@example.net'),
(481, 'Camden Wunsch DDS', '794 Keira Points Suite 466', 'rtromp@example.net'),
(482, 'Wiley Orn PhD', '249 Rempel Inlet', 'rachael.kshlerin@example.org'),
(483, 'Jacinthe Reinger', '45865 Chasity Squares', 'domingo.marquardt@example.com'),
(484, 'Dr. Erwin Johns', '96260 Howard Lodge Apt. 776', 'yzulauf@example.net'),
(485, 'Dr. Ethel Kovacek', '314 Marks Drive', 'dsteuber@example.com'),
(486, 'Claudie Ziemann', '27064 O\'Reilly Knoll', 'greenholt.philip@example.com'),
(487, 'Jonathan Bayer', '57626 Madilyn Rapids Apt. 648', 'ledner.helen@example.net'),
(488, 'Allison Pacocha', '515 Dicki Club', 'baltenwerth@example.net'),
(489, 'Jayne Johns', '51776 Jaquelin Garden', 'astiedemann@example.org'),
(490, 'Prof. Drake Towne I', '5223 Sage Shoal Suite 521', 'estelle.marquardt@example.com'),
(491, 'Mrs. Nikki Fisher MD', '053 Von Crescent', 'clementina86@example.net'),
(492, 'Malachi Flatley', '5639 Chasity Courts Suite 908', 'kristin39@example.org'),
(493, 'Lilly Weimann', '004 Goodwin Well Apt. 459', 'mohr.pierre@example.net'),
(494, 'Johanna Terry', '5907 Boyer Hill', 'pfannerstill.reta@example.net'),
(495, 'Prof. Lonzo Okuneva', '75816 Margot Junctions Suite 185', 'mquigley@example.org'),
(496, 'Prof. Rocky Weissnat PhD', '863 Kozey Summit', 'desiree41@example.org'),
(497, 'Miss Hermina Dibbert PhD', '73450 O\'Keefe Mountain', 'aliya.kassulke@example.org'),
(498, 'Gwendolyn Predovic', '266 Judson Forks Apt. 535', 'plabadie@example.com'),
(499, 'Finn Franecki', '966 Berenice Forges Suite 316', 'sammy99@example.net'),
(500, 'Myrtice Rippin', '0924 Reagan Village', 'ladarius74@example.com'),
(501, 'Alyce Bradtke', '49784 Carmella Squares', 'pd\'amore@example.com'),
(502, 'Destinee Swaniawski', '20572 Macejkovic Creek Suite 021', 'irwin21@example.org'),
(503, 'Mrs. Daphne Hand', '334 Tania Fork Apt. 189', 'twila.mcdermott@example.com'),
(504, 'Mr. Milo Kilback', '76955 Walker Unions Apt. 345', 'marie.bayer@example.com'),
(505, 'Ms. Myah Runte III', '659 Kohler Mountain Suite 122', 'pprohaska@example.net'),
(506, 'Ms. Evelyn Nikolaus', '6909 Ankunding Manors Apt. 112', 'donnie87@example.org'),
(507, 'Brett McClure', '58897 Conner Extension Apt. 558', 'cassin.nicola@example.org'),
(508, 'Dr. Anne Crooks', '54813 Erdman Corner', 'cfarrell@example.org'),
(509, 'Edgar Collins', '687 Faye Lakes Apt. 616', 'vivian25@example.org'),
(510, 'Miss Kira Halvorson', '7848 Renner Cape', 'hnicolas@example.org'),
(511, 'Vada Farrell', '823 Mozell Knoll', 'traynor@example.com'),
(512, 'Sandra Beer', '0146 Rodriguez Lake Suite 554', 'jailyn.emard@example.net'),
(513, 'Mrs. Addison Murphy', '072 Marisa Valley Apt. 450', 'benton01@example.net'),
(514, 'Wellington Gleichner DDS', '467 Ziemann Pass', 'whackett@example.org'),
(515, 'Gerardo Weissnat', '52132 Windler Courts Suite 919', 'kratke@example.com'),
(516, 'Malinda Cronin', '8544 Sydnie Land Suite 906', 'vernie47@example.com'),
(517, 'Florida Gerlach', '2340 Langosh Ranch Apt. 828', 'amir.bartoletti@example.net'),
(518, 'Katrine Barrows', '521 Gabrielle Ridge Suite 647', 'florencio20@example.com'),
(519, 'Mrs. Adah Price PhD', '880 Anya Union Apt. 011', 'omarvin@example.net'),
(520, 'Luella Ryan', '68153 Isadore Field Apt. 613', 'lela.boyer@example.com'),
(521, 'Alicia Herman', '21690 Brown Bridge Suite 730', 'kyundt@example.net'),
(522, 'Priscilla Wehner MD', '95581 Dereck Motorway Suite 539', 'dahlia36@example.com'),
(523, 'Dalton Orn Sr.', '36418 Hackett Street', 'qkuhic@example.com'),
(524, 'Dr. Jacinto Goodwin DVM', '05974 Veum Street Apt. 512', 'johathan.luettgen@example.org'),
(525, 'Isabell Legros', '8926 Willa Crescent Apt. 874', 'cecelia.turcotte@example.net'),
(526, 'Mrs. Eva Moore', '6090 Graham Lodge', 'ghintz@example.com'),
(527, 'Kiarra Bosco DDS', '61582 Upton Hills Apt. 979', 'gaylord.emmanuel@example.net'),
(528, 'Arne Goyette', '917 Ines Highway', 'prohaska.timothy@example.net'),
(529, 'Natalia Swift II', '20633 Farrell Tunnel', 'stoltenberg.stacy@example.com'),
(530, 'Buster McClure', '612 Jena Mill', 'yheathcote@example.org'),
(531, 'Ms. Zoey Connelly', '8463 Marcella Burg', 'glenna.kessler@example.net'),
(532, 'Chance Grimes', '18411 River Mews', 'sincere28@example.com'),
(533, 'Wendy Mosciski I', '81171 Helga River', 'madelynn65@example.com'),
(534, 'Lempi Rowe', '49537 Stanley Locks Apt. 513', 'nikko75@example.net'),
(535, 'Jordy Lynch', '24508 Taurean Hills', 'o\'conner.lera@example.org'),
(536, 'Petra Hoppe IV', '603 Johnson Union', 'elnora.howe@example.net'),
(537, 'Susie Friesen MD', '0419 Morar Ways Apt. 172', 'trevion84@example.net'),
(538, 'Blair Lowe', '6728 Linwood Causeway', 'juston.walker@example.org'),
(539, 'Kane McLaughlin', '536 Dusty Trafficway Apt. 722', 'erna59@example.org'),
(540, 'Prof. Vernon Effertz Jr.', '6355 Audie Plain Apt. 144', 'trantow.trent@example.net'),
(541, 'Miss Octavia Bashirian MD', '184 Clementina Lights Suite 829', 'koss.travon@example.net'),
(542, 'Karlee Hackett', '719 Graciela Plaza', 'sibyl.kreiger@example.org'),
(543, 'Austyn Funk I', '7322 Eugenia Drive', 'jaydon01@example.org'),
(544, 'Benjamin Braun', '71566 Hoeger Trail Suite 092', 'rkerluke@example.com'),
(545, 'Pedro Terry', '4681 Terry Plaza', 'kreiger.taryn@example.net'),
(546, 'Shaniya Wintheiser', '56162 Stehr Harbor', 'aupton@example.net'),
(547, 'Prof. Mazie Heller', '14237 Cecil Station', 'gorczany.noemie@example.com'),
(548, 'Nicolas Marks', '0595 Altenwerth Field Apt. 415', 'parisian.desiree@example.net'),
(549, 'Cristobal Batz', '37518 Lynch Key', 'colt49@example.net'),
(550, 'Dr. Maybelle Becker', '46068 Thompson Rue Suite 927', 'brayan.pollich@example.net'),
(551, 'Sabrina Armstrong', '914 Wolf Green Apt. 018', 'shemar85@example.net'),
(552, 'Mrs. Gracie Mohr DVM', '615 Adams Light Apt. 820', 'kihn.arturo@example.org'),
(553, 'Jasmin Reilly', '64177 Doyle Inlet Suite 382', 'mohr.scarlett@example.org'),
(554, 'Oscar Durgan', '572 Ebony Divide', 'viviane.smitham@example.org'),
(555, 'Aurelio Collier II', '0036 Gregoria Grove Suite 405', 'ottis62@example.net'),
(556, 'Claudia Hirthe', '804 Jessy Port', 'ashlee.tromp@example.com'),
(557, 'Dante Glover', '37431 Russel Haven Suite 951', 'bernier.bessie@example.net'),
(558, 'Mr. Benjamin Cole Sr.', '874 Oberbrunner Trafficway', 'destin.block@example.net'),
(559, 'Dr. Filiberto Schuppe Sr.', '78066 Armstrong Lane Apt. 020', 'crutherford@example.com'),
(560, 'Rubie Barrows II', '0488 Meredith Courts Apt. 741', 'khansen@example.org'),
(561, 'Casper Kunze', '7004 Jermaine Key', 'lang.paige@example.com'),
(562, 'Neal Schaden DVM', '5387 Columbus River Suite 908', 'keeley62@example.com'),
(563, 'Norberto Sporer', '5230 Sarina Lakes Apt. 210', 'breitenberg.raymond@example.com'),
(564, 'Miss Loraine Pfeffer IV', '238 Cummings Well', 'brendon.gerlach@example.com'),
(565, 'Dr. Wilma O\'Conner DVM', '71622 Zieme Stream', 'oscar10@example.org'),
(566, 'Prof. Jesus Emard', '9088 Wyman Meadow', 'mstamm@example.org'),
(567, 'Kyler Flatley', '2133 Jovan Court Suite 737', 'ebeer@example.com'),
(568, 'Carlie Rohan', '9095 Ryan Groves', 'zcummerata@example.com'),
(569, 'Mozelle Harris', '4826 Kattie Mountains', 'bayer.dorian@example.com'),
(570, 'Prof. Ova Kautzer MD', '8799 Hilpert Plaza', 'huel.connie@example.net'),
(571, 'Lorenza Rau', '41038 Dedrick Circle', 'imarks@example.org'),
(572, 'Delores Jacobs', '579 Salma Motorway', 'willa.halvorson@example.net'),
(573, 'Hardy Grimes', '3170 Celine Parks Suite 783', 'shayne.hodkiewicz@example.net'),
(574, 'Santina Kemmer', '571 Runte Wall', 'bmayer@example.net'),
(575, 'German Hermann DDS', '138 Arlene Wall', 'o\'hara.gloria@example.com'),
(576, 'Mae Gutkowski I', '434 Bauch Crossroad', 'bbahringer@example.net'),
(577, 'Ruben Kessler', '27435 Lebsack Stravenue Apt. 238', 'lamont61@example.com'),
(578, 'Caleigh Schaefer Sr.', '269 Loyce Ranch', 'lhettinger@example.com'),
(579, 'Mr. Ernest Swift Sr.', '41863 Koepp Mall Apt. 549', 'irving92@example.org'),
(580, 'Art Pfannerstill', '47997 Abbott Crest Apt. 636', 'dina95@example.com'),
(581, 'Ms. Jacynthe Stracke', '5979 Ahmad Shoals', 'jennie.hessel@example.org'),
(582, 'Prof. Anjali Adams II', '73391 Benedict Mall Suite 426', 'mccullough.adriel@example.net'),
(583, 'Jamaal Gleason PhD', '80466 Carolyne Village Suite 054', 'isac15@example.org'),
(584, 'Mrs. Cali Koepp', '578 Viola Run', 'oaufderhar@example.com'),
(585, 'Andre Ullrich', '8847 Dane Haven Suite 707', 'schaefer.joshuah@example.net'),
(586, 'Hollis Stracke', '194 Jordi Summit Suite 021', 'spencer.millie@example.net'),
(587, 'Elna Larson', '1262 Skiles Roads Apt. 357', 'armstrong.alejandrin@example.com'),
(588, 'Louvenia Jones', '13586 Asia Route', 'dcrist@example.net'),
(589, 'Brooke Hoeger PhD', '050 Cicero Parks Suite 497', 'konopelski.winfield@example.org'),
(590, 'Sadye Spinka DVM', '7831 Ivah Falls Apt. 580', 'broderick51@example.net'),
(591, 'Mrs. Angie Schulist', '4730 Gutkowski Ranch', 'elmo38@example.com'),
(592, 'Frida Rath', '89639 Bauch View', 'cheyanne.mills@example.com'),
(593, 'Kameron Waelchi', '61386 Gerry Views Apt. 014', 'zieme.kavon@example.com'),
(594, 'Yasmine Bashirian', '488 Metz Garden', 'alexzander20@example.net'),
(595, 'Maverick Cassin', '2559 Bernhard Plain Apt. 401', 'douglas.misty@example.net'),
(596, 'Prof. Wallace Rath', '69626 Weber Isle Suite 991', 'renner.melissa@example.com'),
(597, 'Andreanne Klein', '05153 Roma Center', 'hschinner@example.org'),
(598, 'Prof. Clifton Schmeler PhD', '4153 Carmelo Fords Apt. 480', 'victoria.gaylord@example.org'),
(599, 'Miss Glenda Boyle I', '4349 Chase Unions', 'kylie59@example.com'),
(600, 'Mrs. Reyna Will I', '121 Issac Trail Suite 120', 'kborer@example.net'),
(601, 'Kyra Corkery IV', '4264 Mafalda Grove', 'angelo.collins@example.com'),
(602, 'Miss Abagail Hamill MD', '0175 Christine Cape Suite 303', 'felicity.rodriguez@example.com'),
(603, 'Queen Crooks', '6503 Myriam Highway', 'rosa.dach@example.com'),
(604, 'Prof. April Sporer', '000 Jerde Club', 'tkovacek@example.com'),
(605, 'Jodie Rosenbaum', '629 Eveline Fork Apt. 868', 'ezra69@example.com'),
(606, 'Mr. Henry Sauer Sr.', '9761 Swaniawski Lock', 'jakubowski.precious@example.com'),
(607, 'Laron Fahey', '7877 Kulas Manor', 'ynitzsche@example.com'),
(608, 'Mr. Adolf Corwin', '0534 Block Passage Suite 768', 'nella90@example.org'),
(609, 'Dr. Lucy Reichel', '240 Daniel Rapid', 'hettinger.myrtle@example.org'),
(610, 'Hoyt Gaylord', '9395 Trey Center', 'joe.hudson@example.com'),
(611, 'Vella Oberbrunner', '23105 Kulas Point', 'howell.misty@example.com'),
(612, 'Violet Quitzon', '657 Isabelle Fields Apt. 290', 'acartwright@example.com'),
(613, 'Gordon Collins', '416 Ocie Ford', 'ncremin@example.com'),
(614, 'Benton Senger V', '673 Margarita Roads Suite 993', 'hilpert.dashawn@example.net'),
(615, 'Janiya Reichel', '20156 Noemy Oval Suite 154', 'gkub@example.com'),
(616, 'Ernie Anderson', '95225 Astrid Pines', 'fmedhurst@example.net'),
(617, 'Waldo Kertzmann', '6948 Ondricka Hill', 'oschmeler@example.org'),
(618, 'Charlotte Conroy', '2605 Lavinia Square Suite 381', 'cassidy.lehner@example.org'),
(619, 'Deon Tremblay', '8926 Heathcote Cliffs', 'omclaughlin@example.com'),
(620, 'Sigmund Koepp Jr.', '241 Luigi Fall', 'ykuhlman@example.net'),
(621, 'Marge Treutel', '451 Monahan Mount', 'kwaters@example.com'),
(622, 'Enoch Jaskolski', '292 Carter Courts Apt. 266', 'patience23@example.com'),
(623, 'Miss Celine Harber', '931 Javonte Lock Suite 267', 'eleazar.trantow@example.com'),
(624, 'Kylie Effertz', '93801 Karli Hollow Suite 126', 'greenholt.viviane@example.net'),
(625, 'Tyree Lehner', '000 Howell Stream Suite 761', 'orval.kessler@example.net'),
(626, 'Baby Goyette', '16893 Moriah Trail', 'alexandrine.krajcik@example.com'),
(627, 'Quincy Fritsch', '394 Myrtle Viaduct', 'hayley.king@example.com'),
(628, 'Delaney Shanahan', '970 Laura Lodge Apt. 120', 'emily.bashirian@example.com'),
(629, 'Mohamed Schiller V', '51428 Rita Ramp', 'zella.boehm@example.org'),
(630, 'Prof. Armand Hegmann', '80604 Fae Unions Suite 646', 'kris.krystel@example.net'),
(631, 'Alexandrea Brown', '27081 Lacy Ford Apt. 997', 'eliseo91@example.net'),
(632, 'Ms. Fanny Terry DVM', '640 Doyle Way Suite 959', 'goldner.montana@example.net'),
(633, 'Miss Chloe Terry', '0345 Daniela Forge', 'lukas12@example.org'),
(634, 'Amelia Stark V', '7971 Rosalinda Way Suite 338', 'ardella.haley@example.net'),
(635, 'Jaren Witting', '83250 Wiegand Spring', 'wade.schuppe@example.org'),
(636, 'Samantha Thompson', '34703 White Turnpike', 'alvera39@example.net'),
(637, 'Roy Dietrich V', '73200 Terrell Bridge Suite 529', 'rudolph.mueller@example.com'),
(638, 'Edd Muller', '56774 Laurel Crossing', 'glover.brad@example.net'),
(639, 'Stuart Brown', '32782 Benjamin Gateway Suite 399', 'emmet24@example.net'),
(640, 'Terry Funk', '80519 Kiehn Branch Suite 709', 'freeman11@example.org'),
(641, 'Ed Crist', '506 Bonita Inlet', 'freda.jones@example.org');
INSERT INTO `peoples` (`id`, `name`, `address`, `email`) VALUES
(642, 'Isai Morar II', '88206 Buck Mountain Apt. 185', 'tkilback@example.org'),
(643, 'Dr. Narciso Leffler', '350 Madisen Stream', 'xeichmann@example.com'),
(644, 'Domenic Casper', '7846 Eduardo Loaf Suite 307', 'monahan.madyson@example.org'),
(645, 'Prof. Monserrate Rogahn PhD', '1481 Carmella Points Suite 942', 'gisselle.reichel@example.net'),
(646, 'Oliver Kautzer', '229 Heloise Falls', 'walker.cleveland@example.com'),
(647, 'Jalen Gutmann', '37605 Hilpert Inlet', 'clarissa.carter@example.com'),
(648, 'Zella Wehner', '5636 Marguerite Keys', 'krajcik.elbert@example.net'),
(649, 'Libby Hayes MD', '52264 Madelyn Roads Suite 298', 'ibreitenberg@example.net'),
(650, 'Ardith Zboncak', '32717 Javon Lodge', 'schamberger.pat@example.net'),
(651, 'Raoul McKenzie', '38125 Schowalter Mills', 'adelbert.hartmann@example.net'),
(652, 'Candace Shields Jr.', '013 Camylle Mews Apt. 498', 'westley.keeling@example.com'),
(653, 'Wiley Doyle', '5658 Jerel Haven', 'reyna56@example.com'),
(654, 'Jennings Gislason', '962 Wilford Rapids Apt. 369', 'colson@example.net'),
(655, 'Dr. Joanne Rolfson DVM', '21206 Leannon Mountains Apt. 840', 'hans.lubowitz@example.com'),
(656, 'Mario Reichel', '51157 Josiane Plaza', 'crooks.celestine@example.com'),
(657, 'Winfield Wunsch', '8410 Baumbach Parkways Suite 676', 'fadel.rusty@example.net'),
(658, 'Erwin Emard', '625 Pfannerstill Valleys', 'qkoss@example.org'),
(659, 'Mr. Nels Senger', '9241 Bednar Drive Apt. 749', 'pfannerstill.julio@example.com'),
(660, 'Litzy Abbott', '347 Amos Street', 'brooks30@example.com'),
(661, 'Ashtyn Witting', '4988 Bayer Cove Suite 156', 'jose83@example.com'),
(662, 'Moses Blanda', '70048 Yost Shoal', 'lschoen@example.org'),
(663, 'Naomie Erdman', '1368 Hermann Court Suite 894', 'feeney.marilou@example.org'),
(664, 'Dr. Pink Huel Jr.', '26517 White Knoll Apt. 629', 'jovani.tromp@example.org'),
(665, 'Muriel Dietrich', '527 Chase Lodge', 'destany11@example.org'),
(666, 'Gaston Gorczany', '075 Vandervort Parkway', 'august.schaden@example.com'),
(667, 'Kraig Kovacek', '94305 Alayna Overpass Suite 061', 'ray.abernathy@example.org'),
(668, 'Melisa Dicki', '9876 Jermaine Mall', 'wiegand.zola@example.org'),
(669, 'Dr. Maximillian Sauer', '8758 Sipes Drives Suite 586', 'tyost@example.com'),
(670, 'Mr. Kenyon Daniel III', '130 Sonia Knoll Apt. 261', 'jewel52@example.org'),
(671, 'Celestino Brakus', '0721 Wolff Mill', 'elinore.vonrueden@example.com'),
(672, 'Aubrey Feest I', '65699 Johnston Lane', 'kaya.kunde@example.com'),
(673, 'Hilda Trantow', '196 Garett Plain', 'javier.lemke@example.org'),
(674, 'Dr. Susana Sanford', '880 Medhurst Parks', 'prohaska.joanne@example.org'),
(675, 'Jadon Streich', '6995 DuBuque Mountain Suite 555', 'altenwerth.kristin@example.com'),
(676, 'Dr. Emmet Pollich', '7561 Armando Spring Suite 327', 'ecremin@example.com'),
(677, 'Isom Kub', '691 Kub Trafficway Suite 262', 'edwina26@example.net'),
(678, 'Stanford White', '40878 Hyatt Pass Suite 807', 'isaac.mclaughlin@example.org'),
(679, 'Jackson Legros', '338 Elda Stravenue Suite 617', 'colten70@example.net'),
(680, 'Maegan Hermiston', '894 Jaclyn Grove', 'rico.schroeder@example.net'),
(681, 'Seth Schultz', '1220 Jordi Flat Suite 888', 'heaney.franco@example.com'),
(682, 'Ms. Stephanie Crist', '596 Sauer Manor Suite 118', 'rath.emmet@example.net'),
(683, 'Prof. Annabelle Shanahan MD', '111 Vida Spur Apt. 508', 'lubowitz.maya@example.org'),
(684, 'Blanche Lowe', '3173 Blanda Circle Apt. 687', 'mckenzie.nickolas@example.net'),
(685, 'Miss Marlee Botsford', '694 Conrad Gardens Apt. 486', 'reginald99@example.org'),
(686, 'Dr. Louvenia Hirthe', '2063 Walter Brook Apt. 948', 'ydubuque@example.net'),
(687, 'Dominique Marvin', '96152 Lurline Ridge Suite 132', 'tbalistreri@example.com'),
(688, 'Shaniya Parisian', '82061 Autumn Harbors', 'pfannerstill.gunnar@example.com'),
(689, 'Mrs. Gisselle Oberbrunner Sr.', '246 Delfina Summit Apt. 759', 'woodrow88@example.net'),
(690, 'Prof. Barrett Wunsch PhD', '55888 Earnestine Shores Apt. 545', 'brendon96@example.net'),
(691, 'Miss Serenity Doyle', '766 Rohan Forks', 'misael.walter@example.net'),
(692, 'Mona Walsh', '76103 Satterfield Court', 'balistreri.nadia@example.net'),
(693, 'Audra Gusikowski DDS', '83697 Pagac Summit', 'ekoss@example.net'),
(694, 'Marianne Howell', '416 Genevieve Flats', 'tommie67@example.com'),
(695, 'Chase Hills', '3984 Ferry Orchard Suite 385', 'wade.lockman@example.com'),
(696, 'Leone O\'Conner', '3664 Piper Ramp Apt. 737', 'adela27@example.net'),
(697, 'Oceane Stanton', '077 Gleason Walk Suite 738', 'adrien89@example.org'),
(698, 'Darlene Weissnat', '759 Lilian Extension', 'kamille.carter@example.org'),
(699, 'Tina Bailey Jr.', '1206 Katarina Gateway', 'kelvin.lubowitz@example.com'),
(700, 'Prof. Morgan Carroll III', '991 Tiffany Greens Apt. 322', 'hattie75@example.org'),
(701, 'Arjun Aufderhar Jr.', '09448 Hansen Glens Apt. 037', 'leanne08@example.com'),
(702, 'Kyla Murphy', '6636 Bashirian Cliff Suite 161', 'emery.gulgowski@example.com'),
(703, 'Marty Stark', '874 Nicolas Gateway Suite 396', 'brenna.waters@example.net'),
(704, 'Trace McKenzie', '3220 McDermott Ferry Apt. 856', 'kutch.santiago@example.com'),
(705, 'Amy Lesch', '290 Bartoletti Court', 'jan61@example.com'),
(706, 'Mayra Bednar', '99634 Diego Pass', 'tiana02@example.net'),
(707, 'Gene Wuckert', '9407 Alanna Forks', 'kemmer.kiel@example.org'),
(708, 'Della Friesen', '5707 Ahmad Station Apt. 927', 'konopelski.filiberto@example.com'),
(709, 'Cristobal Reynolds', '994 Batz Villages Apt. 009', 'darrel.mcglynn@example.org'),
(710, 'Aryanna Paucek', '3594 Hermina Crest', 'sharber@example.com'),
(711, 'Roxanne Boehm', '8785 Towne Pine Suite 186', 'zieme.rex@example.com'),
(712, 'Alisha Morissette', '337 Emmanuel Avenue Suite 495', 'leonie.shanahan@example.net'),
(713, 'Ms. Clare Berge', '022 Micah Fort', 'umraz@example.com'),
(714, 'Mr. Vern Parker V', '667 Ollie Junction Apt. 217', 'fay.darrick@example.org'),
(715, 'Ms. Katrina Moore I', '365 Lavina Gardens', 'hrogahn@example.com'),
(716, 'Dr. Roman Murphy', '213 Jena Loop', 'marianna63@example.com'),
(717, 'Karine Wilkinson', '27922 Selmer Branch Apt. 802', 'wkuhn@example.org'),
(718, 'Ottilie Huel', '48198 Nolan Lodge', 'rhilpert@example.com'),
(719, 'Adell Stanton', '94049 Stewart Harbors Apt. 356', 'carlotta.welch@example.com'),
(720, 'Mr. Pablo Effertz IV', '8693 Mueller Cove Apt. 748', 'bins.marcellus@example.net'),
(721, 'Prof. Abbey Ernser', '04342 Else Ramp', 'waelchi.sonya@example.org'),
(722, 'Bart Hilll', '42755 Corkery Cliff Apt. 576', 'seamus67@example.net'),
(723, 'Celestine Larson', '3289 Ahmed Station', 'glen38@example.net'),
(724, 'Alexzander Windler', '48403 Casimir Lock', 'nicole58@example.com'),
(725, 'Estrella Lynch', '08444 Lauriane Land Apt. 468', 'rodriguez.sedrick@example.net'),
(726, 'Imani Pagac Jr.', '137 Waylon Drive', 'verda17@example.net'),
(727, 'Mr. Cicero Wisoky', '3663 Magali Junction', 'rath.afton@example.com'),
(728, 'Prof. Lisandro Stamm', '7795 Pollich Falls', 'skylar85@example.com'),
(729, 'Dr. Donald Stark IV', '1419 Bechtelar Mission Suite 366', 'uemard@example.org'),
(730, 'Adela Lowe', '0683 Daugherty Cape Suite 784', 'vicky38@example.net'),
(731, 'Isaias Wiegand', '36955 Lynch Place Suite 596', 'zrolfson@example.org'),
(732, 'Brenna Powlowski', '50645 Ledner Freeway', 'hills.malinda@example.org'),
(733, 'Leila Harvey', '17947 Parker Flats Suite 526', 'yasmin03@example.org'),
(734, 'Haley Gleichner', '515 Laura Field', 'vicente.krajcik@example.net'),
(735, 'Mr. Joesph Conroy V', '175 Howe Shoal Suite 311', 'jazmyne19@example.org'),
(736, 'Ms. Adrienne Hoppe', '192 Juanita Terrace', 'robel.ricardo@example.org'),
(737, 'Sasha Wisozk', '285 Bins Brooks Suite 654', 'rodrick.corwin@example.com'),
(738, 'Hannah Witting', '13178 Stehr Greens Apt. 412', 'vbogan@example.net'),
(739, 'Mrs. Marcia Konopelski II', '901 Renee Stream', 'goodwin.nadia@example.net'),
(740, 'Dr. Jarred Stiedemann DDS', '550 Velva Turnpike', 'missouri89@example.com'),
(741, 'Eloy Swaniawski', '16812 Lawrence Valleys', 'dewitt99@example.org'),
(742, 'Miguel Yost', '07888 Susie Mountain Suite 422', 'mcdermott.catharine@example.com'),
(743, 'Ernest Miller', '484 Werner Spurs', 'hayes.josie@example.net'),
(744, 'Mrs. Elda Dibbert III', '142 Zachery Station', 'bmonahan@example.com'),
(745, 'Buford Pfeffer', '7282 Jamarcus Street Apt. 024', 'ustracke@example.net'),
(746, 'Mollie Crist', '410 Schaefer Land', 'joelle06@example.net'),
(747, 'Susan O\'Keefe II', '565 Lesch Corners', 'hallie97@example.com'),
(748, 'Miss Billie Walker', '8157 Fae Streets', 'vkling@example.org'),
(749, 'Janis Thompson', '75513 Stracke Brook Apt. 877', 'raoul.cassin@example.com'),
(750, 'Dr. Manuel Johns', '790 Schroeder Shoal', 'qwhite@example.net'),
(751, 'Garrison Fadel', '0497 Cletus Views', 'pfannerstill.clementine@example.org'),
(752, 'Crystel Schultz', '558 Gilda Islands', 'alvina11@example.org'),
(753, 'Kitty Mayert', '234 Kirlin Courts', 'agnes.stark@example.net'),
(754, 'Prof. Robin Wyman', '09168 Eugene Fort', 'thalia.stokes@example.net'),
(755, 'Dr. Carli Schroeder', '1156 Douglas Groves', 'gaylord.zoe@example.net'),
(756, 'Estevan Batz', '55619 Metz Road Apt. 361', 'ondricka.chelsea@example.net'),
(757, 'Teagan Mante PhD', '72413 Christian Gardens Apt. 186', 'imoore@example.com'),
(758, 'Zora Brakus', '7855 Tromp Keys Suite 425', 'daren08@example.net'),
(759, 'Mr. Santino Thompson', '2882 Susanna Road Suite 380', 'miller.declan@example.net'),
(760, 'Dr. Riley Dare MD', '745 Theodore Rest Suite 900', 'smuller@example.com'),
(761, 'Dr. Hilma Rowe', '44929 Gust Glens', 'davis.levi@example.net'),
(762, 'Yoshiko Mohr II', '872 Yadira Loaf', 'andres97@example.org'),
(763, 'Vicenta Gibson', '51601 Cremin Villages', 'vnicolas@example.org'),
(764, 'Mr. Kane Lemke Jr.', '19081 Jacquelyn Mews Suite 742', 'thurman72@example.com'),
(765, 'Friedrich Heathcote', '02290 Hagenes Union', 'nathan00@example.org'),
(766, 'Ruthe Bergstrom', '94950 Lonzo Fields', 'perdman@example.net'),
(767, 'Prof. Jenifer Sawayn', '216 Christiansen Skyway', 'helmer69@example.com'),
(768, 'Summer Bahringer', '980 Fidel Flat Suite 467', 'schmeler.carlo@example.com'),
(769, 'Kailey Waelchi', '64506 Diego Points', 'zhoppe@example.com'),
(770, 'Oswaldo Labadie', '34006 Rowan Manor Apt. 589', 'hyatt.rosemary@example.net'),
(771, 'Mr. Jameson Leannon', '053 O\'Kon Parks', 'ylarkin@example.net'),
(772, 'Dr. Tamia Bergstrom', '11573 Hane Vista', 'howard01@example.org'),
(773, 'Murphy Bradtke', '010 Stark Ports Apt. 897', 'eloisa.o\'conner@example.org'),
(774, 'Chelsea Dickinson', '82268 Christophe Pine', 'giuseppe.moen@example.org'),
(775, 'Romaine Block IV', '2031 Andy Lock', 'dickens.nicola@example.net'),
(776, 'Prof. Ibrahim Hettinger II', '784 Bednar Walk', 'mlowe@example.org'),
(777, 'Fabiola Metz', '961 Odessa Passage', 'melba12@example.org'),
(778, 'Dr. Adam Kutch', '185 Antonetta Road', 'ryann.jaskolski@example.org'),
(779, 'Prof. Darlene Watsica', '7825 Flatley Bypass', 'krystina02@example.org'),
(780, 'Dr. Raymundo Hills', '132 Esmeralda Tunnel Apt. 699', 'xcruickshank@example.net'),
(781, 'Sanford Brown', '743 Haley Light Apt. 907', 'fay.jewel@example.net'),
(782, 'Prof. Gia Franecki Jr.', '7641 Kerluke Garden Apt. 446', 'mueller.tevin@example.com'),
(783, 'Prof. Belle Kling IV', '637 Noel Mall', 'westley05@example.com'),
(784, 'Lloyd Kub', '9896 Swaniawski Crossroad', 'rconnelly@example.net'),
(785, 'Steve Feest', '158 Samson Underpass Suite 209', 'araceli.daniel@example.net'),
(786, 'Wellington Kling', '082 Paucek Tunnel', 'qgerlach@example.org'),
(787, 'Durward Watsica', '260 Lockman Knoll Suite 862', 'lennie63@example.org'),
(788, 'Kaci Hagenes V', '763 Watsica Burgs Apt. 271', 'cecile34@example.org'),
(789, 'Bennett McClure', '5972 Ryleigh Stream Apt. 726', 'brad.halvorson@example.com'),
(790, 'Terence Becker', '454 Kadin Highway Apt. 666', 'gottlieb.boyd@example.net'),
(791, 'Uriel Hahn', '424 Lamar Orchard', 'ccassin@example.net'),
(792, 'Carlie Johns', '590 Welch Divide', 'darren.daniel@example.net'),
(793, 'Valentine Bayer', '42250 Juvenal Mount', 'herta.lind@example.com'),
(794, 'Lydia Leffler', '040 Zemlak Islands', 'geffertz@example.com'),
(795, 'Mr. Gay Kuhn', '49355 Wiley Walk Suite 717', 'lisette.kuphal@example.net'),
(796, 'Rachel Schmidt PhD', '064 Freda Meadows Suite 616', 'little.elisa@example.com'),
(797, 'Jaclyn Bauch MD', '6674 Kutch Lake Apt. 870', 'abbott.zora@example.com'),
(798, 'Keely Ebert', '89826 Raynor Inlet', 'germaine42@example.com'),
(799, 'Dr. Alphonso Lebsack', '41533 Stark Parks', 'carmela.morar@example.net'),
(800, 'Georgiana Schoen', '2171 Barton Pines', 'isabelle.lueilwitz@example.org'),
(801, 'Mia Beahan', '211 Adrien Fields', 'saul17@example.net'),
(802, 'Rodolfo Schowalter', '743 Eleonore Curve', 'ihammes@example.com'),
(803, 'Ethel Sipes', '0115 Tanner Oval', 'keenan42@example.com'),
(804, 'Shea Reichert', '513 Raina Club Suite 188', 'luna94@example.org'),
(805, 'General Dickens', '142 Pfeffer Coves', 'alexys.o\'keefe@example.org'),
(806, 'Miss Ila Stracke', '491 Daugherty Trafficway', 'dee.rosenbaum@example.com'),
(807, 'Aric Krajcik', '946 Hahn Parkways', 'nolan.hirthe@example.net'),
(808, 'Dr. Ettie Pouros', '075 Langosh Fields', 'erick66@example.net'),
(809, 'Dr. Jasmin Huel DDS', '2712 Kaylie Extension', 'jazmin.gislason@example.com'),
(810, 'Marge Collier', '922 Grant Drive', 'greenholt.hortense@example.org'),
(811, 'Brock Hodkiewicz', '612 Goyette Rest Apt. 170', 'torp.vincenza@example.net'),
(812, 'Tobin Schinner', '23243 Beahan Highway Apt. 745', 'hudson.madeline@example.net'),
(813, 'Miss Deja Schroeder III', '14173 Murray Prairie', 'walker.schmidt@example.net'),
(814, 'Serenity Borer', '40228 Maritza Stream Apt. 013', 'ebarton@example.net'),
(815, 'Arch Schroeder', '05838 Warren Islands', 'neoma34@example.org'),
(816, 'Einar Lang', '2085 Hermann Locks', 'bayer.americo@example.org'),
(817, 'Prof. Aidan Zboncak I', '64120 Khalid Dale Suite 662', 'ritchie.alexandre@example.net'),
(818, 'Prof. Mauricio Jaskolski DVM', '363 Rosalinda Course', 'brandy00@example.com'),
(819, 'Arlie Bailey Sr.', '819 Karson Row Apt. 253', 'augustine20@example.org'),
(820, 'Miss Addie Davis', '7175 Crooks Lake', 'ykuhn@example.com'),
(821, 'Prof. Declan Senger', '0886 Wisozk Radial', 'sauer.cletus@example.net'),
(822, 'Araceli Flatley', '184 Rolfson Plaza Suite 197', 'jadon09@example.net'),
(823, 'Arvid Lowe', '39844 Israel Valleys', 'jlang@example.com'),
(824, 'Billie Conroy', '983 Eichmann Summit Suite 421', 'lucile91@example.org'),
(825, 'Clemmie Abbott', '392 Bartell Stream Suite 552', 'harry55@example.com'),
(826, 'Mr. Khalil Hand', '800 Walter Rue', 'amparo.heller@example.net'),
(827, 'Alva Gutmann', '6002 Arielle Village', 'murazik.lorenzo@example.com'),
(828, 'Raoul Homenick', '50285 Nikolaus Spurs', 'keely.littel@example.org'),
(829, 'Candice Friesen', '647 Turcotte Walk', 'co\'hara@example.net'),
(830, 'Jaydon Will', '854 Blanda Dale Apt. 512', 'edgardo.rowe@example.net'),
(831, 'Jamal Sipes V', '88767 Nyah Fork', 'alene34@example.net'),
(832, 'Mr. Doug Brakus Sr.', '11428 Loren Court Apt. 690', 'owalsh@example.net'),
(833, 'Alejandra Murray Jr.', '994 Raina Inlet Apt. 049', 'jewell10@example.org'),
(834, 'Randal Bednar', '82654 Andre Burgs', 'carmelo63@example.net'),
(835, 'Lina Cruickshank', '598 Clair Keys Suite 153', 'jolie42@example.org'),
(836, 'Pierre Bradtke IV', '003 Terence Ville', 'sawayn.stephan@example.org'),
(837, 'Krystal Graham', '250 Brandon Row Apt. 142', 'xabernathy@example.com'),
(838, 'Raegan Schiller Jr.', '5373 Waters Estates Suite 119', 'kailey29@example.com'),
(839, 'Kiarra Kling', '150 Constance River Apt. 156', 'lgutmann@example.net'),
(840, 'Jody Donnelly DVM', '547 Hermiston Extensions', 'ztreutel@example.org'),
(841, 'Dr. Bradly Hills PhD', '5035 Pat Lock Apt. 995', 'rwunsch@example.com'),
(842, 'Dr. Barry Gerlach V', '1961 Friesen Overpass Suite 188', 'fay.tracy@example.org'),
(843, 'Mr. Joaquin Ratke DDS', '2325 Dibbert Orchard', 'gisselle.feest@example.com'),
(844, 'Nelda Powlowski', '97088 Dulce Crest', 'devonte52@example.net'),
(845, 'Donato Cartwright', '20972 Klocko Shores', 'mclaughlin.nathaniel@example.net'),
(846, 'Ms. Della Krajcik MD', '9301 Marty Squares Apt. 950', 'greenfelder.hailey@example.com'),
(847, 'Dr. Laverna Schamberger Jr.', '70786 Gutmann Prairie Suite 572', 'abbott.rhianna@example.com'),
(848, 'Mrs. Otilia Weber', '77341 Claude Point', 'mterry@example.net'),
(849, 'Braxton Reichert DVM', '03951 Lauren Cove Apt. 803', 'scotty48@example.org'),
(850, 'Dr. Everette Miller', '2984 Abbigail Via Suite 850', 'elynch@example.net'),
(851, 'Dedric Daugherty', '40887 Rosanna Street Apt. 024', 'grippin@example.org'),
(852, 'Priscilla Pouros II', '52089 Greenfelder Trail Apt. 083', 'enrique.murray@example.net'),
(853, 'Helene Ward II', '7767 Glover Garden', 'rcrooks@example.com'),
(854, 'Lucinda Thiel', '40450 Schaden Village Apt. 071', 'maximillian.harris@example.org'),
(855, 'Gia Marquardt', '3542 Wisozk Plains', 'pschuppe@example.com'),
(856, 'Frankie Kertzmann', '583 Odie Ridge Apt. 586', 'feil.wade@example.org'),
(857, 'Prof. Diana Durgan', '644 Cathy Avenue Suite 720', 'norris42@example.org'),
(858, 'Mr. Adriel Barton DDS', '64633 Kelsie Crescent', 'lori62@example.net'),
(859, 'Porter Kshlerin', '07104 Ankunding Springs Suite 137', 'abigale.osinski@example.net'),
(860, 'Friedrich Bauch', '9877 Skiles Port Apt. 866', 'elinore.ebert@example.com'),
(861, 'Simeon Schaden IV', '6904 Strosin Forge Apt. 801', 'isadore14@example.org'),
(862, 'Leila Stoltenberg', '3091 Aimee Underpass Suite 811', 'simeon81@example.com'),
(863, 'Taya O\'Reilly', '5110 Kristoffer Dale Suite 519', 'coleman.cartwright@example.com'),
(864, 'Presley Hand I', '521 Jones Spurs', 'smith.savion@example.com'),
(865, 'Nicola Ortiz', '944 Darwin Key Suite 916', 'o\'kon.bernardo@example.com'),
(866, 'Selina Predovic', '07078 Breanne Burg', 'nwelch@example.org'),
(867, 'Janis Macejkovic', '991 Litzy Roads', 'lexi81@example.org'),
(868, 'Cordie Walker', '68457 Kozey Points', 'howe.jennifer@example.com'),
(869, 'Dr. Perry Wiegand PhD', '6121 Mosciski Springs Suite 297', 'levi31@example.org'),
(870, 'Mr. Mack Zboncak Jr.', '54733 Dulce Court', 'hirthe.d\'angelo@example.net'),
(871, 'Ms. Cynthia Streich Sr.', '816 Eulah Well', 'koch.retta@example.org'),
(872, 'Elouise Cartwright', '754 Alexzander Center', 'destinee.auer@example.net'),
(873, 'Ophelia Christiansen', '127 Adams Shores Apt. 337', 'edna56@example.net'),
(874, 'Ashton Collier', '440 Ankunding Mount Suite 970', 'kabshire@example.org'),
(875, 'Dr. Brayan Lynch', '27252 Mohr Camp', 'kris.kaela@example.net'),
(876, 'Mr. Rogelio Brekke', '6998 Rashawn Manor', 'altenwerth.beaulah@example.com'),
(877, 'Lillie Mosciski', '589 Wilkinson Ramp Suite 885', 'ottis.schuppe@example.com'),
(878, 'Allene Baumbach', '56276 Elmer Glen Suite 230', 'bosco.marlon@example.org'),
(879, 'Roy Crooks', '299 Lilliana Lock', 'tanner41@example.net'),
(880, 'Trenton O\'Conner PhD', '5914 Schuster Glens Suite 606', 'desmond.halvorson@example.org'),
(881, 'Angelina Prosacco', '853 Torp Dale Apt. 517', 'ila.bahringer@example.com'),
(882, 'Dr. Aniya Kautzer DVM', '2271 Beatty Courts', 'schaden.krista@example.com'),
(883, 'Prof. Helen Nikolaus Jr.', '342 Gleichner Trace', 'walsh.griffin@example.org'),
(884, 'Mrs. Haylee Koch', '835 Amos Overpass', 'jacobi.dave@example.org'),
(885, 'Dennis Herzog DVM', '4861 DuBuque Lakes', 'derrick87@example.com'),
(886, 'Dr. Brionna Kertzmann', '817 DuBuque Curve Apt. 893', 'justus.johns@example.org'),
(887, 'Dr. Kellen Effertz Sr.', '07571 West Key', 'hershel00@example.net'),
(888, 'Dr. Pietro Kessler I', '7914 Elisa Well Apt. 371', 'kane.fadel@example.com'),
(889, 'Soledad Johnson', '360 Fahey Ford Apt. 488', 'jakayla18@example.com'),
(890, 'Nelson Hansen', '5523 Schimmel Estate', 'ukirlin@example.org'),
(891, 'Chet Gibson II', '0380 Louisa Forks', 'mledner@example.org'),
(892, 'Dr. Jewell Lockman Sr.', '930 Maritza Burg Suite 850', 'cassandra63@example.org'),
(893, 'Mr. Dee Bashirian III', '55965 Yost Ranch Suite 291', 'dayne28@example.net'),
(894, 'Ian Littel', '2524 Pfannerstill Drive', 'zieme.gage@example.org'),
(895, 'Leonie Hilll', '536 Aylin Junctions Suite 553', 'talia.pfeffer@example.net'),
(896, 'Prof. Hector Lesch V', '2311 Hermann Shore', 'beer.kacie@example.net'),
(897, 'Dr. Hulda Murphy MD', '025 Moen Ranch Apt. 119', 'sipes.alberto@example.org'),
(898, 'Norbert Lakin', '105 Romaguera Fort', 'pamela58@example.org'),
(899, 'Patsy Gerlach', '16377 Larson Mountains', 'wswift@example.org'),
(900, 'Maximillia Leannon', '65015 Modesto Fords Suite 181', 'akilback@example.net'),
(901, 'Demetris Mills', '037 Kirlin Land', 'marcelina.hane@example.org'),
(902, 'Granville Rempel', '3022 Gwen Expressway', 'polly.walker@example.net'),
(903, 'Prof. Olga Funk Sr.', '37655 Mabelle Park Suite 778', 'ufeeney@example.net'),
(904, 'Orpha Jacobi', '8663 Madyson Inlet', 'lmurray@example.net'),
(905, 'Alena Larson', '98323 Dickinson Cliff', 'malvina.grimes@example.org'),
(906, 'Amina Graham', '603 Marks Villages', 'kuphal.tianna@example.com'),
(907, 'Prof. Arvid Zemlak II', '5747 Penelope Streets Apt. 674', 'dario40@example.com'),
(908, 'Ursula Jerde', '5222 Kreiger Isle Suite 731', 'mckenzie92@example.net'),
(909, 'Rhett Wuckert', '2774 Ortiz Spring Apt. 714', 'alysson.dickinson@example.net'),
(910, 'Prof. Tobin Leffler', '431 Zieme Summit', 'layla74@example.net'),
(911, 'Caesar Homenick', '23466 Jarrett Divide Suite 963', 'iblock@example.net'),
(912, 'Manuela Rogahn', '645 Hartmann Common', 'myrtis.franecki@example.org'),
(913, 'Ramona Batz PhD', '606 Muller Keys', 'sandy.cronin@example.org'),
(914, 'Edmund Barrows', '86067 Cronin Crossing Suite 441', 'lorenz.goldner@example.net'),
(915, 'Waldo Hoppe', '11129 Lane Via', 'sporer.german@example.com'),
(916, 'Justus Marks', '184 Runte Rest Suite 766', 'lilliana37@example.org'),
(917, 'Stanton Schuppe', '94527 Jast Tunnel Apt. 330', 'ludie.hermann@example.net'),
(918, 'Alyson Rodriguez', '77638 Ophelia Isle Suite 743', 'josue51@example.org'),
(919, 'Miss Ozella Lowe', '4975 Klocko Rue', 'gislason.everett@example.net'),
(920, 'Mrs. Kasey Jacobson', '97959 Hand Point', 'brycen.emard@example.org'),
(921, 'Justina Kertzmann', '624 Hintz Haven', 'slarkin@example.org'),
(922, 'Ms. Sandy Larson DVM', '69202 Deckow Place Apt. 009', 'elda.lynch@example.com'),
(923, 'Lenora Cremin', '9067 Demarcus Forks', 'yokuneva@example.net'),
(924, 'Miss Janiya Wolf DDS', '328 Aisha Springs', 'rwintheiser@example.net'),
(925, 'Mauricio Abernathy', '7927 Heller Pines Apt. 428', 'joelle98@example.com'),
(926, 'Elmo Armstrong', '174 Rutherford Burgs Suite 216', 'kasey.hodkiewicz@example.net'),
(927, 'Mrs. Florence Kilback PhD', '52672 Liza Green Apt. 807', 'carter.agustin@example.org'),
(928, 'Dr. Granville Lindgren II', '100 Harber Harbor Suite 025', 'fboyle@example.com'),
(929, 'Mr. Jeromy Lemke DVM', '5064 Schmidt Motorway', 'crona.shania@example.net'),
(930, 'Miller Orn', '8922 Murphy Squares Suite 510', 'ofeil@example.org'),
(931, 'Alison Becker', '025 Spencer Villages', 'sonia.hamill@example.net'),
(932, 'Mckayla Vandervort', '603 Walsh Corners Apt. 088', 'zsmitham@example.org'),
(933, 'Bennett Tillman', '5972 Baumbach Islands Suite 207', 'dannie.littel@example.com'),
(934, 'Murl Okuneva', '42673 Monahan Summit', 'dwilliamson@example.com'),
(935, 'Mrs. Krystina Hammes', '808 Josianne Divide', 'justus.kohler@example.net'),
(936, 'Darwin Goyette IV', '769 Thompson Unions', 'amacejkovic@example.net'),
(937, 'Shyann Hudson', '565 Fausto Mountains Apt. 709', 'cummerata.zane@example.com'),
(938, 'Bonnie Wyman', '733 Towne Hill', 'claudia34@example.net'),
(939, 'Nicholaus Hintz IV', '87615 Lowe Courts', 'era05@example.com'),
(940, 'Makenna Bayer', '32979 Josefina Falls Apt. 319', 'torphy.priscilla@example.net'),
(941, 'Mrs. Katelyn Wisoky', '87024 Lenna Rue Suite 106', 'pgraham@example.net'),
(942, 'Stephanie Predovic', '5134 Eleanore Brook Suite 051', 'gdouglas@example.net'),
(943, 'Jarrell Bartell', '7079 Mariela Village Suite 487', 'glen.cronin@example.org'),
(944, 'Joaquin Mohr', '76812 Eleanore Burgs', 'shawna33@example.net'),
(945, 'Amina Rowe', '791 Moen Burgs Suite 962', 'breana.little@example.net'),
(946, 'Elton Corkery', '24869 Turner Views', 'krystal.johnston@example.com'),
(947, 'Enrico Treutel', '30351 Drew Drives', 'fgutkowski@example.net'),
(948, 'Hobart Ritchie', '97278 Laney Route Suite 036', 'ziemann.pearl@example.net'),
(949, 'Sincere Daniel I', '71951 Sibyl Square', 'ymcdermott@example.com'),
(950, 'Tyrell Collier', '5737 Evan Rest', 'wunsch.amira@example.net'),
(951, 'Creola Pagac', '110 Stiedemann Park Suite 443', 'brakus.eriberto@example.org'),
(952, 'Keaton Rath', '81511 Orpha Union', 'yebert@example.net'),
(953, 'Stephanie Beier Sr.', '98108 Williamson Mills', 'grady.mckayla@example.net'),
(954, 'Kirsten Satterfield', '406 Runolfsdottir View Apt. 021', 'qjacobs@example.net'),
(955, 'Mrs. Vivianne Collins PhD', '7061 Hilll Islands', 'matteo.lueilwitz@example.org'),
(956, 'Hosea Ankunding DDS', '1910 Kertzmann Walk Suite 269', 'volkman.tiara@example.com'),
(957, 'Miss Josianne Bogan', '851 Kihn Heights', 'soledad.barton@example.net'),
(958, 'Mrs. Amelia Fahey II', '63965 Judge Divide Apt. 073', 'andre28@example.net'),
(959, 'Wilhelmine Homenick', '58819 Jacobson Common', 'gregoria07@example.org'),
(960, 'Jeramy Lebsack', '77794 Joshua Field', 'casper.adah@example.org'),
(961, 'Miss Lizzie Satterfield', '671 Brittany Trail Apt. 731', 'bhalvorson@example.org'),
(962, 'Dr. Terrance Moore Jr.', '47859 Paolo Corner', 'bradtke.dawn@example.net'),
(963, 'Emmanuel Sawayn', '640 Donnelly Cove', 'erik.carter@example.org'),
(964, 'Brionna Ferry Sr.', '00485 Reichert Villages Apt. 179', 'casey.kuphal@example.net'),
(965, 'Elmer Parisian', '385 Clementina Shoals', 'hnicolas@example.net'),
(966, 'Garland McClure', '2290 Hulda Lane Apt. 233', 'leann.klein@example.net'),
(967, 'Hilda Fay', '21202 Amber Forest', 'jackeline.volkman@example.com'),
(968, 'Desiree Bergstrom', '4538 Bridget Junctions', 'ernesto.koepp@example.net'),
(969, 'Jovany Williamson V', '0793 Willms Lodge', 'pbalistreri@example.net'),
(970, 'Brock Pfeffer', '81195 Rylan Forge Suite 410', 'jmarquardt@example.org'),
(971, 'Angeline Nienow', '5191 Gilberto Circle Suite 058', 'reymundo31@example.com'),
(972, 'Kayla Emmerich', '728 Grimes Track Suite 901', 'rippin.cathy@example.net'),
(973, 'Ms. Gladyce Schuster', '47142 Lurline Village', 'darrion39@example.net'),
(974, 'Marcos Renner', '4604 Dicki Prairie Apt. 920', 'wellington34@example.net'),
(975, 'Zula Lemke Jr.', '1381 Wunsch Crossroad', 'bbernier@example.net'),
(976, 'Mr. Alexie Abshire', '8999 Beer Shoal', 'meffertz@example.org'),
(977, 'Prof. Orlando Simonis MD', '3854 Adriana Street Suite 587', 'lyla11@example.net'),
(978, 'Mrs. Clotilde Davis III', '800 Ursula Pines', 'ambrose29@example.com'),
(979, 'Laurie Deckow DVM', '5963 Kuhn Greens Suite 099', 'kskiles@example.com'),
(980, 'Amy Wilkinson', '21023 Alek Junction', 'rubie23@example.org'),
(981, 'Dr. Antoinette Doyle DVM', '2380 Tobin Village', 'glover.nathan@example.com'),
(982, 'Destany Cummerata', '94158 Serena Forest', 'jamaal55@example.com'),
(983, 'Lenora Watsica Jr.', '43214 Koss Glen', 'louvenia16@example.org'),
(984, 'Alejandrin Pagac', '8963 Camden Passage Apt. 872', 'yfeil@example.org'),
(985, 'Prof. Vivien West', '5135 Maggio Heights', 'sylvan75@example.org'),
(986, 'Nick Sanford', '43698 Alberta Harbor', 'gerhard65@example.com'),
(987, 'Hosea Schulist', '69452 Hessel Place Suite 356', 'adell60@example.com'),
(988, 'Retta Lang', '7401 Weber Wells', 'clotilde26@example.com'),
(989, 'Benedict Jacobi', '975 Katheryn Hills Apt. 834', 'mac.flatley@example.net'),
(990, 'Deven Parker', '86720 Pollich Wells', 'micah.orn@example.org'),
(991, 'Alfonso Lang', '1140 Eddie Plaza Apt. 711', 'amaya19@example.com'),
(992, 'Jessie Zemlak', '61616 Randi Rapid', 'lebsack.jennings@example.net'),
(993, 'Ms. Dolly Murray', '576 Trisha Extension Apt. 199', 'marilyne.rogahn@example.org'),
(994, 'Verna Howell', '89080 Natalie Cliff', 'kiel71@example.com'),
(995, 'Audra Rolfson', '43565 Garfield Mall Apt. 486', 'dickens.jamar@example.net'),
(996, 'Ashleigh Morissette I', '5452 Hackett Light Apt. 250', 'herman.josiah@example.net'),
(997, 'Briana Turner', '322 Hills Forest Suite 197', 'lester96@example.org'),
(998, 'Bernadine Friesen', '20523 Raynor Way Apt. 508', 'ywolff@example.org'),
(999, 'Gayle Eichmann', '313 Jerde Square Suite 496', 'vonrueden.elizabeth@example.net'),
(1000, 'Prof. Lexi Brekke', '1862 Carroll Underpass', 'wyatt.lowe@example.org');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `peoples`
--
ALTER TABLE `peoples`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `peoples`
--
ALTER TABLE `peoples`
  MODIFY `id` int(9) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1001;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Dumping data for table `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"angular_direct\":\"direct\",\"relation_lines\":\"true\",\"snap_to_grid\":\"off\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

--
-- Dumping data for table `pma__navigationhiding`
--

INSERT INTO `pma__navigationhiding` (`username`, `item_name`, `item_type`, `db_name`, `table_name`) VALUES
('root', 'user', 'table', 'jaenudin', ''),
('root', 'user', 'table', 'wpu_login', '');

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"wpu_login\",\"table\":\"barang1\"},{\"db\":\"wpu_login\",\"table\":\"barang\"},{\"db\":\"berita_terkini\",\"table\":\"berita\"},{\"db\":\"lentera\",\"table\":\"user\"},{\"db\":\"lentera\",\"table\":\"invoice\"},{\"db\":\"lentera\",\"table\":\"pesanan\"},{\"db\":\"wpu_login\",\"table\":\"guest_book\"},{\"db\":\"wpu_login\",\"table\":\"user_sub_menu\"},{\"db\":\"wpu_login\",\"table\":\"user_access_menu\"},{\"db\":\"wpu_login\",\"table\":\"user_menu\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

--
-- Dumping data for table `pma__table_info`
--

INSERT INTO `pma__table_info` (`db_name`, `table_name`, `display_field`) VALUES
('myshop', 'products', 'product_title');

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'wpu_login', 'user_access_menu', '{\"sorted_col\":\"`user_access_menu`.`menu_id` ASC\"}', '2019-04-27 12:12:15');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2019-12-28 05:57:04', '{\"Console\\/Mode\":\"show\",\"Console\\/Height\":0,\"NavigationWidth\":230}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `portal_berita`
--
CREATE DATABASE IF NOT EXISTS `portal_berita` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `portal_berita`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama_lengkap` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `nama_lengkap`) VALUES
(1, 'yogi123', '202cb962ac59075b964b07152d234b70', 'Yogi Prayogi');

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `id_anggota` int(11) NOT NULL,
  `nama_lengkap` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(40) NOT NULL,
  `aktif` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`id_anggota`, `nama_lengkap`, `password`, `email`, `aktif`) VALUES
(1, 'Ahmad Firdaus', '202cb962ac59075b964b07152d234b70', 'firdaus@gmail.com', b'1'),
(3, 'gie', '202cb962ac59075b964b07152d234b70', 'gie.hermawan@gmail.com', b'1'),
(4, '', '', '', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(11) NOT NULL,
  `judul` varchar(70) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `gambar` varchar(70) NOT NULL,
  `teks_berita` text NOT NULL,
  `tgl_posting` datetime NOT NULL,
  `id_admin` int(11) NOT NULL,
  `dilihat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `judul`, `id_kategori`, `gambar`, `teks_berita`, `tgl_posting`, `id_admin`, `dilihat`) VALUES
(1, 'ini adalah judul berita yang pertama', 1, '4ferrari458.jpg', 'ini adalah text berita paragraf pertama\r\n\r\nini adalah paragraf berita yang kedua', '2015-08-10 08:35:27', 1, 4),
(2, 'ini adalah judul berita yang ke-dua', 2, '4bukukecil.jpg', 'ini judul berita kedua, paragraf pertama\r\n\r\nini adalah judul berita pargraf kedua', '2015-08-16 10:28:31', 1, 23),
(3, 'ini adalah judul berita yang ketiga', 3, 'efel.jpg', 'teks berita yang ke-tiga, paragraf pertama.\r\n\r\nteks berita', '2015-08-03 17:25:43', 1, 12),
(5, 'Maju Bersama Mencerdaskan Bangsa', 1, 'logo.jpg', 'Maju bersama mencerdaskan bangsa\r\n', '2015-08-09 15:55:04', 1, 18);

-- --------------------------------------------------------

--
-- Table structure for table `iklan`
--

CREATE TABLE `iklan` (
  `id_iklan` int(11) NOT NULL,
  `nm_perusahaan` varchar(50) NOT NULL,
  `isi_iklan` varchar(200) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_akhir` date NOT NULL,
  `id_admin` int(11) NOT NULL,
  `hargasewa` double NOT NULL,
  `lamasewa` int(11) NOT NULL,
  `totalharga` double NOT NULL,
  `aktif` bit(1) NOT NULL,
  `email` varchar(50) NOT NULL,
  `link` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `iklan`
--

INSERT INTO `iklan` (`id_iklan`, `nm_perusahaan`, `isi_iklan`, `gambar`, `tgl_mulai`, `tgl_akhir`, `id_admin`, `hargasewa`, `lamasewa`, `totalharga`, `aktif`, `email`, `link`) VALUES
(1, 'elex', 'Koleksi Buku Terlengkap', 'iklan1.jpg', '2015-08-16', '2015-08-17', 2, 15000, 1, 3000, b'1', 'mail@elex.com', 'http://elexbuku.com'),
(6, 'BSI', 'kuliah ???. BSI aja !!!', 'logobsi.jpg', '2015-08-16', '2015-08-17', 1, 2000, 2, 4000, b'1', 'kampus@bsi.ac.id', 'http://www.bsi.ac.id'),
(7, 'oke', 'ss', '', '2015-08-09', '2015-08-09', 0, 0, 0, 0, b'1', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `kategori` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `kategori`) VALUES
(1, 'nasional'),
(2, 'olah raga'),
(3, 'teknologi');

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `id_komentar` int(11) NOT NULL,
  `id_berita` int(11) NOT NULL,
  `id_anggota` int(11) NOT NULL,
  `tgl_komentar` datetime NOT NULL,
  `isi_komentar` text NOT NULL,
  `ip_address` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `komentar`
--

INSERT INTO `komentar` (`id_komentar`, `id_berita`, `id_anggota`, `tgl_komentar`, `isi_komentar`, `ip_address`) VALUES
(1, 0, 3, '2015-08-09 09:40:34', 'mantap cooy', '127.0.0.1'),
(2, 2, 3, '2015-08-09 09:41:58', 'oke', '127.0.0.1'),
(3, 2, 3, '2015-08-09 09:42:06', 'Mantap', '127.0.0.1'),
(4, 2, 3, '2015-08-09 09:43:53', 'sip\r\n', '127.0.0.1'),
(5, 1, 3, '2015-08-09 09:45:59', 'oke mantap', '127.0.0.1'),
(6, 5, 3, '2015-08-16 10:27:19', 'wow, kereenn', '127.0.0.1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `iklan`
--
ALTER TABLE `iklan`
  ADD PRIMARY KEY (`id_iklan`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id_komentar`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id_anggota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `iklan`
--
ALTER TABLE `iklan`
  MODIFY `id_iklan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_komentar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Database: `sia_sekolahdb`
--
CREATE DATABASE IF NOT EXISTS `sia_sekolahdb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sia_sekolahdb`;

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `kode_guru` char(5) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `nama_guru` varchar(100) NOT NULL,
  `kelamin` varchar(10) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `no_telepon` varchar(20) NOT NULL,
  `status_aktif` enum('Aktif','Tidak') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`kode_guru`, `nip`, `nama_guru`, `kelamin`, `alamat`, `no_telepon`, `status_aktif`) VALUES
('G0001', '201200001', 'Indah Indriyanna', 'Perempuan', 'Jl. Janti, Agen JNE, Karang Jambe, Yogyakarta', '081911111111', 'Aktif'),
('G0002', '201200002', 'Sulistiyowati', 'Perempuan', 'Jl. Suhada, Labuhan Ratu 1, Way Jepara, Lampung Timur 2', '08522211100011', 'Tidak'),
('G0003', '201200003', 'Juwanto', 'Laki-laki', 'Jl. Manggarawan, Labuhan Ratu 5 Way Jepara', '0819111122223', 'Aktif'),
('G0004', '201200004', 'Nano Hendrawan', 'Laki-laki', 'Jl. Margahayu, Labuhan Ratu Baru, Way Jepara, Lampung Timur', '08191111111222', 'Aktif'),
('G0005', '201200005', 'Fitria Prasetiawati', 'Perempuan', 'Jl. Parangtritis, 123, Bantulan, Yogyakarta', '08191818181818', 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `kode_kelas` char(4) NOT NULL,
  `tahun_ajar` varchar(12) NOT NULL,
  `kelas` char(2) NOT NULL,
  `nama_kelas` varchar(20) NOT NULL,
  `kode_guru` char(5) NOT NULL,
  `status_aktif` enum('Aktif','Tidak Aktif') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`kode_kelas`, `tahun_ajar`, `kelas`, `nama_kelas`, `kode_guru`, `status_aktif`) VALUES
('K001', '2014/2015', 'X', 'Kelas A', 'G0001', 'Aktif'),
('K002', '2014/2015', 'X', 'Kelas B', 'G0005', 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `kelas_siswa`
--

CREATE TABLE `kelas_siswa` (
  `id` int(5) NOT NULL,
  `kode_kelas` char(4) NOT NULL,
  `kode_siswa` char(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas_siswa`
--

INSERT INTO `kelas_siswa` (`id`, `kode_kelas`, `kode_siswa`) VALUES
(1, 'K001', 'S0001'),
(2, 'K001', 'S0002'),
(3, 'K001', 'S0003'),
(4, 'K001', 'S0004'),
(5, 'K001', 'S0006'),
(12, 'K002', 'S0010'),
(7, 'K002', 'S0008'),
(8, 'K002', 'S0009'),
(11, 'K002', 'S0007'),
(13, 'K002', 'S0005');

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `id` int(5) NOT NULL,
  `semester` int(2) NOT NULL,
  `kode_pelajaran` char(4) NOT NULL,
  `kode_guru` char(5) NOT NULL,
  `kode_kelas` char(4) NOT NULL,
  `kode_siswa` char(5) NOT NULL,
  `nilai_tugas1` int(4) NOT NULL,
  `nilai_tugas2` int(4) NOT NULL,
  `nilai_uts` int(4) NOT NULL,
  `nilai_uas` int(4) NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`id`, `semester`, `kode_pelajaran`, `kode_guru`, `kode_kelas`, `kode_siswa`, `nilai_tugas1`, `nilai_tugas2`, `nilai_uts`, `nilai_uas`, `keterangan`) VALUES
(1, 1, 'P001', 'G0001', 'K001', 'S0001', 74, 75, 80, 85, 'lebih giat belajar'),
(3, 1, 'P001', 'G0002', 'K001', 'S0002', 75, 60, 80, 80, 'tingkatkan belajarnya'),
(4, 1, 'P001', 'G0003', 'K001', 'S0003', 70, 60, 75, 80, 'tingkatkan belajarnya'),
(5, 1, 'P001', 'G0004', 'K001', 'S0004', 75, 80, 75, 80, 'tingkatkan belajarnya'),
(6, 1, 'P001', 'G0005', 'K001', 'S0006', 68, 70, 85, 80, 'tingkatkan belajarnya terus'),
(7, 1, 'P001', 'G0001', 'K002', 'S0007', 70, 70, 75, 79, 'belajar terus'),
(8, 1, 'P001', 'G0002', 'K002', 'S0010', 78, 80, 75, 85, 'belajar terus'),
(9, 1, 'P001', 'G0002', 'K002', 'S0009', 78, 80, 75, 80, 'belajar terus ya'),
(10, 1, 'P001', 'G0002', 'K002', 'S0008', 85, 80, 85, 90, 'pertahankan belajarmu'),
(11, 1, 'P001', 'G0002', 'K002', 'S0005', 75, 70, 75, 80, 'kurang rajib belajar');

-- --------------------------------------------------------

--
-- Table structure for table `pelajaran`
--

CREATE TABLE `pelajaran` (
  `kode_pelajaran` char(4) NOT NULL,
  `nama_pelajaran` varchar(100) NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelajaran`
--

INSERT INTO `pelajaran` (`kode_pelajaran`, `nama_pelajaran`, `keterangan`) VALUES
('P001', 'Pendidikan Agama', 'Wajib'),
('P002', 'Pendidikan Pancasila dan Kewarganegaraan', 'Wajib'),
('P003', 'Bahasa Indonesia', 'Wajib'),
('P004', 'Bahasa Inggris', 'Wajib'),
('P005', 'Matematika', 'Wajib'),
('P006', 'Sejarah Indonesia', 'Wajib'),
('P007', 'Bahasa dan Sastra Inggris', 'Wajib');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `kode_siswa` char(5) NOT NULL,
  `nis` varchar(20) NOT NULL,
  `nama_siswa` varchar(100) NOT NULL,
  `kelamin` varchar(20) NOT NULL,
  `agama` varchar(20) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `no_telepon` varchar(20) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `tahun_angkatan` char(4) NOT NULL,
  `status` enum('Aktif','Lulus','Keluar') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`kode_siswa`, `nis`, `nama_siswa`, `kelamin`, `agama`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `no_telepon`, `foto`, `tahun_angkatan`, `status`) VALUES
('S0001', '2014001', 'Sardi Sudrajad', 'Laki-laki', 'Islam', 'Way Jepara, Lampung Timur', '1991-02-21', 'Jl. Suhada, Labuhan Ratu 1, Way Jepara, Lampung Timur', '0857279911111', '', '2014', 'Aktif'),
('S0002', '2014002', 'Susiatun Paritun', 'Perempuan', 'Islam', 'Sukadana, Lampung Timur', '1991-03-20', 'Jl. Suhada, Labuhan Ratu 1, Way Jepara, Lampung Timur', '081911111112222', '', '2014', 'Aktif'),
('S0003', '2014003', 'Septi Suhesti', 'Perempuan', 'Islam', 'Way Jepara, Lampung Timur', '1990-07-12', 'Way Jepara, Lampung Timur', '08579833212211', 'S0003.Septi Suhesti.jpg', '2014', 'Aktif'),
('S0004', '2014004', 'Rizka Dwi Saputra', 'Laki-laki', 'Islam', 'Raman Aji, Lampung Timur', '1993-02-15', 'Raman utara, Lampung Timur', '085743990000811', 'S0004.Riska Dwiputra.jpg', '2014', 'Aktif'),
('S0005', '2014005', 'Subroto Roto', 'Laki-laki', 'Islam', 'Bandar Sribawono, Lampung Timur', '1990-10-21', 'Jl. Suhada, Way Jepara Lampung Timur', '08191234561111', '', '2014', 'Aktif'),
('S0006', '2014006', 'Gendon Marselo', 'Laki-laki', 'Islam', 'Yogyakarta', '1992-01-11', 'Jl. Janti, Agen JNE, Karang Jambe, Way Jepara, Lampung Timur', '0819282828211', '', '2014', 'Aktif'),
('S0007', '2014007', 'Jaenudin', 'Laki-laki', 'Islam', 'Bogor', '1991-01-09', 'JL taman patra v no 8', '083147195211', '', '2014', 'Aktif'),
('S0008', '2014008', 'Fitria Prasetia Wati', 'Laki-laki', 'Islam', 'Way Jepara, Lampung Timur', '1991-06-02', 'Jl. Pramuka, Labuhan Ratu 1, Way Jepara, Lampung Timur', '082122223333444', 'S0008.Fitria Prasetia Wati.jpg', '2014', 'Aktif'),
('S0009', '2014009', 'Gunawan Sitompul', 'Laki-laki', 'Kristen', 'Medan', '1990-06-14', 'Jl. Braja Indah, Way Jepara Lampung Timur', '085727998969111', '', '2014', 'Aktif'),
('S0010', '2014010', 'Evi Fatimah', 'Perempuan', 'Islam', 'Punggur', '1991-02-05', 'Jl. Braja Asri, Way Jepara Lampung Timur', '085727998969222', '', '2014', 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `kode_user` char(4) NOT NULL,
  `nama_user` varchar(100) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`kode_user`, `nama_user`, `username`, `password`) VALUES
('U001', 'Bunafit Nugroho', 'admin', '21232f297a57a5a743894a0e4a801fc3'),
('U002', 'Indah Indriyanna', 'indah', 'f3385c508ce54d577fd205a1b2ecdfb7'),
('U003', 'Fitria Prasetiawati', 'fitria', 'ef208a5dfcfc3ea9941d7a6c43841784');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`kode_guru`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`kode_kelas`);

--
-- Indexes for table `kelas_siswa`
--
ALTER TABLE `kelas_siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pelajaran`
--
ALTER TABLE `pelajaran`
  ADD PRIMARY KEY (`kode_pelajaran`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`kode_siswa`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`kode_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kelas_siswa`
--
ALTER TABLE `kelas_siswa`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `wpu_login`
--
CREATE DATABASE IF NOT EXISTS `wpu_login` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `wpu_login`;

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `date` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `time_out` varchar(12) NOT NULL,
  `time_in` varchar(12) NOT NULL,
  `driver` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `date`, `name`, `time_out`, `time_in`, `driver`) VALUES
(15, '2019-09-26', 'ibu rini', '23:57:36', 'SDG', 'Rizal'),
(16, '2019-07-05', 'Ibu Rini', '00:02:40', 'yui', 'Rizal'),
(17, '2019-07-24', 'Mas Yodha', '01:26:44', '-', 'Waluyo'),
(18, '2019-09-12', 'Ibu Rini', '09:08:52', '07:30', 'Rizal'),
(19, '2019-09-29', 'Ibu Rini', '11:34:21', '12;00', 'Rizal'),
(20, '2019-09-29', 'Mas Yodha', '11:37:10', '11:39:40', 'Waluyo'),
(21, '2019-09-30', 'Ibu Rini', '21:49:53', '21:50:03', 'Rizal'),
(22, '2019-09-30', 'Ibu Rini', '22:45:59', '-', 'Rizal'),
(23, '2019-09-30', 'Ibu Rini', '22:47:04', '-', 'Rizal'),
(24, '2019-09-30', 'Mas Yodha', '22:47:14', '14:23:07', 'Waluyo'),
(25, '2019-09-30', 'Mas Yodha ', '22:47:23', '10:01:10', 'Waluyo'),
(26, '2019-09-30', 'Mas Yodha', '22:53:49', '-', 'Waluyo'),
(27, '2019-11-10', 'Ibu Rini', '02:16:43', '02:19:14', 'Rizal'),
(28, '2019-11-10', 'Ibu Rini', '02:17:44', '14:22:55', 'Rizal'),
(29, '2019-11-10', 'Ibu Rini', '02:18:08', '02:18:23', 'Rizal');

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `jenis` varchar(30) NOT NULL,
  `pengirim` varchar(30) NOT NULL,
  `untuk` varchar(30) NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `tanggal`, `jenis`, `pengirim`, `untuk`, `keterangan`) VALUES
(56, '2019-09-28', 'paket', 'diffley dstore', 'yodha', 'makanan'),
(59, '2019-09-29', 'makan', 'biyan', 'ibu rini  ada', 'sfd'),
(64, '2019-10-07', 'paket', 'lazada', 'bu yuse y', ' baju'),
(65, '2019-10-07', 'dokumen biasa', 'wahyu (ob bumn)', 'ibu rini', 'dokumen dan barang ibu'),
(68, '2019-11-10', 'buku', 'gramedia', 'ibu rini', 'lima buku perjalanan bersama mentri BUMN'),
(69, '2019-11-20', 'surat', 'lala (salon)', 'ibu Ivanna', 'invoice'),
(70, '2019-11-20', 'surat', 'arief (rentokil)', 'ibu Ivanna', 'invoice'),
(71, '2019-11-20', 'majalah', 'time', 'mas fauzan', '1 majalah time'),
(72, '2019-11-20', 'invoice', 'paljaya', 'ibu Ivanna', 'tagihan pam rumah 5/8 dan 8/1'),
(73, '2019-11-20', 'paket', 'tokopedia', 'mas Yodha', 'barang pesanan mas yodha'),
(74, '2019-11-20', 'paket', 'Agelas Galaxy', 'mas Yodha', ' pesanan mas Yodha via tokopedia'),
(75, '2019-12-02', 'air jam jam', 'pak mus', 'ibu rini', 'asdsa'),
(76, '2019-12-02', 'reesar', 'rfser', 'wer', 'werwe'),
(77, '2019-12-02', '55', '55', '55', '55');

-- --------------------------------------------------------

--
-- Table structure for table `barang1`
--

CREATE TABLE `barang1` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `jenis` varchar(30) NOT NULL,
  `pengirim` varchar(30) NOT NULL,
  `untuk` varchar(30) NOT NULL,
  `gambar` varchar(254) NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang1`
--

INSERT INTO `barang1` (`id`, `tanggal`, `jenis`, `pengirim`, `untuk`, `gambar`, `keterangan`) VALUES
(1, '2019-12-02', 'qqq', 'qq', 'qq', '20190202', 'qq'),
(2, '2019-12-02', 'FOTO', 'JAE', 'AEWRE', 'jae.jpg', 'YRTY'),
(3, '2019-12-02', 'eee', 'eee', 'eee', 'IMG_153336357162F.jpg', 'sss'),
(4, '2019-12-02', 'undangan', 'padel muhamad', 'ibu rini', 'Jaenury.jpg', ''),
(5, '2019-12-02', 'paket', 'waerwea', 'werwer', 'prikithiw____.jpg', 'erwer'),
(6, '2019-12-02', 'makanan', 'spudinlk', 'nasi kebuli', 'SANY3667_copy.jpg', ' security tahun 2013'),
(7, '2019-12-02', 'makanan', 'widya patra jasa', 'mba nia', 'foto5016.jpg', 'ucapan terimakasih'),
(8, '2019-12-02', 'kaos', 'Agelas Galaxy', 'mas Yodha', 'IMG_153224827069F.jpg', 'ini adalah belanjaan '),
(9, '2019-12-26', 'surat', 'yamaha', 'mas yodha', 'DSC02714.JPG', ' surat biasa 24/12/19'),
(10, '2019-12-26', 'surat ', 'bank bca', 'mas yodha', 'favicon.png', 'sdfsad'),
(12, '2019-12-26', 'SURAT', 'CLAREDON', 'MAS YODHA', 'logo_iss.gif', 'SURAT');

-- --------------------------------------------------------

--
-- Table structure for table `employed`
--

CREATE TABLE `employed` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `tanggal` date NOT NULL,
  `time_in` varchar(50) NOT NULL,
  `time_out` varchar(12) NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employed`
--

INSERT INTO `employed` (`id`, `nama`, `tanggal`, `time_in`, `time_out`, `keterangan`) VALUES
(16, 'Waluyo', '2019-06-19', '17:03:20', '17:03:20', 'antar mas yodha ke suta'),
(17, 'Rizal', '2019-06-19', '03:15:21', '17:04:35', 'aaa'),
(18, 'Rizal', '2019-05-26', '2019-05-26 1', 'HJK', 'GHKJG'),
(19, 'Waluyo', '2019-05-26', '10:16:36', 'asdsa', 'SADSA'),
(21, 'Rizal', '2019-05-26', '0', 'SADA', 'ASDSA'),
(22, 'Waluyo', '2019-05-26', '10:41:05', 'IYYUI', 'UYTY'),
(23, 'Waluyo', '2019-05-26', '19:32:20', 'ASAS', 'ASsa'),
(27, 'Fendi', '2019-06-08', '03:24:14', '07:20', 'p80'),
(28, 'Rizal', '2019-06-08', '03:26:32', '16:00', 'tanaman belakang'),
(29, 'Fendi', '2019-06-08', '03:45:23', '-', 'tanaman belakang'),
(30, 'Suaip', '2019-06-08', '03:48:47', '-', 'bers'),
(31, 'Waluyo', '2019-06-19', '17:03:13', '17:03:13', 'perawatan mobil'),
(34, 'Rizal', '2019-06-16', '05:23:04', '16:00', 'tukang kebun'),
(35, 'Rizal', '2019-06-16', '1560656285', '-', 'absen'),
(36, 'Rizal', '2019-06-16', '1560657175', ';\';', 'l;\''),
(37, 'Rizal', '2019-06-16', '1560657309', 'sadsa', 'sada'),
(38, 'Suaip', '2019-06-16', '1560657347', 'ewq', 'wqeq'),
(49, 'Rizal', '2019-07-04', '23:39:35', 'rty', 'rty'),
(50, 'Fendi', '2019-07-13', '13:59:51', '-', 'taman'),
(53, 'Toupik', '2019-09-15', '02:00:40', '18:08:00', 'hkju'),
(54, 'Rizal', '1970-01-01', '14:00:15', '20:00', 'absensi harian bulan'),
(55, 'Suaip', '2019-09-26', '18:02:13', '21:23:33', 'pulang'),
(56, 'select Nama', '2019-09-29', '01:00:00', '-', 'absen'),
(57, 'Waluyo', '2019-09-29', '01:00:00', '-', 'asdas'),
(58, 'Rizal', '2019-09-29', '10:22:42', '02:09:38', 'ikut ibu cirebon d'),
(62, 'Fendi', '2019-11-10', '01:59:01', '02:07:07', 'absensi tukang kebun');

-- --------------------------------------------------------

--
-- Table structure for table `guest_book`
--

CREATE TABLE `guest_book` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `name` varchar(30) NOT NULL,
  `company` varchar(50) NOT NULL,
  `to_meet` varchar(30) NOT NULL,
  `remark` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guest_book`
--

INSERT INTO `guest_book` (`id`, `date`, `name`, `company`, `to_meet`, `remark`) VALUES
(6, '2019-07-11', 'farid', 'sangar kemuning', 'bu nia', 'meeeting'),
(7, '2019-07-11', 'SPV Irfan', 'Iss', 'Security', 'Cek anggota'),
(8, '2019-07-13', 'Suprianto', 'refer (deni)', 'bu ivanna', 'karyawan baru'),
(9, '2019-07-13', 'Ai Nuraisah', '-', 'bu ivanna', 'karyawan baru (12/7/2019)'),
(10, '2019-07-13', 'Andi', '-', 'bu ivanna', 'karyawan baru (12/07/2019)'),
(11, '2019-07-13', 'ert', 'secertaris aert', 'ert', 'erte'),
(12, '2019-07-13', 'ert', 'erst', 'ert', 'erwt'),
(13, '2019-07-13', 'etwr', 'secertaris aaa', 'ert', 'erwt'),
(14, '2019-08-09', 'Ustad Yusuf Mansur', '-', '-', 'beserta 6 santrinya. giat membaca alquran di basmen selama berhari hari. untuk mendoakan ibu rini ya'),
(15, '2019-09-12', 'bq', 'bni', 'ibu rini', 'mau ngelayat'),
(16, '2019-09-14', 'ade (anak bu ysue)', '-', 'yuse', 'makanan'),
(19, '2019-09-22', 'ahim', 'pt timah', 'ini ', 'anter barang barng dari bumn nigeria for'),
(20, '2019-09-26', 'Talita', '-', 'yodha', 'pacaryodha'),
(21, '2019-09-29', 'juan', '-', 'fauzan', 'teman fauzan'),
(27, '2019-11-10', 'Erik Tohir', 'bumn', 'ibu rini', ' silaturahmi');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `id` int(11) NOT NULL,
  `date` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `remark` varchar(30) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id`, `date`, `name`, `remark`, `gambar`) VALUES
(21, '2019-09-21', 'Wendy Dan team', 'tgfsdgs', ''),
(23, '2019-09-22', 'imi', 'service aca yanga lalu', ''),
(24, '2019-09-26', 'team wendy dam', '   lanjur renovasi lanjutan  ', ''),
(25, '2019-09-26', 'team wendy', '     lanjut renovas lantai dua', ''),
(30, '2019-11-06', 'sony dan kawan kawan', 'service kandang kelinci', ''),
(31, '2019-11-06', 'edy dan edy', ' service ac', ''),
(33, '2019-11-10', 'afsd', '  asfa', ''),
(34, '2019-11-17', 'sofyan', ' service mesin cuci (ganti spa', ''),
(35, '2019-11-17', 'pak Khairul dan sadan', ' pemsanngan instalas internet', ''),
(36, '2019-11-20', 'edy dan sopyan', ' perbaikan pintu pagar rumah 5', ''),
(37, '2019-11-20', 'sopyan ', ' pemasangan lemari ibu rini', ''),
(38, '2019-11-27', 'team aris', ' perbaikan AC Standing', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(11) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(40, 'fsafa', 'jaenudin0901@bsi.ac.id', 'jay.jpg', '$2y$10$9MFNLFGFBUqhLEE6ovfGceDdGVgUqm4K83bX8BD6O8yBi0p6eXwQS', 2, 0, 0),
(49, 'myesa', 'sugi@gmail.com', 'IMG_20181217_174001.jpg', '$2y$10$x8EOiEuR3MP/pOULh5A7tO3QCTlceV5XaiKjYlsxBwCxLhBjZL7La', 2, 1, 0),
(54, 'Safa Myesa Qurratuaini', 'safa@gmail.com', 'IMG_20190106_113920.jpg', '$2y$10$b/pSfYjouzUyvhpTJEserOKDJtpBxqR.zHH2fw5wWkUHwd.4D53b2', 2, 1, 0),
(67, 'DWI', '11170952@nusamandiri.ac.id', 'default.jpg', '$2y$10$X1bfbNE8nagnq44KeYqI8.Prk4wUMC/a4zleI8aipu0f8I6Fk2m0K', 2, 0, 1573937458),
(69, 'aini', 'jaenudinj913198@gmail.com', 'default.jpg', '$2y$10$FeRUfSD81jS7FqrjbDkdquvQrCzYmQhQXwYqyf/9WJaf.6hpbLMWa', 2, 1, 1573937821),
(70, 'jaenudin', 'jaenudin090191@gmail.com', 'default.jpg', '$2y$10$UW.w4rTJhs8KUMLBmK3JUOZYSGqpZbC9vEhWs/uCpTPCKCDeSiDcC', 2, 1, 1573983344);

-- --------------------------------------------------------

--
-- Table structure for table `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 2),
(5, 1, 4),
(6, 2, 5);

-- --------------------------------------------------------

--
-- Table structure for table `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`) VALUES
(1, 'Admin'),
(2, 'User'),
(4, 'Menu'),
(5, 'Activate'),
(6, 'Items');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'administrator'),
(2, 'member');

-- --------------------------------------------------------

--
-- Table structure for table `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 1, 'Dasboard', 'admin', 'fas fa-fw fa-tachometer-alt', 1),
(2, 2, 'My Profile', 'user', 'fas fa-fw fa-user', 1),
(3, 2, 'Edit Profile', 'user/edit', 'fas fa-fw fa-user-edit', 1),
(4, 4, 'Menu Management', 'menu', 'fas fa- fw fa-folder', 1),
(5, 4, 'Submenu Management', 'menu/submenu', 'fas fa-fw fa-folder-open', 1),
(6, 1, 'tes', 'coba/coba', 'fab fa-fw fa-youtube', 1),
(7, 1, 'Role', 'admin/role', 'fas fa-fw fa-user-tie', 1),
(8, 2, 'Change Password', 'user/changepassword', 'fas fa-fw fa-key', 1),
(9, 5, 'Items', 'items', 'far fa-book', 1),
(10, 5, 'Guest', 'guest', 'fas fa-fw fa-user-tie', 1),
(11, 5, 'Attendance', 'attendance', 'far fa-address-book', 1),
(12, 5, 'Employed', 'employed', ' fas fa- fw fa-folder', 1),
(13, 5, 'Service', 'service', 'fab fa-servicestack', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_token`
--

CREATE TABLE `user_token` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `token` varchar(128) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_token`
--

INSERT INTO `user_token` (`id`, `email`, `token`, `date_created`) VALUES
(82, 'safa@gmail.com', 'w0y/KEGqA8CFerIbDBRwmLIVBA5d7EURcaIwIOvFDDM=', 1558534901),
(98, '11170952@nusamandiri.ac.id', '2kbDu5SaL70/fqlGU7GU2m4pakDqmTFnTVOFEf+VMps=', 1573933858),
(99, '11170952@nusamandiri.ac.id', 'ewUwz7GIerijiMdrPrxkv+8DVBJFtyrggHQ50P/K09s=', 1573934320),
(100, '11170952@nusamandiri.ac.id', 'p47f7Smj5t93xLbbfvpkbnW3WZYVbHQCdHJ9448FeDM=', 1573934734),
(101, '11170952@nusamandiri.ac.id', 'iQPXMexgfApBhI+tx/rJvtSOJ2Bx3nic2TAT4yVO1RI=', 1573934756),
(102, '11170952@nusamandiri.ac.id', 'KQ4Gf3CZpuM0tBxTDxiATnpnun6ycmlXmOuHwhvBffY=', 1573934793),
(103, '11170952@nusamandiri.ac.id', 'q1XwJRIOJi5JMcJgiN6+MUayaduCk2aYgX2JM9tfC5k=', 1573934981),
(104, 'asda@gmail.com', 'Hm1m6cktRGn1MrzjECnsQbN0oHxZC3g/EZdL0B57OtE=', 1573935213),
(105, 'asda@gmail.com', 'uc8BtD293YYkUV28voGaMXjoBFopEQrcK/4fx1QVFzo=', 1573935296),
(106, '11170952@nusamandiri.ac.id', '2vGQ6D+KIoTY5UoZiTXyc+aHdHU09U3QJtU8dShgsJI=', 1573935382),
(107, '11170952@nusamandiri.ac.id', 'DK4TT8WiQ3s/X0Pl0GEfc92kMMlXT/r7SUjzHdwOfSc=', 1573935480),
(108, '11170952@nusamandiri.ac.id', '+8+sTqBcg3tPorxHU6eiUUJP3sj2Kx49Mx9etwuTtT4=', 1573935782),
(109, '11170952@nusamandiri.ac.id', '4hOGKAwp7dCxXA1gmEH5gdaFFTCeL6k6VDipYbK6vN8=', 1573936773),
(110, '11170952@nusamandiri.ac.id', '0Hhr/n4C/Ay7tsPO4HH3URSZSVtj9clrtGawMfUz62s=', 1573936850),
(111, '11170952@nusamandiri.ac.id', 'cN3MXRYLQrr822rBeYNN7Aiox5s2FJA+lgJ5nR1azDE=', 1573936885),
(112, '11170952@nusamandiri.ac.id', 'z/+gRIBO5Ds51G4JYbJvMStVQ6KN4KNz/yUV45hj81U=', 1573936981),
(113, '11170952@nusamandiri.ac.id', '62yjhGIAdDQebS8SSEBtvQTXUQJsPgAc3bPl/yayKQM=', 1573937305),
(114, '11170952@nusamandiri.ac.id', 'CucfKMnMy5gBGS/inZUZJxxc2EHWU4LxlvC5repVRNA=', 1573937458),
(117, 'jaenudinj913198@gmail.com', '1Pm35Tp3lAPos6VCEkK9qpgsoHMs91JhSnS2MKdCGKQ=', 1573940477),
(118, 'jaenudinj913198@gmail.com', 'ruqI0vCTAl4d16vnCKQWqKpqljoGcKhBGR5Ce28GjOs=', 1573941586),
(119, 'jaenudinj913198@gmail.com', 'InCAdV5hwIf77nX4vG6CgpFc6vlKsOdNPA68hITVC4M=', 1573941591),
(121, 'jaenudin090191@gmail.com', '/bXJYpMahfjlaqLD6Ue3T+N+95s563GBx2u/1PA5dMM=', 1573983494),
(122, 'jaenudin090191@gmail.com', 'dXLKz1ttG4HmCRM+xXeebp/ZmbrY4OdN+WYV9lD1P1g=', 1573985583),
(123, 'jaenudin090191@gmail.com', 'Drgr7sj2Ey/tQxICOMb8JIV1xWJQEnhZ6DoSJI8J10Y=', 1573986597);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `barang1`
--
ALTER TABLE `barang1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employed`
--
ALTER TABLE `employed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guest_book`
--
ALTER TABLE `guest_book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `barang1`
--
ALTER TABLE `barang1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `employed`
--
ALTER TABLE `employed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `guest_book`
--
ALTER TABLE `guest_book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;
--
-- Database: `wpu_rest`
--
CREATE DATABASE IF NOT EXISTS `wpu_rest` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `wpu_rest`;

-- --------------------------------------------------------

--
-- Table structure for table `keys`
--

CREATE TABLE `keys` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `key` varchar(40) NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT '0',
  `is_private_key` tinyint(1) NOT NULL DEFAULT '0',
  `ip_addresses` text,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `keys`
--

INSERT INTO `keys` (`id`, `user_id`, `key`, `level`, `ignore_limits`, `is_private_key`, `ip_addresses`, `date_created`) VALUES
(1, 1, 'wpu123', 1, 0, 0, NULL, 1),
(2, 2, '12140085', 1, 0, 0, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `limits`
--

CREATE TABLE `limits` (
  `id` int(11) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `count` int(10) NOT NULL,
  `hour_started` int(11) NOT NULL,
  `api_key` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `limits`
--

INSERT INTO `limits` (`id`, `uri`, `count`, `hour_started`, `api_key`) VALUES
(1, 'uri:api/mahasiswa/index:get', 10, 1571121619, 'wpu123'),
(2, 'uri:api/mahasiswa/index:get', 4, 1571121967, '12140085');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL,
  `nrp` char(9) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `email` varchar(250) DEFAULT NULL,
  `jurusan` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nrp`, `nama`, `email`, `jurusan`) VALUES
(1, '043040001', 'Doddy Ferdiansyah', 'doy@gmail.com', 'Teknik Mesin'),
(2, '023040123', 'Erik', 'erik@gmail.com', 'Teknik Industri'),
(5, '12140085', 'Jaenudin', 'jaenudin090191@gmail.com', 'Sistem Informasi'),
(6, '12140089', 'Hendara Setiawan', 'hendra090191@gmail.com', 'Sistem Informasi'),
(7, '12140089', 'Hendara Setiawan', 'hendra090191@gmail.com', 'Sistem Informasi'),
(8, '12140089', 'Hendara Setiawan', 'hendra090191@gmail.com', 'Sistem Informasi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `keys`
--
ALTER TABLE `keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `limits`
--
ALTER TABLE `limits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `keys`
--
ALTER TABLE `keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `limits`
--
ALTER TABLE `limits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
