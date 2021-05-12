-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 12, 2021 at 09:39 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistemskripsi_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `id` int(23) NOT NULL,
  `pengirim` varchar(50) DEFAULT NULL,
  `penerima` varchar(50) DEFAULT NULL,
  `chat` text DEFAULT NULL,
  `file` varchar(100) DEFAULT NULL,
  `chatTime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`id`, `pengirim`, `penerima`, `chat`, `file`, `chatTime`) VALUES
(12, '10118182', '100100', '', '', '2021-05-12 05:26:02'),
(13, '10118182', '100100', '', '', '2021-05-12 05:26:17'),
(14, '100100', '10118182', '', '', '2021-05-12 05:27:50'),
(15, '10118182', '100100', '', '', '2021-05-12 05:31:20'),
(16, '10118182', '100100', 'thytht', '', '2021-05-12 05:35:33'),
(17, '100100', '10118182', 'akusiapa ?', '', '2021-05-12 05:35:57'),
(18, '10118182', '100100', 'kamu manusia ', '', '2021-05-12 05:36:04'),
(19, '100100', '10118182', 'haha, aslinya ?', '', '2021-05-12 05:36:20'),
(20, '100100', '10118183', 'kamu siapa ?', '', '2021-05-12 05:36:45'),
(21, '10118183', '100100', 'Aku hadi pa', '', '2021-05-12 05:37:23'),
(22, '10118182', '100100', 'hjsdjsdh', '', '2021-05-12 05:50:59'),
(23, '10118182', '100100', '', '', '2021-05-12 05:51:05'),
(24, '10118182', '100100', '', '', '2021-05-12 05:53:15'),
(25, '10118182', '100100', '', '', '2021-05-12 05:54:50'),
(26, '10118182', '100100', '', '', '2021-05-12 05:55:15'),
(27, '10118182', '100100', 'ghhj', '', '2021-05-12 06:00:26'),
(28, '100100', '10118182', 'pa kamu meni spam', '', '2021-05-12 06:00:56'),
(29, '10118182', '100100', 'haha', '', '2021-05-12 06:02:00'),
(30, '10118182', '100100', 'hayu ah', '', '2021-05-12 06:02:36'),
(31, '100100', '10118182', 'kamana ?', '', '2021-05-12 06:02:57'),
(32, '10118182', '100100', 'kamana weh milik mah', '', '2021-05-12 06:03:14'),
(33, 'admin', '100100', 'hai hartono', '', '2021-05-12 06:26:47'),
(34, '100100', 'admin', 'iya min', '', '2021-05-12 06:34:24'),
(35, 'admin', '100100', 'nanti kamu ke ruangan say ya', '', '2021-05-12 06:43:45'),
(36, '10118182', '100100', 'pa sia saha ?', '', '2021-05-12 07:18:20');

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `nidn` int(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jurusan` varchar(30) NOT NULL,
  `konsentrasi` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`nidn`, `nama`, `jurusan`, `konsentrasi`, `email`) VALUES
(100100, 'Hartono H.', 'Teknik Informatika', 'Android', 'harto@gmail.com'),
(100101, 'Lisnawati A.', 'Kimia', 'Riset', 'lisna@gmail.com'),
(100102, 'Permana K.', 'Teknik Informatika', 'Robotic', 'permana@gmail.com'),
(100103, 'Riani L.', 'Teknik Informatika', 'AI', 'riani@gmail.com'),
(100104, 'Hermawan S. ', 'Teknik Informatika', 'Android', 'hermawan@gmail.com'),
(100132, 'Agung Gumilah SH', 'Teknik Informatika', 'AI', 'w@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `fakultas`
--

CREATE TABLE `fakultas` (
  `id_fak` varchar(8) NOT NULL,
  `fakultas` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fakultas`
--

INSERT INTO `fakultas` (`id_fak`, `fakultas`) VALUES
('112', 'Teknik Informatika'),
('113', 'Komunikasi'),
('114', 'Kimia'),
('115', 'Perkantoran');

-- --------------------------------------------------------

--
-- Table structure for table `konsentrasi`
--

CREATE TABLE `konsentrasi` (
  `id_kon` varchar(8) NOT NULL,
  `konsentrasi` varchar(30) NOT NULL,
  `fakultas` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `konsentrasi`
--

INSERT INTO `konsentrasi` (`id_kon`, `konsentrasi`, `fakultas`) VALUES
('221', 'Android', 'Teknik Informatika'),
('222', 'Robotic', 'Teknik Informatika'),
('223', 'AI', 'Teknik Informatika'),
('224', 'Riset', 'Kimia');

-- --------------------------------------------------------

--
-- Table structure for table `list_skripsi`
--

CREATE TABLE `list_skripsi` (
  `id_skripsi` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `file` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` int(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jurusan` varchar(30) NOT NULL,
  `konsentrasi` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `jurusan`, `konsentrasi`, `email`, `status`) VALUES
(10118182, 'Budi budiman', 'Teknik Informatika', 'Android', 'budi@gmail.com', 'Skripsi'),
(10118183, 'Hadi Perban', 'Teknik Informatika', 'Android', 'hadi@gmail.com', 'Skripsi'),
(10118184, 'Ahmad Karbit', 'Teknik Informatika', 'Android', 'ahmad@gmail.com', 'Skripsi'),
(10118185, 'Mamat Rante', 'Kimia', 'Riset', 'mamat@gmail.com', 'Skripsi'),
(10118186, 'Opik Bedog', 'Teknik Informatika', 'AI', 'opik@gmail.com', 'Mahasiswa'),
(10118187, 'Asep Semen', 'Kimia', 'Riset', 'asep@gmail.com', 'Mahasiswa'),
(10118212, 'Rizky Aksyal Budiman', 'Teknik Informatika', 'Robotic', 'user1@gmail.com', 'Mahasiswa');

-- --------------------------------------------------------

--
-- Table structure for table `skripsi`
--

CREATE TABLE `skripsi` (
  `id_skripsi` int(8) NOT NULL,
  `judul` text NOT NULL,
  `deskripsi` text NOT NULL,
  `nama` varchar(30) NOT NULL,
  `dosen` varchar(30) NOT NULL,
  `status` varchar(20) NOT NULL,
  `konsentrasi` varchar(30) NOT NULL,
  `des_dosen` text NOT NULL,
  `file` varchar(100) NOT NULL,
  `nidn` varchar(10) NOT NULL,
  `nim` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `skripsi`
--

INSERT INTO `skripsi` (`id_skripsi`, `judul`, `deskripsi`, `nama`, `dosen`, `status`, `konsentrasi`, `des_dosen`, `file`, `nidn`, `nim`) VALUES
(35, 'Sistem IOT', 'alam proses. Silahkan ajukan ide skripsimu selengkap dan sebagus mungkin ya!!. Isi form tersebut untuk mengajukan ide skripsi yang ingin kamu ajukan. Kamu bisa mengajukan ide skripsi sebanyak mungkin. Tet', 'Budi budiman', 'Hartono H.', 'Diterima', 'Android', 'jkdsgkgfsd', 'Sistem IOT_35.pdf', '100100', '10118182'),
(37, 'Aplikasi oarkir cerdad', 'Nzjsgsjsjshsbsbbs', 'Hadi Perban', 'Hartono H.', 'Tunggu', 'Android', '', 'Aplikasi oarkir cerdad_37.pdf', '100100', '10118183');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `role` int(1) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `user` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `gambar` varbinary(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`role`, `nama`, `user`, `password`, `gambar`) VALUES
(1, 'Admin', 'admin', 'admin', 0x68747470733a2f2f7074657475746f7269616c732e636f6d2f696d616765732f757365722d70726f66696c652e706e67),
(3, 'Budi budiman', '10118182', 'mahasiswa', 0x68747470733a2f2f7074657475746f7269616c732e636f6d2f696d616765732f757365722d70726f66696c652e706e67),
(3, 'Hadi Perban', '10118183', 'mahasiswa', 0x68747470733a2f2f7074657475746f7269616c732e636f6d2f696d616765732f757365722d70726f66696c652e706e67),
(3, 'Ahmad Karbit', '10118184', 'mahasiswa', 0x68747470733a2f2f7074657475746f7269616c732e636f6d2f696d616765732f757365722d70726f66696c652e706e67),
(3, 'Mamat Rante', '10118185', 'mahasiswa', 0x68747470733a2f2f7074657475746f7269616c732e636f6d2f696d616765732f757365722d70726f66696c652e706e67),
(3, 'Opik Bedog', '10118186', 'mahasiswa', 0x68747470733a2f2f7074657475746f7269616c732e636f6d2f696d616765732f757365722d70726f66696c652e706e67),
(3, 'Asep Semen', '10118187', 'mahasiswa', 0x68747470733a2f2f7074657475746f7269616c732e636f6d2f696d616765732f757365722d70726f66696c652e706e67),
(2, 'Hartono H.', '100100', 'dosen', 0x68747470733a2f2f7074657475746f7269616c732e636f6d2f696d616765732f757365722d70726f66696c652e706e67),
(2, 'Lisnawati A.', '100101', 'dosen', 0x68747470733a2f2f7074657475746f7269616c732e636f6d2f696d616765732f757365722d70726f66696c652e706e67),
(2, 'Permana K.', '100102', 'dosen', 0x68747470733a2f2f7074657475746f7269616c732e636f6d2f696d616765732f757365722d70726f66696c652e706e67),
(2, 'Riani L.', '100103', 'dosen', 0x68747470733a2f2f7074657475746f7269616c732e636f6d2f696d616765732f757365722d70726f66696c652e706e67),
(2, 'Hermawan S. ', '100104', 'dosen', 0x68747470733a2f2f7074657475746f7269616c732e636f6d2f696d616765732f757365722d70726f66696c652e706e67),
(3, 'Rizky Aksyal Budiman', '10118212', 'mahasiswa', 0x68747470733a2f2f7074657475746f7269616c732e636f6d2f696d616765732f757365722d70726f66696c652e706e67),
(2, 'Agung Gumilah SH', '100132', 'dosen', 0x6173736574732f696d672f6176617461722f6176617461722d322e706e67);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`nidn`);

--
-- Indexes for table `fakultas`
--
ALTER TABLE `fakultas`
  ADD PRIMARY KEY (`id_fak`);

--
-- Indexes for table `konsentrasi`
--
ALTER TABLE `konsentrasi`
  ADD PRIMARY KEY (`id_kon`);

--
-- Indexes for table `list_skripsi`
--
ALTER TABLE `list_skripsi`
  ADD PRIMARY KEY (`id_skripsi`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `skripsi`
--
ALTER TABLE `skripsi`
  ADD PRIMARY KEY (`id_skripsi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(23) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `list_skripsi`
--
ALTER TABLE `list_skripsi`
  MODIFY `id_skripsi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `skripsi`
--
ALTER TABLE `skripsi`
  MODIFY `id_skripsi` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
