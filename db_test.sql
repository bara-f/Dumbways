-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Mar 2020 pada 14.18
-- Versi server: 10.3.16-MariaDB
-- Versi PHP: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_test`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `comments_tb`
--

CREATE TABLE `comments_tb` (
  `id_comments` int(11) NOT NULL,
  `comment` varchar(2000) NOT NULL,
  `postId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `comments_tb`
--

INSERT INTO `comments_tb` (`id_comments`, `comment`, `postId`) VALUES
(1, 'jenis binatang nya ada berapa?\r\n', 1),
(4, 'jenis binatang nya apa saja ?', 1),
(5, 'kebun binatang nya dimana', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `post_tb`
--

CREATE TABLE `post_tb` (
  `id_post` int(11) NOT NULL,
  `title` varchar(1000) NOT NULL,
  `content` text NOT NULL,
  `createdBy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `post_tb`
--

INSERT INTO `post_tb` (`id_post`, `title`, `content`, `createdBy`) VALUES
(1, 'Artikel Kebun Binatang DumbWays\r\n', 'Kebun Binatang Ragunan adalah sebuah kebun binatang yang terletak di daerah Ragunan, Pasar Minggu, Jakarta Selatan, Indonesia. Kebun binatang seluas 140 hektare ini didirikan pada tahun 1864. Di dalamnya, terdapat berbagai koleksi yang terdiri dari', 1),
(2, 'kebun binatang ragunan', 'kebun binatang ragunan adalah kebun binatang yang terletak di daerah jaga karsa', 2),
(3, 'Tempat Wisata Ancol\r\n', 'Kebun Binatang Ragunan adalah sebuah kebun binatang yang terletak di daerah Ragunan, Pasar Minggu, Jakarta Selatan, Indonesia. Kebun binatang seluas 140 hektare ini didirikan pada tahun 1864. Di dalamnya, terdapat berbagai koleksi yang terdiri dari', 1),
(4, 'Lawang Sewu Semarang', 'kebun binatang ragunan adalah kebun binatang yang terletak di daerah jaga karsakebun binatang ragunan adalah kebun binatang yang terletak di daerah jaga karsakebun binatang ragunan adalah kebun binatang yang terletak di daerah jaga karsa', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_tb`
--

CREATE TABLE `user_tb` (
  `id_user` int(11) NOT NULL,
  `name` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_tb`
--

INSERT INTO `user_tb` (`id_user`, `name`) VALUES
(1, 'Asep DumbWays'),
(2, 'brian fadly');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `comments_tb`
--
ALTER TABLE `comments_tb`
  ADD PRIMARY KEY (`id_comments`);

--
-- Indeks untuk tabel `post_tb`
--
ALTER TABLE `post_tb`
  ADD PRIMARY KEY (`id_post`);

--
-- Indeks untuk tabel `user_tb`
--
ALTER TABLE `user_tb`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `comments_tb`
--
ALTER TABLE `comments_tb`
  MODIFY `id_comments` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `post_tb`
--
ALTER TABLE `post_tb`
  MODIFY `id_post` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `user_tb`
--
ALTER TABLE `user_tb`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
