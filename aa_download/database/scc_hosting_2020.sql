-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 04, 2021 at 07:59 AM
-- Server version: 10.2.36-MariaDB-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sccy2224_scc`
--

-- --------------------------------------------------------

--
-- Table structure for table `absensi`
--

CREATE TABLE `absensi` (
  `id_absensi` char(12) NOT NULL,
  `id_internal` char(5) NOT NULL,
  `judul_absensi` text NOT NULL,
  `tgl_absensi` date NOT NULL,
  `jam_mulai` varchar(10) NOT NULL,
  `jam_selesai` varchar(10) NOT NULL,
  `status_absensi` enum('Selesai','Belum Selesai') NOT NULL,
  `kata_sandi` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bank_software`
--

CREATE TABLE `bank_software` (
  `kode_bank_s` char(12) NOT NULL,
  `id_eksternal` char(5) NOT NULL,
  `id_jadwal_bs` int(3) NOT NULL,
  `tanggal_booking` date NOT NULL,
  `tanggal_bs` date NOT NULL,
  `status_bs` enum('Selesai','Belum Selesai','Batal') NOT NULL,
  `rating` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `detail_absensi`
--

CREATE TABLE `detail_absensi` (
  `id_detail_absensi` int(11) NOT NULL,
  `id_absensi` char(12) NOT NULL,
  `id_internal` char(5) NOT NULL,
  `tgl_absen` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `detail_bs`
--

CREATE TABLE `detail_bs` (
  `id_detail_bs` int(11) NOT NULL,
  `kode_bank_s` char(12) NOT NULL,
  `id_software` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `detail_prove`
--

CREATE TABLE `detail_prove` (
  `id_detail_prove` int(5) NOT NULL,
  `id_prove` char(10) NOT NULL,
  `id_eksternal` char(5) NOT NULL,
  `rating` int(1) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_prove`
--

INSERT INTO `detail_prove` (`id_detail_prove`, `id_prove`, `id_eksternal`, `rating`, `deskripsi`) VALUES
(32, '200222-002', 'EK012', 5, ''),
(34, '200223-001', 'EK003', 5, ''),
(35, '200223-002', 'EK005', 0, ''),
(36, '200223-002', 'EK016', 0, ''),
(37, '200224-001', 'EK018', 5, ''),
(38, '200223-001', 'EK004', 5, ''),
(39, '200223-001', 'EK019', 5, ''),
(40, '200222-002', 'EK007', 5, ''),
(41, '200224-002', 'EK020', 5, ''),
(42, '200224-003', 'EK004', 5, ''),
(43, '200224-003', 'EK005', 5, ''),
(44, '200225-001', 'EK022', 5, ''),
(45, '200226-001', 'EK008', 0, ''),
(46, '200226-002', 'EK006', 5, ''),
(47, '200224-002', 'EK010', 5, ''),
(48, '200226-003', 'EK025', 5, ''),
(49, '200224-001', 'EK026', 5, ''),
(50, '200224-001', 'EK027', 5, ''),
(51, '200224-001', 'EK028', 5, ''),
(54, '200225-001', 'EK029', 5, ''),
(56, '200223-002', 'EK042', 0, ''),
(57, '200223-002', 'EK043', 0, ''),
(58, '200227-001', 'EK011', 5, ''),
(59, '200226-002', 'EK023', 5, ''),
(60, '200227-002', 'EK024', 5, ''),
(61, '200227-002', 'EK020', 5, ''),
(62, '200224-002', 'EK024', 5, ''),
(63, '200223-002', 'EK020', 0, ''),
(64, '200226-001', 'EK044', 0, ''),
(67, '200226-002', 'EK008', 5, ''),
(68, '200226-003', 'EK048', 4, ''),
(69, '200301-001', 'EK052', 5, ''),
(70, '200302-001', 'EK003', 5, ''),
(71, '200302-001', 'EK005', 5, ''),
(72, '200302-001', 'EK042', 5, ''),
(73, '200226-003', 'EK036', 5, ''),
(74, '200226-003', 'EK053', 5, ''),
(75, '200301-001', 'EK010', 5, ''),
(77, '200302-003', 'EK048', 5, ''),
(78, '200302-004', 'EK056', 0, ''),
(79, '200302-004', 'EK032', 0, ''),
(80, '200302-004', 'EK057', 0, ''),
(81, '200302-003', 'EK058', 5, ''),
(82, '200302-003', 'EK059', 5, ''),
(83, '200303-001', 'EK022', 5, ''),
(84, '200302-001', 'EK019', 5, ''),
(85, '200303-001', 'EK064', 5, ''),
(86, '200227-001', 'EK018', 5, ''),
(87, '200227-001', 'EK028', 5, ''),
(91, '200306-001', 'EK068', 3, ''),
(92, '200306-001', 'EK061', 0, ''),
(94, '200306-001', 'EK062', 0, ''),
(95, '200308-001', 'EK004', 0, ''),
(96, '200308-001', 'EK027', 0, ''),
(97, '200308-002', 'EK054', 0, ''),
(99, '200309-001', 'EK023', 5, ''),
(101, '200304-001', 'EK070', 0, ''),
(102, '200308-002', 'EK017', 5, ''),
(103, '200308-002', 'EK035', 5, ''),
(108, '200312-002', 'EK020', 0, ''),
(109, '200312-002', 'EK010', 5, ''),
(110, '200312-001', 'EK016', 0, ''),
(111, '200314-001', 'EK032', 0, ''),
(112, '200424-001', 'EK007', 0, ''),
(113, '200424-001', 'EK005', 0, ''),
(114, '200424-001', 'EK003', 0, ''),
(115, '200426-001', 'EK008', 0, ''),
(120, '200424-001', 'EK004', 0, ''),
(121, '200427-001', 'EK065', 0, ''),
(122, '200427-001', 'EK069', 0, ''),
(123, '200427-001', 'EK066', 0, ''),
(124, '200430-001', 'EK042', 5, ''),
(125, '200430-001', 'EK017', 5, ''),
(126, '200430-001', 'EK024', 5, ''),
(127, '200430-002', 'EK026', 0, ''),
(128, '200430-002', 'EK018', 0, ''),
(129, '200430-002', 'EK011', 0, ''),
(130, '200430-002', 'EK028', 0, ''),
(131, '200503-001', 'EK020', 5, ''),
(133, '200503-001', 'EK048', 0, ''),
(134, '200503-001', 'EK024', 0, ''),
(135, '200505-001', 'EK020', 5, ''),
(136, '200505-002', 'EK048', 0, ''),
(137, '200505-003', 'EK010', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `eksternal`
--

CREATE TABLE `eksternal` (
  `id_eksternal` char(5) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `akun_line` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(60) NOT NULL,
  `angkatan` varchar(4) NOT NULL,
  `foto` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eksternal`
--

INSERT INTO `eksternal` (`id_eksternal`, `nama`, `no_hp`, `akun_line`, `username`, `password`, `angkatan`, `foto`) VALUES
('EK001', 'Haiva Qurrota A\'yun', '081336032532', 'haivava', '06211840000045', '141272', '2018', 'EK004'),
('EK002', 'Annisa Farah Aqila', '081221990888', 'annisaafa79', '06211840000076', 'Afaqila79', '2018', 'DEFEK'),
('EK003', 'Vania Frederica', '082387852731', 'vaniafrederica', '06211940000006', 'mefang14', '2019', 'DEFEK'),
('EK004', 'Nadhirah Adzani Khairunnisa', '081279978088', 'nadhirah1409', '06211940000021', 'nadhirah19', '2019', 'DEFEK'),
('EK005', 'Fauziya Alya Ramadhana', '0895706213366', 'fauziyaalyarm', '06211940000046', '123Fauziramadhanarn4ever', '2019', 'DEFEK'),
('EK006', 'Giovanita Ellen Prasetya', '083875119315', 'gioellen', '06211940000067', 'Blessedellen2001', '2019', 'EK006'),
('EK007', 'Rahida Rihhadatul Aisy', '085536790334', 'rhdtlsy', '06211940000012', '040104', '2019', 'DEFEK'),
('EK008', 'Dwi Purwanto', '087734502439', 'dwip1926', '06211940000052', 'Dwiits2019', '2019', 'EK008'),
('EK009', 'I Komang Pande Prajadhita Wibawa Putra', '081936811819', 'kompol28', '06211940000027', 'kompol28', '2019', 'DEFEK'),
('EK010', 'Annisa Rahmawati', '087888606312', '081290794368', '06211940000035', 'statistikaits', '2019', 'DEFEK'),
('EK011', 'Annissa\'dilla Nur Azizah', '082335390345', 'annissadilla', '06211940000026', 'Dillada9', '2019', 'DEFEK'),
('EK012', 'Brianita Rianasari', '081359808454', 'brianitarianaa', '06211940000037', 'Brian123', '2019', 'DEFEK'),
('EK013', 'Anita Beatrix', '081260633086', 'nhiitabeatrix', '06211940007002', '3108Noblesse', '2019', 'EK013'),
('EK014', 'Rama Adilla Zein', '083833578823', 'ramaadillazein123456', '06211940000087', 'Sigendut1', '2019', 'DEFEK'),
('EK015', 'Nur farahizam sari harahap', '081362198362', 'farahizam', '06211940007003', 'Harahap123', '2019', 'DEFEK'),
('EK016', 'Ovivah Novoinah', '085339039350', 'ovivahh16_', '06211940000051', 'Bapakibu123', '2019', 'DEFEK'),
('EK017', 'Tahta Yodya Setiya Kusuma Cahyane', '085647518348', 'tahta_12', '06211940000014', '05Sept001', '2019', 'EK017'),
('EK018', 'Clarissa Putri C', '089615114380', 'clarissaputric', '06211940000003', 'Rissaunyu123', '2019', 'DEFEK'),
('EK019', 'Sekar Puspita Sari', '081266569273', 'kertasabuabu', '06211940000036', 'double_2_dub', '2019', 'DEFEK'),
('EK020', 'Zanzabila Rehanisya Firdhani', '085843253533', 'zanzabilarf', '06211940000029', 'Zanzabila19', '2019', 'DEFEK'),
('EK021', 'Anak Agung Ayu Prasasti Ayundari', '082247804671', 'sasti310102', '06211940000121', 'Yuliastini31', '2019', 'DEFEK'),
('EK022', 'aulia kharis rakhmasari', '082234208048', 'auliakr140601', '06211940000073', 'aulia14062001', '2019', 'DEFEK'),
('EK023', 'Rahmi Fitri Pratiwi', '082386656589', 'rahmifpratiwi', '06211940000064', 'THEfinalx123', '2019', 'EK023'),
('EK024', 'Zulfani Alfasanah', '081329049483', 'zulfani_alfasanah', '06211940000025', 'Sanada18', '2019', 'DEFEK'),
('EK025', 'Dewi Musaani Oihu', '082293522693', 'dewimusaanioihu', '06211940000015', 'Palestina123', '2019', 'DEFEK'),
('EK026', 'Adelia Nur Asmaria', '082228565257', 'adeliana7', '06211940000081', 'Bismillah7', '2019', 'DEFEK'),
('EK027', 'Kharisma Riza Hayu Pricilia', '082331962631', 'kharisma_riza', '06211940000001', 'Risma123', '2019', 'DEFEK'),
('EK028', 'Dinda Nuranisa Rahmadanty', '089639804101', 'danty23', '06211940000033', 'Dnr231200', '2019', 'DEFEK'),
('EK029', 'Prima Catur Perkasa', '085155430660', 'newbiekebo11', '06211940000106', 'Newbiekebo11', '2019', 'DEFEK'),
('EK030', 'Yanuar Dwi Aunurrofiki', '082233134597', 'ynar.dwiaunur', '06211940000010', 'Nicolasvigneri06', '2019', 'EK030'),
('EK031', 'Shafira Aisyah Maharani', '082142507970', 'shafira0506', '06211940000019', 'shafira32', '2019', 'DEFEK'),
('EK032', 'Putri Nurdianti', '088271092700', 'putri_nurdianti', '06211940000088', 'Dianap00', '2019', 'DEFEK'),
('EK033', 'Zairi Ladun', '081555314007', 'zqwacnai29', '06211940000005', 'Sdnjemberlor1', '2019', 'DEFEK'),
('EK034', 'Lilik Setyaningsih', '085645059323', 'liliksetyaningsih_35', '06211940000049', 'Kita123', '2019', 'DEFEK'),
('EK035', 'Mohammad Bagussurya Basuni', '081574272785', 'bagussuryabasuni', '06211940000078', '21082001', '2019', 'DEFEK'),
('EK036', 'Megawati R. Sitorus', '081260555059', 'megasitorus_', '06211940000050', 'akuaku123', '2019', 'DEFEK'),
('EK037', 'Jihan Nabilah', '085777139116', 'jihan_na99', '06211940000068', 'bsmdlrofmA1', '2019', 'DEFEK'),
('EK038', 'Pramesti Hayu Wirastri', '085853846213', 'pramestihayu08', '06211940000011', 'hayuhanum89', '2019', 'DEFEK'),
('EK039', 'Hafez Afghan', '6282338954487', 'Hafez089', '06211940000018', 'Hafez123', '2019', 'DEFEK'),
('EK040', 'Ezra Alfonsius Setiawan', '089692919630', 'ezraals1412', '06211940000045', 'Mgl29092001', '2019', 'DEFEK'),
('EK041', 'Kevina Windy Arlianni', '085784715862', 'kevinarl_', '06211940000047', 'nadhirahcantik123', '2019', 'DEFEK'),
('EK042', 'Amira Amalia', '081216735482', 'amiraamalia89', '06211940000071', 'Belle22315', '2019', 'DEFEK'),
('EK043', 'Natasya Shantika Azhami', '081392958781', 'yaawakiil', '06211940000053', 'Bismillah99', '2019', 'DEFEK'),
('EK044', 'Diah Ayu Fitri Anti', '082336842894', 'diahayuufa', '06211940000002', 'lemari', '2019', 'DEFEK'),
('EK045', 'Ahmad Reyhan Abdillah', '08986195128', 'reyhanabdi', '06211940000095', 'Tpq12345', '2019', 'DEFEK'),
('EK046', 'Putri Aprilastika Sukarna', '085701763068', 'putriapril28', '06211940000136', 'tikacantik28', '2019', 'EK046'),
('EK047', 'Seza Dwiwulan', '082336964693', 'sezadwiwulan', '06211840000084', 'congratulation', '2018', 'DEFEK'),
('EK048', 'Andrea Ernest', '085816057677', 'mycompletename.', '06211940000098', 'gue123', '2019', 'DEFEK'),
('EK049', 'Intan Citra Phonskaningtyas', '081334201742', 'intan_citra28', '06211940000007', '28112001', '2019', 'DEFEK'),
('EK050', 'Fajar Shidiq', '089506885771', 'jardiq', '06211940000069', 'rristhebestauthor', '2019', 'DEFEK'),
('EK051', 'Salsabila Naqiyyah', '085277705163', 'sslaqyh02', '06211940000044', '7Kamvret', '2019', 'DEFEK'),
('EK052', 'Adhista Widya Nandasari', '082146354694', 'adhistawn', '06211940000030', 'dhavid25', '2019', 'DEFEK'),
('EK053', 'Nunik Isyidhun Nai\'mah', '0895380121225', 'nunikina28', '06211940000080', 'nunik123', '2019', 'DEFEK'),
('EK054', 'Rachmat Winardiansyah', '0895336916421', 'didi_rw35', '06211940000042', 'Pasuruan35', '2019', 'EK054'),
('EK055', 'M. Ridhlotul Izza', '085606124859', 'izzamuhh', '06211940000066', 'Izza12.12', '2019', 'DEFEK'),
('EK056', 'rindy rafida', '085895787860', 'rindyr39', '06211940000094', 'Rindi708', '2019', 'DEFEK'),
('EK057', 'Surotin Najikhah', '081217022160', 'Jrikha_', '06211940000097', 'rinajikha30', '2019', 'DEFEK'),
('EK058', 'Nanda Novenia Shinta Hapsari', '08819748412', 'nandanovenia', '06211940000008', 'Nandakarel172', '2019', 'DEFEK'),
('EK059', 'Wahidatul Wardah Al Maulidiyah', '085806921901', 'wardaham', '06211940000090', 'wardah23', '2019', 'DEFEK'),
('EK060', 'Puspa Arum Sari', '082131271454', 'puspaarumsr', '06211940000101', 'Arum1301.', '2019', 'DEFEK'),
('EK061', 'Rosyida Ishma', '081392658542', 'rosyidaishma', '06211940000115', 'Pagimalem196', '2019', 'DEFEK'),
('EK062', 'sindy chairunisa', '081334661621', 'sindyc28', '06211940000105', 'Sindy2000', '2019', 'DEFEK'),
('EK063', 'alissa novitasari', '085645322849', 'alissanovitasari', '06211940000134', 'alissa241100', '2019', 'DEFEK'),
('EK064', 'Dede Yusuf P. Kuntaritas', '081353178110', 'dedeyusuf20', '06211940007001', 'pass1234', '2019', 'DEFEK'),
('EK065', 'Kristina Panduwinata', '081252657827', 'nata_kristin26', '06211942000007', 'Kristinstat2608', '2019', 'DEFEK'),
('EK066', 'safitri paras shadira', '082198906493', 'shadira1217', '06211942000009', 'Aufklarung23', '2019', 'DEFEK'),
('EK067', 'Muhammad Romiz Rofan Hakim', '081295969168', 'rofanhakim', '06211940000131', 'bagusjelek1234#', '2019', 'DEFEK'),
('EK068', 'Mellina Eka Fitriani', '085648764185', 'mellinaeka', '06211940000099', 'm3ll1243', '2019', 'DEFEK'),
('EK069', 'Rizka Yuliani Saputri', '087785189797', 'rizkaputri01', '06211942000006', 'rizkayuliani31', '2019', 'DEFEK'),
('EK070', 'Firyal Almasah Kamilia Sartono', '08112222103', 'aalmasah', '06211942000005', 'ulzima', '2019', 'DEFEK'),
('EK100', 'Mohamad Hafidz Al Habib', '085536956301', 'hafidz_al_habib', '06211940000038', 'HABIB12345', '2019', 'DEFEK'),
('EK999', 'Akun Test', '0891236892', 'Test', 'test_bs', 'test_bs', '2018', '');

-- --------------------------------------------------------

--
-- Table structure for table `event_sst`
--

CREATE TABLE `event_sst` (
  `id_event_sst` int(5) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `institusi` varchar(50) NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `akun_line` varchar(30) NOT NULL,
  `alasan` text NOT NULL,
  `status` enum('Belum','Lunas') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `event_sst`
--

INSERT INTO `event_sst` (`id_event_sst`, `nama`, `email`, `institusi`, `jurusan`, `no_hp`, `akun_line`, `alasan`, `status`) VALUES
(13, 'Reza Maliki Akbar', 'rezamaliki.akbar@gmail.com', 'Insititut Teknologi Sepuluh Nopember', 'Teknik Fisika (Lintas Jalur)', '089655214511', 'maliki_borneo', 'Menambah wawasan dan kompetensi diri, terutama untuk mendukung dalam dunia robotik, otomasi yang kini serba otonom di mana machine learning adalah salah satu metodenya', 'Belum'),
(14, 'Aurell Faza Ashilla', 'aurellashilla@gmail.com', 'ITS', 'Statistika', '081214482348', 'aurellfaza', 'ingin mengeksplor machine learning', 'Belum'),
(15, 'Prajna Pramita Izati', 'pramitaprajna22@gmail.com', 'ITS', 'Statistika', '083875780489', 'prajnapi', 'Seperti yang telah dijelaskan pada tujuan adanya SST adalah untuk lebih mengetahui penggunaan Python dan dasar-dasar Machine Learning', 'Belum'),
(17, 'Steven Manuel Angkasaputra', 'manuelsteven1811@gmail.com', 'ITS', 'Matematika', '081333305248', 'stevenmanuel18', 'Belajar Machine Learning', 'Belum'),
(18, 'Rafly Dwi Priyono', 'jkt.rafly.dp@gmail.com', 'ITS', 'Teknik Industri', '081249173371', 'rafly39', 'memiliki ketertarikan dan sedikit pengetahuan tentang data mining dan ingin bisa mengimplementasikan pengetahuan tersebut di dalam ekosistem pemrograman python', 'Belum');

-- --------------------------------------------------------

--
-- Table structure for table `internal`
--

CREATE TABLE `internal` (
  `id_internal` char(5) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `akun_line` varchar(30) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `hak_akses` enum('Kadiv','Sekdiv','Bendahara','Staff Ahli','Manager','Staff') NOT NULL,
  `jabatan_managerial` enum('TD','HRD','PR','Kosong') NOT NULL,
  `status_sj` enum('Senior','Junior') NOT NULL,
  `foto` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `internal`
--

INSERT INTO `internal` (`id_internal`, `nama`, `no_hp`, `akun_line`, `username`, `password`, `hak_akses`, `jabatan_managerial`, `status_sj`, `foto`) VALUES
('IN001', 'Hasri Wiji Aqsari', '082234641698', 'hasriwiji08', 'hasriwiji', 'Hasri121198', 'Kadiv', 'TD', 'Senior', 'IN001'),
('IN002', 'Vanda Fitriyanah', '082234755001', 'vandafitriyanah', 'vanda_fitriyanah@scc-himastaits.com', 'scc123', 'Staff', 'HRD', 'Junior', 'IN002'),
('IN003', 'Lidya Cahya Aurellia', '081332280585', 'Lidyacahyaa2', 'lidya_cahya@scc-himastaits.com', 'dea160700', 'Staff', 'HRD', 'Junior', 'IN003'),
('IN004', 'Putri Hidayati Rohmah', '089504631309', 'putri_hiro', 'putri', 'putri', 'Staff', 'HRD', 'Junior', 'IN004'),
('IN005', 'Syafniya Zilfah Aniesiy', '089510777046', 'szaniesiy', 'zilfah', 'zilfahhh', 'Staff', 'HRD', 'Junior', 'IN005'),
('IN006', 'Kevin Agung Fernanda Rifki', '083830818118', 'kevinfernanda13', 'kevin_agung@scc-himastaits.com', 'LenovoG480', 'Staff', 'PR', 'Junior', 'IN006'),
('IN007', 'Ichwanul Kahfi Prasetya', '082333572635', 'ichwanulkp', 'ichwanulkahfi', 'scc123', 'Staff', 'PR', 'Junior', 'IN007'),
('IN008', 'Shecilia Nur Salsalbila', '081217529139', 'kosong', 'shecilia_salsabila@scc-himastaits.com', 'scc123', 'Staff', 'PR', 'Junior', 'DEFIN'),
('IN009', 'Seza Dwiwulan Ramadini', '082336964693', 'sezadwiwulan', 'seza_dwiwulan@scc-himastaits.com', 'scc123', 'Bendahara', 'Kosong', 'Junior', 'IN009'),
('IN011', 'Aubert Oktaviantono', '081331913541', 'aubert_oktav', 'aubert_oktaviantono@scc-himastaits.com', 'scc123', 'Staff', 'TD', 'Junior', 'IN011'),
('IN012', 'Yuniar Mega Kartikasari', '081905217438', 'yuniar_yun', 'yuniar_mega@scc-himastaits.com', 'Kartikasari5', 'Staff', 'TD', 'Junior', 'IN012'),
('IN013', 'Nauli Mazaya Siregar', '085726898883', 'nlmzysrgr', 'nauli_mazaya@scc-himastaits.com', 'Mazayas1', 'Staff', 'TD', 'Junior', 'IN013'),
('IN014', 'Inka Nurul Alfiana', '082336050265', 'kosong', 'inka_nurul@scc-himastaits.com', 'scc123', 'Staff', 'TD', 'Junior', 'DEFIN'),
('IN015', 'Eva Marella', '087860473988', 'emr.48', '06211840000046', '48akulupa', 'Staff', 'TD', 'Junior', 'IN015'),
('IN016', 'Sarnita Sadya', '081288551389', 'sarnitasadya', 'sarnitasadya', 'Palangkaraya13', 'Staff', 'TD', 'Junior', 'IN016'),
('IN017', 'Diza Amalia', '089525134008', 'diza', '06211740000030', 'scc123', 'Staff Ahli', 'PR', 'Senior', 'DEFIN'),
('IN018', 'Putri Wahyuni', '082331336146', 'putriwahyunixix', '06211740000046', 'scc123', 'Staff Ahli', 'TD', 'Senior', 'IN018'),
('IN019', 'Moch Akbar Pasha Perdana', '082311111111', 'akbar', '06211740000054', 'scc123', 'Staff Ahli', 'HRD', 'Senior', 'DEFIN'),
('IN020', 'Dhany Nastiti Lestari', '081252397280', 'dhanynastitil', '06211740000060', 'scc123', 'Manager', 'TD', 'Senior', 'IN020'),
('IN022', 'Tiza Ayu Virania', '082259017484', 'df', '06211740000063', 'scc123', 'Sekdiv', 'Kosong', 'Senior', 'DEFIN'),
('IN023', 'Muhammad Rayhan Lahdji', '089665890987', 'hj', '06211740000075', 'scc123', 'Staff Ahli', 'TD', 'Senior', 'DEFIN'),
('IN024', 'Ratnanda Gita Alfitri', '089430293484', 'gfh', '06211740000086', 'scc123', 'Staff Ahli', 'TD', 'Senior', 'DEFIN'),
('IN025', 'Muhammad Rofiqul Ilmi', '087665665544', 'h', '06211740000087', 'cek123', 'Staff Ahli', 'PR', 'Senior', 'DEFIN'),
('IN026', 'Hardan Tri Laksamana', '0895365014042', 'hardantri_', '06211740000100', 'cahyo12', 'Manager', 'PR', 'Senior', 'IN026'),
('IN027', 'Maharani Sinta Nirwana', '555353345544', 'f', '06211740000105', 'scc123', 'Manager', 'HRD', 'Senior', 'DEFIN');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal_bank_software`
--

CREATE TABLE `jadwal_bank_software` (
  `id_jadwal_bs` int(3) NOT NULL,
  `id_internal` char(5) NOT NULL,
  `hari` enum('Senin','Selasa','Rabu','Kamis','Jumat') NOT NULL,
  `jam_mulai` varchar(10) NOT NULL,
  `jam_selesai` varchar(10) NOT NULL,
  `status_booking` enum('Free','Unfree') NOT NULL,
  `status_aktif` enum('Aktif','Tidak Aktif') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jadwal_bank_software`
--

INSERT INTO `jadwal_bank_software` (`id_jadwal_bs`, `id_internal`, `hari`, `jam_mulai`, `jam_selesai`, `status_booking`, `status_aktif`) VALUES
(1, 'IN007', 'Selasa', '16:00', '17:00', 'Free', 'Aktif'),
(2, 'IN007', 'Kamis', '13:00', '14:00', 'Free', 'Aktif'),
(3, 'IN007', 'Kamis', '14:00', '15:00', 'Free', 'Aktif'),
(5, 'IN007', 'Senin', '13:00', '14:00', 'Free', 'Aktif'),
(6, 'IN007', 'Senin', '14:00', '15:00', 'Free', 'Aktif'),
(14, 'IN007', 'Jumat', '16:00', '17:00', 'Free', 'Aktif'),
(15, 'IN007', 'Senin', '15:00', '16:00', 'Free', 'Aktif'),
(16, 'IN007', 'Senin', '16:00', '17:00', 'Free', 'Aktif'),
(17, 'IN007', 'Rabu', '10:00', '11:00', 'Free', 'Tidak Aktif'),
(19, 'IN007', 'Rabu', '11:00', '12:00', 'Free', 'Tidak Aktif'),
(20, 'IN007', 'Kamis', '15:00', '16:00', 'Free', 'Tidak Aktif'),
(21, 'IN007', 'Kamis', '16:00', '17:00', 'Free', 'Tidak Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal_prove`
--

CREATE TABLE `jadwal_prove` (
  `id_jadwal_prove` int(3) NOT NULL,
  `id_internal` char(5) NOT NULL,
  `hari` enum('Senin','Selasa','Rabu','Kamis','Jumat') NOT NULL,
  `jam_mulai` varchar(10) NOT NULL,
  `jam_selesai` varchar(10) NOT NULL,
  `status_booking` enum('Free','Unfree') NOT NULL,
  `status_aktif` enum('Aktif','Tidak Aktif') NOT NULL,
  `terakhir_dibooking` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jadwal_prove`
--

INSERT INTO `jadwal_prove` (`id_jadwal_prove`, `id_internal`, `hari`, `jam_mulai`, `jam_selesai`, `status_booking`, `status_aktif`, `terakhir_dibooking`) VALUES
(1, 'IN023', 'Senin', '12:00', '13:00', 'Free', 'Aktif', '0000-00-00'),
(2, 'IN023', 'Kamis', '10:00', '11:00', 'Free', 'Aktif', '0000-00-00'),
(3, 'IN023', 'Jumat', '10:00', '11:00', 'Free', 'Aktif', '0000-00-00'),
(4, 'IN023', 'Jumat', '16:00', '17:00', 'Free', 'Aktif', '0000-00-00'),
(5, 'IN007', 'Senin', '13:00', '15:00', 'Free', 'Aktif', '0000-00-00'),
(6, 'IN007', 'Senin', '15:00', '17:00', 'Free', 'Aktif', '0000-00-00'),
(7, 'IN007', 'Selasa', '16:00', '17:00', 'Free', 'Aktif', '0000-00-00'),
(8, 'IN007', 'Rabu', '10:00', '12:00', 'Free', 'Aktif', '0000-00-00'),
(9, 'IN007', 'Rabu', '12:00', '14:00', 'Free', 'Aktif', '0000-00-00'),
(10, 'IN007', 'Rabu', '14:00', '16:00', 'Free', 'Aktif', '0000-00-00'),
(11, 'IN007', 'Rabu', '16:00', '17:00', 'Free', 'Aktif', '0000-00-00'),
(12, 'IN007', 'Kamis', '13:00', '15:00', 'Free', 'Aktif', '0000-00-00'),
(13, 'IN007', 'Kamis', '15:00', '17:00', 'Free', 'Aktif', '0000-00-00'),
(14, 'IN007', 'Jumat', '16:00', '17:00', 'Free', 'Aktif', '0000-00-00'),
(15, 'IN013', 'Senin', '10:00', '12:00', 'Free', 'Tidak Aktif', '0000-00-00'),
(16, 'IN013', 'Senin', '16:00', '17:00', 'Free', 'Aktif', '0000-00-00'),
(17, 'IN013', 'Selasa', '08:00', '10:00', 'Free', 'Aktif', '2020-05-03'),
(18, 'IN013', 'Selasa', '13:00', '15:00', 'Free', 'Aktif', '0000-00-00'),
(19, 'IN013', 'Rabu', '08:00', '10:00', 'Free', 'Aktif', '0000-00-00'),
(20, 'IN013', 'Rabu', '13:00', '15:00', 'Unfree', 'Aktif', '2020-05-05'),
(21, 'IN013', 'Rabu', '15:00', '17:00', 'Free', 'Aktif', '0000-00-00'),
(22, 'IN013', 'Kamis', '08:00', '10:00', 'Free', 'Aktif', '0000-00-00'),
(23, 'IN013', 'Kamis', '10:00', '12:00', 'Free', 'Aktif', '0000-00-00'),
(24, 'IN013', 'Jumat', '16:00', '17:00', 'Free', 'Aktif', '0000-00-00'),
(25, 'IN005', 'Senin', '08:00', '10:00', 'Free', 'Aktif', '0000-00-00'),
(26, 'IN005', 'Senin', '10:00', '12:00', 'Free', 'Aktif', '0000-00-00'),
(27, 'IN005', 'Senin', '12:00', '13:00', 'Unfree', 'Aktif', '2020-03-14'),
(28, 'IN005', 'Senin', '16:00', '17:00', 'Free', 'Aktif', '0000-00-00'),
(29, 'IN005', 'Selasa', '08:00', '10:00', 'Free', 'Aktif', '2020-03-02'),
(30, 'IN005', 'Selasa', '10:00', '12:00', 'Unfree', 'Aktif', '2020-04-27'),
(31, 'IN005', 'Selasa', '12:00', '13:00', 'Free', 'Aktif', '0000-00-00'),
(32, 'IN005', 'Rabu', '11:00', '13:00', 'Unfree', 'Aktif', '2020-02-26'),
(33, 'IN005', 'Kamis', '16:00', '17:00', 'Free', 'Aktif', '0000-00-00'),
(34, 'IN002', 'Senin', '10:00', '12:00', 'Free', 'Aktif', '0000-00-00'),
(35, 'IN002', 'Senin', '12:00', '14:00', 'Free', 'Aktif', '0000-00-00'),
(36, 'IN002', 'Senin', '14:00', '16:00', 'Free', 'Aktif', '2020-03-08'),
(37, 'IN002', 'Senin', '16:00', '17:00', 'Free', 'Aktif', '0000-00-00'),
(38, 'IN002', 'Selasa', '15:00', '17:00', 'Free', 'Aktif', '0000-00-00'),
(39, 'IN002', 'Rabu', '08:00', '10:00', 'Free', 'Aktif', '0000-00-00'),
(40, 'IN002', 'Rabu', '10:00', '12:00', 'Free', 'Aktif', '0000-00-00'),
(41, 'IN002', 'Rabu', '12:00', '13:00', 'Unfree', 'Aktif', '2020-05-05'),
(42, 'IN002', 'Rabu', '15:00', '17:00', 'Free', 'Aktif', '0000-00-00'),
(43, 'IN002', 'Kamis', '13:00', '15:00', 'Free', 'Aktif', '2020-02-26'),
(44, 'IN002', 'Kamis', '15:00', '17:00', 'Free', 'Aktif', '0000-00-00'),
(45, 'IN012', 'Senin', '10:00', '12:00', 'Free', 'Aktif', '2020-03-01'),
(46, 'IN012', 'Senin', '12:00', '13:00', 'Free', 'Aktif', '0000-00-00'),
(47, 'IN012', 'Senin', '16:00', '17:00', 'Free', 'Aktif', '0000-00-00'),
(48, 'IN012', 'Selasa', '08:00', '10:00', 'Free', 'Aktif', '2020-05-04'),
(49, 'IN012', 'Selasa', '16:00', '17:00', 'Free', 'Aktif', '0000-00-00'),
(50, 'IN012', 'Rabu', '08:00', '10:00', 'Free', 'Aktif', '0000-00-00'),
(51, 'IN012', 'Rabu', '16:00', '17:00', 'Free', 'Aktif', '0000-00-00'),
(52, 'IN012', 'Kamis', '08:00', '10:00', 'Free', 'Aktif', '0000-00-00'),
(53, 'IN012', 'Kamis', '10:00', '12:00', 'Free', 'Aktif', '0000-00-00'),
(54, 'IN012', 'Kamis', '12:00', '14:00', 'Free', 'Aktif', '0000-00-00'),
(55, 'IN012', 'Kamis', '14:00', '16:00', 'Free', 'Aktif', '0000-00-00'),
(56, 'IN012', 'Kamis', '16:00', '17:00', 'Free', 'Aktif', '0000-00-00'),
(57, 'IN006', 'Selasa', '08:00', '10:00', 'Free', 'Aktif', '0000-00-00'),
(58, 'IN006', 'Selasa', '16:00', '17:00', 'Free', 'Aktif', '0000-00-00'),
(59, 'IN006', 'Jumat', '15:00', '17:00', 'Free', 'Aktif', '0000-00-00'),
(60, 'IN004', 'Jumat', '08:00', '10:00', 'Free', 'Aktif', '0000-00-00'),
(61, 'IN004', 'Jumat', '10:00', '11:00', 'Free', 'Aktif', '0000-00-00'),
(62, 'IN014', 'Senin', '08:00', '10:00', 'Free', 'Aktif', '2020-02-22'),
(63, 'IN014', 'Senin', '10:00', '12:00', 'Free', 'Aktif', '0000-00-00'),
(64, 'IN014', 'Senin', '12:00', '13:00', 'Free', 'Aktif', '0000-00-00'),
(65, 'IN014', 'Selasa', '08:00', '10:00', 'Free', 'Aktif', '2020-02-22'),
(66, 'IN014', 'Selasa', '10:00', '12:00', 'Free', 'Aktif', '2020-04-26'),
(67, 'IN014', 'Selasa', '12:00', '13:00', 'Free', 'Aktif', '0000-00-00'),
(68, 'IN014', 'Rabu', '10:00', '12:00', 'Free', 'Aktif', '0000-00-00'),
(69, 'IN014', 'Rabu', '12:00', '13:00', 'Free', 'Aktif', '0000-00-00'),
(70, 'IN014', 'Rabu', '16:00', '17:00', 'Free', 'Aktif', '0000-00-00'),
(71, 'IN014', 'Kamis', '08:00', '10:00', 'Free', 'Tidak Aktif', '0000-00-00'),
(72, 'IN014', 'Jumat', '11:00', '13:00', 'Free', 'Aktif', '0000-00-00'),
(73, 'IN014', 'Jumat', '13:00', '15:00', 'Unfree', 'Aktif', '2020-03-12'),
(74, 'IN014', 'Jumat', '15:00', '17:00', 'Free', 'Aktif', '0000-00-00'),
(75, 'IN015', 'Senin', '10:00', '12:00', 'Unfree', 'Aktif', '2020-04-24'),
(76, 'IN015', 'Senin', '12:00', '13:00', 'Free', 'Tidak Aktif', '2020-02-26'),
(77, 'IN015', 'Senin', '15:00', '17:00', 'Unfree', 'Tidak Aktif', '2020-03-04'),
(78, 'IN015', 'Selasa', '08:00', '10:00', 'Free', 'Tidak Aktif', '0000-00-00'),
(79, 'IN015', 'Selasa', '10:00', '12:00', 'Free', 'Tidak Aktif', '0000-00-00'),
(80, 'IN015', 'Selasa', '12:00', '13:00', 'Free', 'Tidak Aktif', '0000-00-00'),
(81, 'IN015', 'Rabu', '10:00', '12:00', 'Unfree', 'Tidak Aktif', '2020-03-10'),
(82, 'IN015', 'Rabu', '12:00', '13:00', 'Free', 'Tidak Aktif', '2020-02-24'),
(83, 'IN015', 'Rabu', '15:00', '17:00', 'Free', 'Tidak Aktif', '0000-00-00'),
(84, 'IN015', 'Kamis', '16:00', '17:00', 'Free', 'Tidak Aktif', '2020-02-24'),
(85, 'IN015', 'Jumat', '11:00', '13:00', 'Free', 'Aktif', '2020-05-05'),
(86, 'IN015', 'Jumat', '13:00', '15:00', 'Unfree', 'Tidak Aktif', '2020-02-26'),
(87, 'IN015', 'Jumat', '15:00', '17:00', 'Free', 'Tidak Aktif', '0000-00-00'),
(88, 'IN008', 'Senin', '13:00', '15:00', 'Free', 'Aktif', '0000-00-00'),
(89, 'IN008', 'Senin', '15:00', '17:00', 'Free', 'Aktif', '0000-00-00'),
(90, 'IN008', 'Selasa', '15:00', '17:00', 'Free', 'Aktif', '0000-00-00'),
(91, 'IN008', 'Rabu', '08:00', '10:00', 'Free', 'Aktif', '0000-00-00'),
(92, 'IN008', 'Rabu', '10:00', '12:00', 'Free', 'Aktif', '0000-00-00'),
(93, 'IN008', 'Rabu', '12:00', '14:00', 'Free', 'Aktif', '0000-00-00'),
(94, 'IN008', 'Rabu', '14:00', '16:00', 'Free', 'Aktif', '0000-00-00'),
(95, 'IN008', 'Kamis', '13:00', '15:00', 'Free', 'Aktif', '0000-00-00'),
(96, 'IN008', 'Kamis', '15:00', '17:00', 'Free', 'Aktif', '0000-00-00'),
(97, 'IN008', 'Jumat', '15:00', '17:00', 'Free', 'Aktif', '0000-00-00'),
(98, 'IN003', 'Senin', '13:00', '15:00', 'Free', 'Tidak Aktif', '0000-00-00'),
(99, 'IN003', 'Senin', '15:00', '17:00', 'Free', 'Aktif', '0000-00-00'),
(100, 'IN003', 'Selasa', '15:00', '17:00', 'Free', 'Aktif', '0000-00-00'),
(101, 'IN003', 'Rabu', '09:00', '11:00', 'Free', 'Tidak Aktif', '2020-03-02'),
(102, 'IN003', 'Rabu', '13:00', '15:00', 'Free', 'Tidak Aktif', '2020-03-06'),
(103, 'IN003', 'Rabu', '15:00', '17:00', 'Free', 'Aktif', '0000-00-00'),
(104, 'IN003', 'Kamis', '13:00', '15:00', 'Free', 'Tidak Aktif', '0000-00-00'),
(105, 'IN003', 'Kamis', '15:00', '17:00', 'Free', 'Aktif', '0000-00-00'),
(106, 'IN003', 'Jumat', '15:00', '17:00', 'Free', 'Aktif', '2020-04-30'),
(107, 'IN011', 'Senin', '09:00', '11:00', 'Free', 'Aktif', '0000-00-00'),
(108, 'IN011', 'Senin', '11:00', '12:00', 'Free', 'Aktif', '0000-00-00'),
(109, 'IN011', 'Senin', '15:00', '16:00', 'Free', 'Aktif', '0000-00-00'),
(110, 'IN011', 'Selasa', '09:00', '11:00', 'Free', 'Aktif', '0000-00-00'),
(111, 'IN011', 'Selasa', '11:00', '12:00', 'Free', 'Aktif', '0000-00-00'),
(112, 'IN011', 'Rabu', '10:00', '12:00', 'Free', 'Aktif', '0000-00-00'),
(113, 'IN011', 'Rabu', '15:00', '16:00', 'Free', 'Aktif', '0000-00-00'),
(114, 'IN011', 'Kamis', '09:00', '10:00', 'Free', 'Aktif', '0000-00-00'),
(115, 'IN011', 'Jumat', '13:00', '15:00', 'Unfree', 'Aktif', '2020-04-30'),
(116, 'IN011', 'Jumat', '15:00', '16:00', 'Free', 'Aktif', '0000-00-00'),
(117, 'IN009', 'Kamis', '13:00', '15:00', 'Free', 'Aktif', '0000-00-00'),
(118, 'IN009', 'Kamis', '15:00', '16:00', 'Free', 'Aktif', '0000-00-00'),
(119, 'IN016', 'Senin', '10:00', '12:00', 'Unfree', 'Aktif', '2020-04-26'),
(120, 'IN016', 'Senin', '12:00', '14:00', 'Free', 'Aktif', '0000-00-00'),
(121, 'IN016', 'Senin', '14:00', '16:00', 'Free', 'Aktif', '0000-00-00'),
(122, 'IN016', 'Senin', '16:00', '17:00', 'Free', 'Aktif', '0000-00-00'),
(123, 'IN016', 'Selasa', '15:00', '17:00', 'Free', 'Aktif', '0000-00-00'),
(124, 'IN016', 'Rabu', '08:00', '10:00', 'Free', 'Aktif', '2020-02-25'),
(125, 'IN016', 'Rabu', '10:00', '12:00', 'Free', 'Aktif', '2020-03-03'),
(126, 'IN016', 'Rabu', '12:00', '13:00', 'Free', 'Aktif', '0000-00-00'),
(127, 'IN016', 'Rabu', '15:00', '17:00', 'Free', 'Aktif', '0000-00-00'),
(128, 'IN016', 'Kamis', '13:00', '15:00', 'Free', 'Aktif', '2020-02-26'),
(129, 'IN016', 'Kamis', '15:00', '17:00', 'Free', 'Aktif', '0000-00-00'),
(130, 'IN001', 'Kamis', '09:00', '11:00', 'Free', 'Aktif', '0000-00-00'),
(131, 'IN001', 'Jumat', '09:00', '11:00', 'Free', 'Aktif', '0000-00-00'),
(132, 'IN018', 'Selasa', '16:00', '17:00', 'Free', 'Aktif', '0000-00-00'),
(133, 'IN018', 'Rabu', '16:00', '17:00', 'Free', 'Aktif', '0000-00-00'),
(134, 'IN022', 'Senin', '08:00', '09:30', 'Free', 'Aktif', '0000-00-00'),
(135, 'IN022', 'Rabu', '13:00', '15:00', 'Free', 'Aktif', '2020-03-09'),
(136, 'IN022', 'Rabu', '15:00', '17:00', 'Free', 'Aktif', '0000-00-00'),
(137, 'IN022', 'Kamis', '08:00', '10:00', 'Free', 'Aktif', '0000-00-00'),
(138, 'IN022', 'Jumat', '08:00', '10:00', 'Free', 'Aktif', '0000-00-00'),
(139, 'IN022', 'Jumat', '10:00', '12:00', 'Free', 'Aktif', '0000-00-00'),
(140, 'IN022', 'Jumat', '13:00', '15:00', 'Free', 'Aktif', '2020-03-02'),
(141, 'IN022', 'Jumat', '15:00', '17:00', 'Free', 'Aktif', '0000-00-00');

-- --------------------------------------------------------

--
-- Stand-in structure for view `list_anggota_absensi`
-- (See below for the actual view)
--
CREATE TABLE `list_anggota_absensi` (
`id_detail_absensi` int(11)
,`id_absensi` char(12)
,`id_internal` char(5)
,`tgl_absen` datetime
,`nama` varchar(50)
,`no_hp` varchar(15)
,`akun_line` varchar(30)
,`username` varchar(50)
,`hak_akses` enum('Kadiv','Sekdiv','Bendahara','Staff Ahli','Manager','Staff')
,`jabatan_managerial` enum('TD','HRD','PR','Kosong')
,`status_sj` enum('Senior','Junior')
,`foto` char(5)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `list_anggota_prove`
-- (See below for the actual view)
--
CREATE TABLE `list_anggota_prove` (
`id_detail_prove` int(5)
,`id_prove` char(10)
,`rating` int(1)
,`deskripsi` text
,`id_eksternal` char(5)
,`nama` varchar(50)
,`no_hp` varchar(15)
,`akun_line` varchar(30)
,`username` varchar(30)
,`angkatan` varchar(4)
,`foto` char(5)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `list_bank_software`
-- (See below for the actual view)
--
CREATE TABLE `list_bank_software` (
`kode_bank_s` char(12)
,`id_eksternal` char(5)
,`nama` varchar(50)
,`no_hp` varchar(15)
,`akun_line` varchar(30)
,`angkatan` varchar(4)
,`foto` char(5)
,`id_jadwal_bs` int(3)
,`hari` enum('Senin','Selasa','Rabu','Kamis','Jumat')
,`jam_mulai` varchar(10)
,`jam_selesai` varchar(10)
,`tanggal_booking` date
,`tanggal_bs` date
,`status_bs` enum('Selesai','Belum Selesai','Batal')
,`id_internal` char(5)
,`nama_internal` varchar(50)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `list_jadwal`
-- (See below for the actual view)
--
CREATE TABLE `list_jadwal` (
`id_jadwal_prove` int(3)
,`id_internal` char(5)
,`hari` enum('Senin','Selasa','Rabu','Kamis','Jumat')
,`jam_mulai` varchar(10)
,`jam_selesai` varchar(10)
,`status_booking` enum('Free','Unfree')
,`status_aktif` enum('Aktif','Tidak Aktif')
,`terakhir_dibooking` date
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `list_prove`
-- (See below for the actual view)
--
CREATE TABLE `list_prove` (
`id_prove` char(10)
,`id_eksternal` char(5)
,`nama_eksternal` varchar(50)
,`id_internal` char(5)
,`nama_internal` varchar(50)
,`id_materi_prove` int(3)
,`nama_materi_prove` varchar(30)
,`id_jadwal_prove` int(3)
,`hari` enum('Senin','Selasa','Rabu','Kamis','Jumat')
,`jam_mulai` varchar(10)
,`jam_selesai` varchar(10)
,`deskripsi_materi` tinytext
,`tanggal_booking` date
,`tanggal_prove` date
,`kode_prove` char(10)
,`kata_sandi` char(5)
,`status_prove` enum('Selesai','Belum Selesai','Batal')
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `list_software`
-- (See below for the actual view)
--
CREATE TABLE `list_software` (
`kode_bank_s` char(12)
,`id_software` int(11)
,`nama` varchar(50)
);

-- --------------------------------------------------------

--
-- Table structure for table `materi_prove`
--

CREATE TABLE `materi_prove` (
  `id_materi_prove` int(3) NOT NULL,
  `nama` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `materi_prove`
--

INSERT INTO `materi_prove` (`id_materi_prove`, `nama`) VALUES
(3, 'Microsoft Excel'),
(4, 'Microsoft Access'),
(5, 'C++'),
(6, 'RStudio'),
(7, 'MATLAB');

-- --------------------------------------------------------

--
-- Table structure for table `prove`
--

CREATE TABLE `prove` (
  `id_prove` char(10) NOT NULL,
  `id_eksternal` char(5) NOT NULL,
  `id_materi_prove` int(3) NOT NULL,
  `id_jadwal_prove` int(3) NOT NULL,
  `deskripsi_materi` tinytext NOT NULL,
  `tanggal_booking` date NOT NULL,
  `tanggal_prove` date NOT NULL,
  `kode_prove` char(10) NOT NULL,
  `kata_sandi` char(5) NOT NULL,
  `status_prove` enum('Selesai','Belum Selesai','Batal') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prove`
--

INSERT INTO `prove` (`id_prove`, `id_eksternal`, `id_materi_prove`, `id_jadwal_prove`, `deskripsi_materi`, `tanggal_booking`, `tanggal_prove`, `kode_prove`, `kata_sandi`, `status_prove`) VALUES
('200222-002', 'EK012', 3, 62, 'prokom', '2020-02-22', '2020-02-24', '200222-002', 'bzYaw', 'Selesai'),
('200223-001', 'EK003', 3, 75, 'materi lanjutan dari kelas prokom, penggunaan fungsi if lebih detail dengan kasus yang berbeda', '2020-02-23', '2020-02-24', '200223-001', 'EavVo', 'Selesai'),
('200223-002', 'EK005', 3, 85, 'materi if, or, and, dan lainnya yang berhubungan sama logical', '2020-02-23', '2020-02-28', '200223-002', 'x0FNi', 'Batal'),
('200224-001', 'EK018', 3, 81, 'microsoft excel (fungsi if, vlookup, dan hlookup)', '2020-02-24', '2020-02-26', '200224-001', 'n66TN', 'Selesai'),
('200224-002', 'EK020', 3, 84, 'Ms.Excel - Analisis data', '2020-02-24', '2020-02-27', '200224-002', 'CFnFI', 'Selesai'),
('200224-003', 'EK004', 3, 82, 'ms. excel', '2020-02-24', '2020-02-26', '200224-003', 'qBRwP', 'Selesai'),
('200225-001', 'EK022', 5, 124, 'dari 0', '2020-02-25', '2020-02-26', '200225-001', 'WteKJ', 'Selesai'),
('200226-001', 'EK008', 3, 43, 'Microsoft Excel & Binner', '2020-02-26', '2020-02-27', '200226-001', 'VmBwC', 'Batal'),
('200226-002', 'EK006', 3, 128, 'persiapan kuis prokom', '2020-02-26', '2020-02-27', '200226-002', 'xnNl0', 'Selesai'),
('200226-003', 'EK025', 3, 76, 'Analisis data menggunakan excel', '2020-02-26', '2020-03-02', '200226-003', '1xhGR', 'Selesai'),
('200227-001', 'EK011', 3, 81, 'materi quiz wkwk', '2020-02-27', '2020-03-02', '200227-001', '3CooB', 'Selesai'),
('200227-002', 'EK024', 3, 75, 'Persiapan Kuis', '2020-02-27', '2020-03-02', '200227-002', 'h2Q4q', 'Selesai'),
('200301-001', 'EK052', 3, 45, 'Tentang if and or vlookup hlookup', '2020-03-01', '2020-03-02', '200301-001', 'KJKtt', 'Selesai'),
('200302-001', 'EK003', 3, 101, 'if,or,and,lookup,dsv', '2020-03-02', '2020-03-04', '200302-001', '2UaIt', 'Selesai'),
('200302-003', 'EK048', 3, 29, 'Materi Kuis 1', '2020-03-02', '2020-03-03', '200302-003', 'sLqRb', 'Selesai'),
('200302-004', 'EK056', 3, 17, 'latihan soal kuis', '2020-03-02', '2020-03-03', '200302-004', 'pSsWW', 'Batal'),
('200303-001', 'EK022', 3, 125, 'besok kuis mbak, belajar if hlookup, vlookup, dll', '2020-03-03', '2020-03-04', '200303-001', '1r8ic', 'Selesai'),
('200304-001', 'EK065', 3, 77, 'mau belajar tentang  fungsi if', '2020-03-04', '2020-03-09', '200304-001', '7uQbO', 'Belum Selesai'),
('200306-001', 'EK068', 3, 102, 'VLookup, HLookup', '2020-03-06', '2020-03-11', '200306-001', 'C2uAk', 'Selesai'),
('200308-001', 'EK004', 4, 75, 'ms.access', '2020-03-08', '2020-03-09', '200308-001', 'dtbW4', 'Belum Selesai'),
('200308-002', 'EK054', 3, 36, 'Microsoft Excel-Lookup', '2020-03-08', '2020-03-09', '200308-002', 'pUwpN', 'Selesai'),
('200309-001', 'EK023', 6, 135, 'rstudio', '2020-03-09', '2020-03-11', '200309-001', 'MFIx7', 'Selesai'),
('200312-001', 'EK042', 4, 73, 'pengoperasian ms access', '2020-03-12', '2020-03-13', '200312-001', 'DtOMV', 'Belum Selesai'),
('200312-002', 'EK020', 4, 85, 'Ms. Access', '2020-03-12', '2020-03-13', '200312-002', 'WHlM4', 'Selesai'),
('200314-001', 'EK032', 4, 27, 'Latihan soal', '2020-03-14', '2020-03-16', '200314-001', 'hfdvU', 'Belum Selesai'),
('200424-001', 'EK007', 5, 75, 'pernyataan bersyarat dan looping', '2020-04-24', '2020-04-27', '200424-001', '4DAb9', 'Belum Selesai'),
('200426-001', 'EK008', 5, 119, 'looping (for,while, do while', '2020-04-26', '2020-04-27', '200426-001', '2rJx0', 'Belum Selesai'),
('200427-001', 'EK065', 5, 30, 'matrix', '2020-04-27', '2020-04-28', '200427-001', '83zCg', 'Belum Selesai'),
('200430-001', 'EK042', 5, 106, 'looping', '2020-04-30', '2020-05-01', '200430-001', 'o6BVK', 'Selesai'),
('200430-002', 'EK026', 5, 115, 'co varian, regresi sederhana, latihan soal dr Kak Aubert mungkin punya', '2020-04-30', '2020-05-01', '200430-002', 'M2noE', 'Belum Selesai'),
('200503-001', 'EK020', 5, 17, 'for bersarang + array', '2020-05-03', '2020-05-05', '200503-001', 'ifG90', 'Selesai'),
('200505-001', 'EK020', 5, 85, 'Array 2 dimensi, Matriks', '2020-05-05', '2020-05-08', '200505-001', 'WDE0v', 'Selesai'),
('200505-002', 'EK048', 5, 20, 'persiapan eas', '2020-05-05', '2020-05-06', '200505-002', 'ZQU0R', 'Belum Selesai'),
('200505-003', 'EK010', 5, 41, 'array dua dimensi, cara membuat matriks perkalian, invers, transpose, determinan', '2020-05-05', '2020-05-06', '200505-003', 'GGPWW', 'Belum Selesai');

-- --------------------------------------------------------

--
-- Table structure for table `software`
--

CREATE TABLE `software` (
  `id_software` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `software`
--

INSERT INTO `software` (`id_software`, `nama`) VALUES
(2, 'Minitab '),
(3, 'R'),
(4, 'SPSS'),
(6, 'C++'),
(7, 'MatLab 32bit'),
(8, 'MatLab 64bit');

-- --------------------------------------------------------

--
-- Table structure for table `tutorial`
--

CREATE TABLE `tutorial` (
  `id_tutorial` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `embed` text NOT NULL,
  `tanggal_upload` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tutorial`
--

INSERT INTO `tutorial` (`id_tutorial`, `judul`, `foto`, `deskripsi`, `embed`, `tanggal_upload`) VALUES
(3, 'Tutorial Software C++', 'Tutorial_Software_C++.jpg', 'C++ merupakan bahasa pemrograman yang memiliki sifat Pemrograman berorientasi objek, Untuk menyelesaikan masalah, C++ melakukan langkah pertama dengan menjelaskan class-class yang merupakan anak class yang dibuat sebelumnya sebagai abstraksi dari object-object fisik, Class tersebut berisi keadaan object, anggota-anggotanya dan kemampuan dari objectnya, Setelah beberapa Class dibuat kemudian masalah dipecahkan dengan Class', 'https://www.youtube.com/embed/89EqXqiGL3Q', '2020-01-31'),
(4, 'Tutorial Software R', 'Tutorial_Software_R.jpg', 'R merupakan bahasa pemrograman dan perangkat lunak untuk analisis statistika dan grafik. R menyediakan berbagai teknik statistika (permodelan linier dan nonlinier, uji statistik klasik, analisis deret waktu, klasifikasi, klasterisasi, dan sebagainya) serta grafik. R, sebagaimana S, dirancang sebagai bahasa komputer sebenarnya, dan mengizinkan penggunanya untuk menambah fungsi tambahan dengan mendefinisikan fungsi baru. ', 'https://www.youtube.com/embed/wTEvZq0-fmg', '2020-02-29');

-- --------------------------------------------------------

--
-- Structure for view `list_anggota_absensi`
--
DROP TABLE IF EXISTS `list_anggota_absensi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`sccy2224`@`localhost` SQL SECURITY DEFINER VIEW `list_anggota_absensi`  AS  select `da`.`id_detail_absensi` AS `id_detail_absensi`,`da`.`id_absensi` AS `id_absensi`,`da`.`id_internal` AS `id_internal`,`da`.`tgl_absen` AS `tgl_absen`,`i`.`nama` AS `nama`,`i`.`no_hp` AS `no_hp`,`i`.`akun_line` AS `akun_line`,`i`.`username` AS `username`,`i`.`hak_akses` AS `hak_akses`,`i`.`jabatan_managerial` AS `jabatan_managerial`,`i`.`status_sj` AS `status_sj`,`i`.`foto` AS `foto` from (`detail_absensi` `da` join `internal` `i` on(`da`.`id_internal` = `i`.`id_internal`)) order by `da`.`id_detail_absensi` ;

-- --------------------------------------------------------

--
-- Structure for view `list_anggota_prove`
--
DROP TABLE IF EXISTS `list_anggota_prove`;

CREATE ALGORITHM=UNDEFINED DEFINER=`sccy2224`@`localhost` SQL SECURITY DEFINER VIEW `list_anggota_prove`  AS  select `dp`.`id_detail_prove` AS `id_detail_prove`,`dp`.`id_prove` AS `id_prove`,`dp`.`rating` AS `rating`,`dp`.`deskripsi` AS `deskripsi`,`e`.`id_eksternal` AS `id_eksternal`,`e`.`nama` AS `nama`,`e`.`no_hp` AS `no_hp`,`e`.`akun_line` AS `akun_line`,`e`.`username` AS `username`,`e`.`angkatan` AS `angkatan`,`e`.`foto` AS `foto` from (`detail_prove` `dp` join `eksternal` `e` on(`dp`.`id_eksternal` = `e`.`id_eksternal`)) order by `dp`.`id_detail_prove` ;

-- --------------------------------------------------------

--
-- Structure for view `list_bank_software`
--
DROP TABLE IF EXISTS `list_bank_software`;

CREATE ALGORITHM=UNDEFINED DEFINER=`sccy2224`@`localhost` SQL SECURITY DEFINER VIEW `list_bank_software`  AS  select `bs`.`kode_bank_s` AS `kode_bank_s`,`bs`.`id_eksternal` AS `id_eksternal`,`e`.`nama` AS `nama`,`e`.`no_hp` AS `no_hp`,`e`.`akun_line` AS `akun_line`,`e`.`angkatan` AS `angkatan`,`e`.`foto` AS `foto`,`bs`.`id_jadwal_bs` AS `id_jadwal_bs`,`jbs`.`hari` AS `hari`,`jbs`.`jam_mulai` AS `jam_mulai`,`jbs`.`jam_selesai` AS `jam_selesai`,`bs`.`tanggal_booking` AS `tanggal_booking`,`bs`.`tanggal_bs` AS `tanggal_bs`,`bs`.`status_bs` AS `status_bs`,`jbs`.`id_internal` AS `id_internal`,`i`.`nama` AS `nama_internal` from (((`bank_software` `bs` join `jadwal_bank_software` `jbs` on(`bs`.`id_jadwal_bs` = `jbs`.`id_jadwal_bs`)) join `internal` `i` on(`jbs`.`id_internal` = `i`.`id_internal`)) join `eksternal` `e` on(`bs`.`id_eksternal` = `e`.`id_eksternal`)) order by `bs`.`tanggal_bs` desc,`bs`.`tanggal_booking` desc,`bs`.`kode_bank_s` desc ;

-- --------------------------------------------------------

--
-- Structure for view `list_jadwal`
--
DROP TABLE IF EXISTS `list_jadwal`;

CREATE ALGORITHM=UNDEFINED DEFINER=`sccy2224`@`localhost` SQL SECURITY DEFINER VIEW `list_jadwal`  AS  select `jadwal_prove`.`id_jadwal_prove` AS `id_jadwal_prove`,`jadwal_prove`.`id_internal` AS `id_internal`,`jadwal_prove`.`hari` AS `hari`,`jadwal_prove`.`jam_mulai` AS `jam_mulai`,`jadwal_prove`.`jam_selesai` AS `jam_selesai`,`jadwal_prove`.`status_booking` AS `status_booking`,`jadwal_prove`.`status_aktif` AS `status_aktif`,`jadwal_prove`.`terakhir_dibooking` AS `terakhir_dibooking` from `jadwal_prove` order by `jadwal_prove`.`hari` ;

-- --------------------------------------------------------

--
-- Structure for view `list_prove`
--
DROP TABLE IF EXISTS `list_prove`;

CREATE ALGORITHM=UNDEFINED DEFINER=`sccy2224`@`localhost` SQL SECURITY DEFINER VIEW `list_prove`  AS  select `dp`.`id_prove` AS `id_prove`,`dp`.`id_eksternal` AS `id_eksternal`,`e`.`nama` AS `nama_eksternal`,`i`.`id_internal` AS `id_internal`,`i`.`nama` AS `nama_internal`,`mp`.`id_materi_prove` AS `id_materi_prove`,`mp`.`nama` AS `nama_materi_prove`,`jp`.`id_jadwal_prove` AS `id_jadwal_prove`,`jp`.`hari` AS `hari`,`jp`.`jam_mulai` AS `jam_mulai`,`jp`.`jam_selesai` AS `jam_selesai`,`p`.`deskripsi_materi` AS `deskripsi_materi`,`p`.`tanggal_booking` AS `tanggal_booking`,`p`.`tanggal_prove` AS `tanggal_prove`,`p`.`kode_prove` AS `kode_prove`,`p`.`kata_sandi` AS `kata_sandi`,`p`.`status_prove` AS `status_prove` from (((((`prove` `p` join `eksternal` `e` on(`p`.`id_eksternal` = `e`.`id_eksternal`)) join `jadwal_prove` `jp` on(`p`.`id_jadwal_prove` = `jp`.`id_jadwal_prove`)) join `internal` `i` on(`jp`.`id_internal` = `i`.`id_internal`)) join `materi_prove` `mp` on(`p`.`id_materi_prove` = `mp`.`id_materi_prove`)) join `detail_prove` `dp` on(`p`.`id_prove` = `dp`.`id_prove`)) order by `p`.`id_prove` desc ;

-- --------------------------------------------------------

--
-- Structure for view `list_software`
--
DROP TABLE IF EXISTS `list_software`;

CREATE ALGORITHM=UNDEFINED DEFINER=`sccy2224`@`localhost` SQL SECURITY DEFINER VIEW `list_software`  AS  select `db`.`kode_bank_s` AS `kode_bank_s`,`db`.`id_software` AS `id_software`,`s`.`nama` AS `nama` from ((`detail_bs` `db` join `software` `s` on(`db`.`id_software` = `s`.`id_software`)) join `bank_software` on(`db`.`kode_bank_s` = `bank_software`.`kode_bank_s`)) order by `db`.`id_detail_bs` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absensi`
--
ALTER TABLE `absensi`
  ADD PRIMARY KEY (`id_absensi`);

--
-- Indexes for table `bank_software`
--
ALTER TABLE `bank_software`
  ADD PRIMARY KEY (`kode_bank_s`);

--
-- Indexes for table `detail_absensi`
--
ALTER TABLE `detail_absensi`
  ADD PRIMARY KEY (`id_detail_absensi`);

--
-- Indexes for table `detail_bs`
--
ALTER TABLE `detail_bs`
  ADD PRIMARY KEY (`id_detail_bs`);

--
-- Indexes for table `detail_prove`
--
ALTER TABLE `detail_prove`
  ADD PRIMARY KEY (`id_detail_prove`);

--
-- Indexes for table `eksternal`
--
ALTER TABLE `eksternal`
  ADD PRIMARY KEY (`id_eksternal`);

--
-- Indexes for table `event_sst`
--
ALTER TABLE `event_sst`
  ADD PRIMARY KEY (`id_event_sst`);

--
-- Indexes for table `internal`
--
ALTER TABLE `internal`
  ADD PRIMARY KEY (`id_internal`);

--
-- Indexes for table `jadwal_bank_software`
--
ALTER TABLE `jadwal_bank_software`
  ADD PRIMARY KEY (`id_jadwal_bs`);

--
-- Indexes for table `jadwal_prove`
--
ALTER TABLE `jadwal_prove`
  ADD PRIMARY KEY (`id_jadwal_prove`);

--
-- Indexes for table `materi_prove`
--
ALTER TABLE `materi_prove`
  ADD PRIMARY KEY (`id_materi_prove`);

--
-- Indexes for table `prove`
--
ALTER TABLE `prove`
  ADD PRIMARY KEY (`id_prove`);

--
-- Indexes for table `software`
--
ALTER TABLE `software`
  ADD PRIMARY KEY (`id_software`);

--
-- Indexes for table `tutorial`
--
ALTER TABLE `tutorial`
  ADD PRIMARY KEY (`id_tutorial`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_absensi`
--
ALTER TABLE `detail_absensi`
  MODIFY `id_detail_absensi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `detail_bs`
--
ALTER TABLE `detail_bs`
  MODIFY `id_detail_bs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `detail_prove`
--
ALTER TABLE `detail_prove`
  MODIFY `id_detail_prove` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `event_sst`
--
ALTER TABLE `event_sst`
  MODIFY `id_event_sst` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `jadwal_bank_software`
--
ALTER TABLE `jadwal_bank_software`
  MODIFY `id_jadwal_bs` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `jadwal_prove`
--
ALTER TABLE `jadwal_prove`
  MODIFY `id_jadwal_prove` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `materi_prove`
--
ALTER TABLE `materi_prove`
  MODIFY `id_materi_prove` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `software`
--
ALTER TABLE `software`
  MODIFY `id_software` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tutorial`
--
ALTER TABLE `tutorial`
  MODIFY `id_tutorial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
