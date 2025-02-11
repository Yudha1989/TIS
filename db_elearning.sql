-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Feb 2025 pada 16.43
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_elearning`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id_admin` int(11) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `pass` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_admin`
--

INSERT INTO `tb_admin` (`id_admin`, `nama_lengkap`, `alamat`, `no_telp`, `email`, `username`, `password`, `pass`) VALUES
(1, 'Yudha Dwie Gustian', 'Perumahan BCL 3 Kaliwadas, Sumber - Kab. Cirebon', '085224655616', 'yudha.jbt@gmail.com', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_berita`
--

CREATE TABLE `tb_berita` (
  `id_berita` int(11) NOT NULL,
  `judul` text NOT NULL,
  `isi` longtext NOT NULL,
  `tgl_posting` date NOT NULL,
  `penerbit` varchar(10) NOT NULL,
  `status` enum('aktif','tidak aktif') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_berita`
--

INSERT INTO `tb_berita` (`id_berita`, `judul`, `isi`, `tgl_posting`, `penerbit`, `status`) VALUES
(1, 'Ciri-ciri WhatsApp Sedang dalam Panggilan Lain, Cek Tanda Ini\r\n\r\n', 'WhatsApp atau biasa disingkat WA memiliki tanda atau status yang memungkinkan pengguna mengetahui pengguna lain apakah sedang melakukan panggilan telepon atau video dengan orang lain. Status WA sedang dalam panggilan lain ini bakal berguna ketika pengguna hendak telepon pengguna lain. Dengan status, pengguna jadi bisa mengetahui seseorang sedang memungkinkan buat dihubungi atau tidak.\r\nAkan tetapi, tanda WA sedang dalam panggilan lain sayangnya tidak muncul secara langsung. Dengan kata lain, WhatsApp tidak menampilkan status yang bertuliskan, misalnya, “kontak sedang dalam panggilan lain” saat pengguna menghubunginya. Lantas, sebenarnya apa tanda WhatsApp sedang dalam panggilan lain? Pada fitur telepon, terdapat tanda yang dapat dipakai untuk mengetahui WA sedang dalam panggilan lain. Adapun ciri-ciri WA sedang dalam panggilan lain adalah sebagai berikut.\r\nCiri-ciri WA sedang dalam panggilan lain Terdapat beberapa ciri WA sedang dalam panggilan lain. Berdasarkan percobaan KompasTekno, ciri-ciri WhatsApp sedang dalam panggilan lain pada kontak yang hendak ditelepon adalah muncul status “Calling” atau “Memanggil”. Sistem Tak Siap, Pemerintah-DPR Sepakat Coretax Belum Berlaku Penuh Tahun 2025  Artikel Kompas.id Status “Calling” bakal muncul di layar WhatsApp penelepon saat kontak yang dihubungi sedang berada di panggilan lain. Contoh status “Calling” yang menandakan kontak lain sedang berada di panggilan lain.\r\nStatus “Calling” seperti gambar di atas bisa menjadi ciri-ciri WhatsApp sedang dalam panggilan lain apabila terdapat tanda lain yang mengikuti. Adapun tanda lain itu adalah WhatsApp kontak lain yang hendak dihubungi harus dalam kondisi online.\r\nMaksud dari kondisi online tersebut yaitu ponsel milik kontak lain tidak mati dan aplikasi WhatsApp terhubung dengan jaringan internet. Jika muncul status “Calling” dan WhatsApp kontak lain online maka kontak tersebut kemungkinan besar berada dalam panggilan lain. Kondisi WhatsApp online pada kontak lain dibutuhkan untuk memastikan status “Calling” pada layar penelepon merupakan tanda bahwa kontak tersebut kemungkinan besar sedang berada dalam panggilan lain. Untuk diketahui, status memanggil di WA saat telepon sejatinya punya beberapa arti. Status “Calling” bisa berarti WhatsApp sedang berada dalam panggilan lain jika akun WhatsApp dari kontak lain itu statusnya online. Kemudian, status memanggil di WA juga bisa berarti panggilan pengguna tidak masuk ke kontak lain. Pada kondisi ini, arti memanggil di WA adalah status yang menunjukkan bahwa pengguna atau orang yang ditelepon tidak terhubung dengan koneksi internet alias offline. Sebagaimana umum diketahui, layanan WhatsApp bertumpu dengan koneksi internet. Jika WhatsApp seseorang tidak terhubung dengan koneksi internet, saat pengguna menghubunginya dengan panggilan telepon, maka bakal muncul status memanggil. Bila muncul status memanggil di WA pada kondisi ini, panggilan yang dilakukan pengguna tidak akan masuk ke pengguna lain. Orang yang dihubungi tidak akan menerima notifikasi panggilan masuk juga. Tidak terhubungnya WhatsApp seseorang dengan koneksi internet bisa disebabkan karena beberapa hal, bisa jadi ponselnya mati atau bisa juga ponsel tidak memiliki koneksi internet yang memadai akibat berada di luar jangkauan area.\r\n\r\n\r\n', '2025-01-15', 'admin', 'aktif'),
(2, 'Pengguna iPhone 7 Bisa Dapat Kompensasi dari Apple, Syaratnya?\r\n\r\n', 'Sejumlah pengguna iPhone 7 dan iPhone 7 Plus yang mendapati ponselnya bermasalah, berpeluang menerima kompensasi masing-masing hingga 349 dollar Amerika Serikat (sekitar Rp 5,6 juta). Kompansasi ini merupakan bagian dari biaya penyelesaian atas gugatan perwakilan kelompok (class action) terkait masalah iPhone 7 series yang diproses di pengadilan distrik utara California, Amerika Serikat. Menurut gugatan itu, sejumlah pengguna iPhone 7 mengalami masalah teknis yang disebut Loop Disease. Masalah ini terkait dengan chip IC audio di iPhone 7 dan iPhone 7 Plus.\r\n\r\nKarena masalah itu, pengguna mengeluhkan kendala seperti ikon Voice Memo yang jadi berwarna abu-abu, ikon speaker berwarna abu-abu juga selama bertelepon, penurunan kualitas audio, hingga hilangnya perintah suara di asisten virtual Siri dan lain sebagainya. Apple, sebagaimana kasus serupa lainnya, mengelak dari semua tuduhan dan memilih menggelontorkan kompensasi untuk menyelesaikan masalah.\r\n\r\nNah, per awal Februari 2024 ini, para pengguna yang terdampak dan terlibat dalam gugatan, mulai menerima kompensasi, sebagaimana dikutip KompasTekno dari 9to5mac, Selasa (11/2/2025). Besaran nilai kompensasinya bervariasi, mulai dari 50 dollar AS (sekitar Rp 813.773) sampai 349 dollar AS (sekitar Rp Rp 5,6 juta) per klaim. Rentang biaya ini berlaku untuk pengguna yang sempat memperbaiki kerusakan iPhone 7 series menggunakan biaya pribadi. Sementara itu, mereka yang terdampak tetapi tidak mengeluarkan biaya perbaikan, berhak menerima kompensasi hingga 125 dollar AS (sekitar Rp 2 juta) per klaim, dilansir dari Android Authority.\r\n', '2025-01-16', '1', 'aktif'),
(5, 'Pilot Pingsan, Pesawat Tujuan Jerman Mendarat Darurat\r\n', 'Penerbangan pesawat Lufthansa LH463 Boeing 747-8 rute Florida-Jerman mendarat darurat pada Minggu (16/1/2025). Dilansir dari The Sun, pesawat Lufthansa LH463 mendarat darurat di Montreal, Kanada, karena pilot pingsan saat memegang kendali. Kendali pesawat sempat dialihkan pada kopilot yang melanjutkan jalur menuju pantai timur Amerika Serikat (AS) dan Kanada.\r\n\r\nSaat kapten pilot dilarikan ke ruang tunggu kru untuk pertolongan pertama, kopilot memutuskan berbalik arah pada ketinggian 30.000 kaki akibat cuaca buruk dan pilot pingsan. Belum ada keterangan lebih lanjut terkait penyebab pingsannya pilot pesawat Lufthansa LH463 Boeing 747-8.\r\n\r\n\"Lufthansa menyesalkan ketidaknyamanan yang dialami penumpang. Keselamatan penumpang dan awak pesawat adalah prioritas utama kami setiap saat,\" ujar juru bicara Lufthansa, dikutip dari The Sun. \"Penerbangan mendarat di sana dengan normal dan aman, dan rekan kami (pilot), menerima perawatan medis,\" lanjutnya. Peristiwa pilot pingsan saat penerbangan bukan terjadi pertama kali. Kapten Jet2 Airlines juga pernah dilaporkan pingsan saat menerbangkan rute Manchester ke Madeira.\r\n\r\n', '2025-01-16', 'admin', 'aktif'),
(6, 'Fungsi Meta AI di WhatsApp yang Menarik Dicoba, Bisa buat Apa Saja?\r\n\r\n', 'Pengguna mungkin bakal tertarik untuk mengetahui fungsi Meta AI di WhatsApp. Beberapa waktu belakangan ini, WhatsApp telah menggelontorkan salah satu fitur terbaru yang menarik untuk pengguna di Indonesia. Fitur tersebut adalah Meta AI, chatbot pintar berbasis Artificial Intelligence (AI) buatan Meta (induk perusahaan WhatsApp, Instagram, dan Facebook) yang menggunakan language model Llama 3.2.\r\n\r\nMeta AI diintegrasikan ke WhatsApp dalam format akun chatbot yang bisa diajak ngobrol atau chatting oleh pengguna. Sebagai sebuah chatbot pintar, Meta AI punya beragam kemampuan yang menarik dan berguna untuk membantu produktivitas pengguna. Lantas, apa saja fungsi Meta AI di WhatsApp? Jika tertarik untuk mengetahui lebih lanjut, silakan simak penjelasan di bawah ini mengenai beberapa fungsi Meta AI di WhatsApp yang menarik buat dicoba.\r\n\r\nFungsi Meta AI di WhatsApp Fungsi Meta AI di WhatsApp sejatinya mirip dengan chatbot-chatbot AI pada umumnya yang berbasis language model, seperti ChatGPT, Copilot, atau Gemini. Meta AI bisa memahami berbagai bahasa, termasuk bahasa Indonesia.\r\n\r\nPengguna bisa bertanya berbagai hal ke Meta AI dan memintanya untuk melakukan beberapa tugas. Berdasar percobaan yang kami lakukan, adapun beberapa fungsi Meta AI di WhatsApp adalah sebagai berikut. \r\n1. Mencari ide\r\nFungsi Meta AI di WhatsApp yang pertama dan menarik dicoba adalah mencari ide. Pengguna bisa meminta Meta AI untuk memberikan saran atau ide atas sebuah hal, misalnya ide memasak makanan dengan bahan tertentu. \r\n2. Parafrase teks\r\nKemampuan mengolah teks menjadi kemampuan yang wajib dimiliki chatbot AI seperti Meta AI. Di WhatsApp, pengguna bisa meminta Meta AI untuk mengolah berbagai jenis teks dalam format tertentu, termasuk melakukan parafrase.\r\n\r\n', '2025-01-16', '8', 'aktif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_file_materi`
--

CREATE TABLE `tb_file_materi` (
  `id_materi` int(11) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `id_kelas` int(4) NOT NULL,
  `id_mapel` int(4) NOT NULL,
  `nama_file` varchar(250) NOT NULL,
  `tgl_posting` date NOT NULL,
  `pembuat` varchar(10) NOT NULL,
  `hits` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_file_materi`
--

INSERT INTO `tb_file_materi` (`id_materi`, `judul`, `id_kelas`, `id_mapel`, `nama_file`, `tgl_posting`, `pembuat`, `hits`) VALUES
(3, 'Modul Latihan', 3, 2, 'Cetak Soal Tryout P1.pdf', '2025-01-15', 'admin', 0),
(4, 'Modul 1', 1, 1, 'kumpulan_soal_20152.pdf', '2025-01-15', '1', 7),
(5, 'Modul 2', 1, 1, '2072-P1-SPK-Rekayasa Perangkat Lunak.doc', '2025-01-15', '1', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_jawaban`
--

CREATE TABLE `tb_jawaban` (
  `id` int(11) NOT NULL,
  `id_tq` int(4) NOT NULL,
  `id_soal` int(4) NOT NULL,
  `id_siswa` int(4) NOT NULL,
  `jawaban` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_jawaban`
--

INSERT INTO `tb_jawaban` (`id`, `id_tq`, `id_soal`, `id_siswa`, `jawaban`) VALUES
(49, 1, 4, 8, 'Gak tau'),
(50, 1, 2, 8, 'Gak tau'),
(54, 2, 6, 2, 'Bengawan Solo'),
(55, 2, 5, 2, 'Jusuf Kalla'),
(56, 2, 1, 2, 'Semarang'),
(57, 1, 2, 1, 'mejikuhibiniu'),
(58, 1, 4, 1, 'Ir. Soekarno'),
(59, 1, 2, 10, 'Mejikuhibiniu'),
(60, 1, 4, 10, 'Ir. Soekarno');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kelas`
--

CREATE TABLE `tb_kelas` (
  `id_kelas` int(11) NOT NULL,
  `nama_kelas` varchar(50) NOT NULL,
  `ruang` varchar(20) NOT NULL,
  `wali_kelas` int(5) NOT NULL,
  `ketua_kelas` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_kelas`
--

INSERT INTO `tb_kelas` (`id_kelas`, `nama_kelas`, `ruang`, `wali_kelas`, `ketua_kelas`) VALUES
(1, 'X-A', 'G-1', 8, 1),
(2, 'X-B', 'G-2', 1, 2),
(3, 'X-C', 'G-3', 10, 3),
(4, 'X-D', 'G-4', 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kelas_ajar`
--

CREATE TABLE `tb_kelas_ajar` (
  `id` int(11) NOT NULL,
  `id_kelas` int(5) NOT NULL,
  `id_pengajar` int(5) NOT NULL,
  `keterangan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_kelas_ajar`
--

INSERT INTO `tb_kelas_ajar` (`id`, `id_kelas`, `id_pengajar`, `keterangan`) VALUES
(1, 1, 1, 'Halo'),
(2, 1, 8, 'aaa'),
(4, 3, 8, 'bbb'),
(5, 2, 1, 'Halo');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_mapel`
--

CREATE TABLE `tb_mapel` (
  `id` int(11) NOT NULL,
  `kode_mapel` varchar(10) NOT NULL,
  `mapel` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_mapel`
--

INSERT INTO `tb_mapel` (`id`, `kode_mapel`, `mapel`) VALUES
(1, 'A1', 'Bahasa Indonesia'),
(2, 'A2', 'Matematika'),
(3, 'A3', 'Bahasa Inggris'),
(4, 'A4', 'TIK');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_mapel_ajar`
--

CREATE TABLE `tb_mapel_ajar` (
  `id` int(11) NOT NULL,
  `id_mapel` int(5) NOT NULL,
  `id_kelas` int(5) NOT NULL,
  `id_pengajar` int(5) NOT NULL,
  `keterangan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_mapel_ajar`
--

INSERT INTO `tb_mapel_ajar` (`id`, `id_mapel`, `id_kelas`, `id_pengajar`, `keterangan`) VALUES
(6, 1, 2, 1, 'aaa'),
(7, 1, 1, 1, 'Kelas baik'),
(9, 3, 2, 1, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_nilai_essay`
--

CREATE TABLE `tb_nilai_essay` (
  `id` int(11) NOT NULL,
  `id_tq` int(5) NOT NULL,
  `id_siswa` int(5) NOT NULL,
  `nilai` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_nilai_essay`
--

INSERT INTO `tb_nilai_essay` (`id`, `id_tq`, `id_siswa`, `nilai`) VALUES
(4, 2, 2, 90),
(11, 1, 1, 95);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_nilai_pilgan`
--

CREATE TABLE `tb_nilai_pilgan` (
  `id` int(11) NOT NULL,
  `id_tq` int(4) NOT NULL,
  `id_siswa` int(4) NOT NULL,
  `benar` int(4) NOT NULL,
  `salah` int(4) NOT NULL,
  `tidak_dikerjakan` int(4) NOT NULL,
  `presentase` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_nilai_pilgan`
--

INSERT INTO `tb_nilai_pilgan` (`id`, `id_tq`, `id_siswa`, `benar`, `salah`, `tidak_dikerjakan`, `presentase`) VALUES
(25, 1, 8, 2, 3, 0, 40),
(27, 2, 2, 2, 0, 0, 100),
(30, 5, 1, 2, 0, 0, 100),
(31, 1, 1, 5, 0, 0, 100),
(32, 1, 10, 5, 0, 0, 100);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pengajar`
--

CREATE TABLE `tb_pengajar` (
  `id_pengajar` int(11) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `tempat_lahir` varchar(20) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `agama` varchar(20) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `jabatan` varchar(20) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `web` varchar(60) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `pass` varchar(40) NOT NULL,
  `status` enum('aktif','tidak aktif') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_pengajar`
--

INSERT INTO `tb_pengajar` (`id_pengajar`, `nip`, `nama_lengkap`, `tempat_lahir`, `tgl_lahir`, `jenis_kelamin`, `agama`, `no_telp`, `email`, `alamat`, `jabatan`, `foto`, `web`, `username`, `password`, `pass`, `status`) VALUES
(1, '7676656', 'Ahmad', 'Rembang', '1989-06-10', 'L', 'Islam', '0867785365xx', 'hhuh@hd.vom', 'Rembang, Indonesia', 'Guru', '11539603_672029272928710_5015884061222980920_n.jpg', 'http://ilmu-lengkap.com', 'ahmad', '61243c7b9a4022cb3f8dc3106767ed12', 'ahmad', 'aktif'),
(8, '123', 'Ubab', 'Rembang', '2015-07-03', 'L', 'Islam', '87857565', '', 'Rembang', 'Guru', 'anonim.png', '', 'ubab', '1e71f0128a74222155076585a012cbde', 'ubab', 'aktif'),
(10, '274378434', 'Jajal', 'London', '1990-07-18', 'P', 'Islam', '089676778xx', 'jajal@yahoo.com', 'London, English', 'Guru', 'anonim.png', '', 'jajal', '0ce39f78d16cab3888366d5f4f5485eb', 'jajal', 'tidak aktif'),
(11, '898', 'Mbuh', 'Jepara', '2015-07-15', 'P', 'Katholik', '98993', '', 'Jepara', 'Guru', 'anonim.png', '', 'mbuh', '4cb3a57aafa5238fb25202ac75f6944f', 'mbuh', 'aktif'),
(12, '878', 'Mpok', 'Jakarat', '2015-07-25', 'P', 'Kristen', '7676', '', 'Jakarta', 'Guru', 'anonim.png', '', 'mpok', 'f9cfa808be96e05153f43ee98c51e7cf', 'mpok', 'aktif'),
(13, '67', 'nnnn', 'jjn', '2015-07-17', 'P', 'Hindu', '76676', '', 'jhjh', 'Guru', 'anonim.png', '', 'bb', '21ad0bd836b90d08f4cf640b4c298e7c', 'bb', 'aktif'),
(14, '77989', 'Lee Min Ho', 'Korea', '1990-07-16', 'L', 'Konghucu', '089681898xxx', 'leeminho@yahoo.com', 'Seoul, Korea', 'Guru Bahasa Korea', '10672295_1463699220608256_6533316162177641215_n.jpg', 'http://ilmu-lengkap.com', 'lee', 'b0f8b49f22c718e9924f5b1165111a67', 'lee', 'aktif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_siswa`
--

CREATE TABLE `tb_siswa` (
  `id_siswa` int(11) NOT NULL,
  `nis` varchar(20) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `tempat_lahir` varchar(20) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `agama` varchar(20) NOT NULL,
  `nama_ayah` varchar(50) NOT NULL,
  `nama_ibu` varchar(50) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `id_kelas` varchar(5) NOT NULL,
  `thn_masuk` int(5) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `pass` varchar(40) NOT NULL,
  `status` enum('aktif','tidak aktif') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_siswa`
--

INSERT INTO `tb_siswa` (`id_siswa`, `nis`, `nama_lengkap`, `tempat_lahir`, `tgl_lahir`, `jenis_kelamin`, `agama`, `nama_ayah`, `nama_ibu`, `no_telp`, `email`, `alamat`, `id_kelas`, `thn_masuk`, `foto`, `username`, `password`, `pass`, `status`) VALUES
(1, '12065', 'Mohammad', 'Tuban', '1996-07-06', 'L', 'Islam', 'Ahmad', 'Wiwik', '085786447xxx', 'mohnurfawaiq@yahoo.com', 'Pati', '1', 2023, 'lucu.jpg', 'moh', '94e510ecc1b1d7a405c0e7aa18db792b', 'moh', 'aktif'),
(2, '1212', 'Rifaatul Firdaus', 'Pati', '1997-08-20', 'P', 'Islam', 'Rifa\'i', 'Basyiroh', '63767343', 'sjdhsjdh@sdjsd.co', 'Pati, Jawa Tengah', '2', 2024, 'lucu2.jpg', 'firda', '5ed291923179b73cbc6ef968b35361ff', 'firda', 'aktif'),
(3, '13', 'Coba User', 'Jakarta', '1997-08-28', 'L', 'Hindu', 'Ayahku', 'Ibuku', '', '', 'Jakarta', '3', 2024, 'anonim.png', 'coba', 'c3ec0f7b054e729c5a716c8125839829', 'coba', 'tidak aktif'),
(7, '776', 'Didik', 'Rembang', '2015-08-01', 'L', 'Konghucu', 'Kamto', 'Rudah', '', '', 'Punjulharjo, Rembang', '3', 2024, 'anonim.png', 'didik', '2ff462bc49e322708a48d3d5e3ca4bab', 'didik', 'aktif'),
(8, '65656', 'Jajang', 'Majalengka', '1996-02-02', 'L', 'Islam', 'Gak Tau', 'Gak Tau', '085454583', '', 'Majalengka', '1', 2024, 'anonim.png', 'jajang', 'b56b57039c86f8626ece5a1a35f86175', 'jajang', 'aktif'),
(9, '1234', 'Andi', 'Cirebon', '2000-06-11', 'L', 'Islam', 'Yosef', 'Suci', '08544444333322', 'andi@gmail.com', 'Gunung Jati', '1', 2022, 'anonim.png', 'andi', '202cb962ac59075b964b07152d234b70', '123', 'aktif'),
(10, '12345', 'Yudha', 'Cirebon', '2001-08-03', 'L', 'Islam', 'Andi', 'Dina', '085722266616', 'yudha@gmail.com', 'Sumber', '1', 2020, 'anonim.png', 'yudha', '202cb962ac59075b964b07152d234b70', '123', 'aktif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_soal_essay`
--

CREATE TABLE `tb_soal_essay` (
  `id_essay` int(11) NOT NULL,
  `id_tq` int(5) NOT NULL,
  `pertanyaan` text NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `tgl_buat` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_soal_essay`
--

INSERT INTO `tb_soal_essay` (`id_essay`, `id_tq`, `pertanyaan`, `gambar`, `tgl_buat`) VALUES
(1, 2, 'Apa nama ibukota Provinsi Jawa Tengah ?', '11330004_917546658327011_8090069200033803302_n.jpg', '2025-01-05'),
(2, 1, 'Apa warna pelangi ?', '11330004_917546658327011_8090069200033803302_n.jpg', '2025-01-09'),
(4, 1, 'Siapa presiden pertama Indonesia ?', '', '2025-01-09'),
(5, 2, 'Siapa wakil presiden Indonesia ?', '', '2025-01-11'),
(6, 2, 'Apa sungai terpanjang di jawa ?', '', '2025-01-11'),
(7, 3, 'What is your hobby ?', '', '2025-01-14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_soal_pilgan`
--

CREATE TABLE `tb_soal_pilgan` (
  `id_pilgan` int(11) NOT NULL,
  `id_tq` int(5) NOT NULL,
  `pertanyaan` text NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `pil_a` text NOT NULL,
  `pil_b` text NOT NULL,
  `pil_c` text NOT NULL,
  `pil_d` text NOT NULL,
  `pil_e` text NOT NULL,
  `kunci` varchar(2) NOT NULL,
  `tgl_buat` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_soal_pilgan`
--

INSERT INTO `tb_soal_pilgan` (`id_pilgan`, `id_tq`, `pertanyaan`, `gambar`, `pil_a`, `pil_b`, `pil_c`, `pil_d`, `pil_e`, `kunci`, `tgl_buat`) VALUES
(2, 1, 'Apa huruf pertama dalam alphabet ?', 'lucu.jpg', 'H', 'I', 'O', 'Z', 'A', 'E', '2025-01-05'),
(3, 1, 'Apa nama ibukota negara Indonesia ?', '', 'Pati', 'Semarang', 'Surabaya', 'Jakarta', 'Medan', 'D', '2025-01-05'),
(4, 1, 'Apa arti sinomin ?', '', 'Perlawanan', 'Persamaan', 'Perbedaan', 'Pertengkaran', 'Persatuan', 'B', '2025-01-06'),
(5, 2, 'Tanggal berapa Indonesia merdeka ?', '', '17 Agustus 1965', '17 September 1945', '18 Agustus 1945', '17 Agustus 1995', '17 Agustus 1945', 'E', '2025-01-09'),
(8, 1, 'Apa arti antonim ?', '', 'Perlawanan', 'Persamaan', 'Kemiripan', 'Pertengkaran', 'Kesejahteraan', 'A', '2025-01-09'),
(9, 1, 'Siapa presiden ke-7 Negara Indonesia ?', '', 'Susiso Bambang Yudhoyono', 'Soekarno', 'Soeharto', 'Megawati Soekarno Putri', 'Joko Widodo', 'E', '2025-01-09'),
(10, 2, 'Apa ibukota Provinsi Jawa Timur ?', '', 'Surabaya', 'Semarang', 'Bandung', 'Pati', 'Rembang', 'A', '2025-01-11'),
(11, 5, 'Berapakah hasil 1 + 1 ?', '', '6', '4', '3', '2', '8', 'D', '2025-01-12'),
(12, 5, 'Berapakah hasil 8 x 7 ?', '', '24', '54', '67', '83', '56', 'E', '2025-01-12'),
(13, 3, 'Are you tired ?', '', 'Yes, I am', 'Apa sih', 'No, I am handsome', 'What ?', 'Ok', 'A', '2025-01-14'),
(14, 3, 'What is the meaning of \"Cruel\" ?', '', 'Rendah hati', 'Pendiam', 'Sombong', 'Kejam', 'Ganteng', 'D', '2025-01-14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_topik_quiz`
--

CREATE TABLE `tb_topik_quiz` (
  `id_tq` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `id_kelas` int(5) NOT NULL,
  `id_mapel` int(5) NOT NULL,
  `tgl_buat` date NOT NULL,
  `pembuat` varchar(10) NOT NULL,
  `waktu_soal` int(8) NOT NULL,
  `info` varchar(250) NOT NULL,
  `status` enum('aktif','tidak aktif') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_topik_quiz`
--

INSERT INTO `tb_topik_quiz` (`id_tq`, `judul`, `id_kelas`, `id_mapel`, `tgl_buat`, `pembuat`, `waktu_soal`, `info`, `status`) VALUES
(1, 'Ulangan Harian 1', 1, 1, '2025-01-03', 'admin', 3000, 'Ulangan tanggal 4-2-2025', 'aktif'),
(2, 'Ulangan Harian 1', 2, 2, '2025-01-05', 'admin', 1200, 'Ulangan hari Kamis', 'aktif'),
(3, 'Latihan Soal', 3, 3, '2025-01-05', '10', 1500, 'Jangan mencontek', 'aktif'),
(4, 'Ulangan Tengah Semester 1', 4, 1, '2025-01-07', 'admin', 600, 'Kerjakan dengan teliti', 'aktif'),
(5, 'Ulangan Remidial 1', 1, 2, '2025-01-11', 'admin', 1200, 'Kerjakan dengan jujur dan teliti', 'tidak aktif');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `tb_berita`
--
ALTER TABLE `tb_berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indeks untuk tabel `tb_file_materi`
--
ALTER TABLE `tb_file_materi`
  ADD PRIMARY KEY (`id_materi`);

--
-- Indeks untuk tabel `tb_jawaban`
--
ALTER TABLE `tb_jawaban`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_kelas`
--
ALTER TABLE `tb_kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indeks untuk tabel `tb_kelas_ajar`
--
ALTER TABLE `tb_kelas_ajar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_mapel`
--
ALTER TABLE `tb_mapel`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_mapel_ajar`
--
ALTER TABLE `tb_mapel_ajar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_nilai_essay`
--
ALTER TABLE `tb_nilai_essay`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_nilai_pilgan`
--
ALTER TABLE `tb_nilai_pilgan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_pengajar`
--
ALTER TABLE `tb_pengajar`
  ADD PRIMARY KEY (`id_pengajar`);

--
-- Indeks untuk tabel `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indeks untuk tabel `tb_soal_essay`
--
ALTER TABLE `tb_soal_essay`
  ADD PRIMARY KEY (`id_essay`);

--
-- Indeks untuk tabel `tb_soal_pilgan`
--
ALTER TABLE `tb_soal_pilgan`
  ADD PRIMARY KEY (`id_pilgan`);

--
-- Indeks untuk tabel `tb_topik_quiz`
--
ALTER TABLE `tb_topik_quiz`
  ADD PRIMARY KEY (`id_tq`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_berita`
--
ALTER TABLE `tb_berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tb_file_materi`
--
ALTER TABLE `tb_file_materi`
  MODIFY `id_materi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tb_jawaban`
--
ALTER TABLE `tb_jawaban`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT untuk tabel `tb_kelas`
--
ALTER TABLE `tb_kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tb_kelas_ajar`
--
ALTER TABLE `tb_kelas_ajar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tb_mapel`
--
ALTER TABLE `tb_mapel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tb_mapel_ajar`
--
ALTER TABLE `tb_mapel_ajar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tb_nilai_essay`
--
ALTER TABLE `tb_nilai_essay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `tb_nilai_pilgan`
--
ALTER TABLE `tb_nilai_pilgan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `tb_pengajar`
--
ALTER TABLE `tb_pengajar`
  MODIFY `id_pengajar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `tb_siswa`
--
ALTER TABLE `tb_siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tb_soal_essay`
--
ALTER TABLE `tb_soal_essay`
  MODIFY `id_essay` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tb_soal_pilgan`
--
ALTER TABLE `tb_soal_pilgan`
  MODIFY `id_pilgan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `tb_topik_quiz`
--
ALTER TABLE `tb_topik_quiz`
  MODIFY `id_tq` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
