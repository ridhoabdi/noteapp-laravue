-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 19, 2024 at 02:42 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `noteapp-laravue`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_03_17_064126_create_notes_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` bigint UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`id`, `judul`, `deskripsi`, `created_at`, `updated_at`) VALUES
(1, 'Amazon Elastic Compute Cloud (EC2)', 'Amazon Elastic Compute Cloud (EC2) adalah layanan komputasi awan (cloud computing) yang disediakan oleh Amazon Web Services (AWS). EC2 memungkinkan pengguna untuk menyewa kapasitas komputasi virtual dalam lingkungan cloud AWS, sehingga memungkinkan mereka untuk menjalankan aplikasi dengan skalabilitas yang tinggi tanpa perlu mengelola infrastruktur fisik secara langsung.\n\nBeberapa fitur dan fungsionalitas utama dari Amazon EC2 termasuk:\n\n1. Elasticity: Pengguna dapat dengan mudah menyesuaikan kapasitas komputasi sesuai kebutuhan mereka. Mereka dapat meningkatkan atau mengurangi jumlah server virtual, dan juga mengubah konfigurasi seperti jenis instance dan ukuran penyimpanan.\n\n2. Skalabilitas: EC2 memungkinkan pengguna untuk membuat dan mengelola beberapa instance EC2 sekaligus. Ini memungkinkan pengguna untuk menyeimbangkan beban kerja dan meningkatkan ketersediaan aplikasi mereka.\n\n3. Beragam Pilihan Instance: AWS menyediakan berbagai jenis instance EC2 dengan spesifikasi yang berbeda-beda, termasuk CPU, memori, dan penyimpanan yang dapat disesuaikan dengan kebutuhan pengguna.\n\n4. Pengelolaan Sumber Daya: EC2 menyediakan berbagai fitur untuk mengelola sumber daya, seperti pengelolaan gambar instance (instance images), pemantauan kinerja, dan otomatisasi menggunakan layanan seperti AWS Auto Scaling.\n\n5. Pembayaran Berbasis Penggunaan: Pengguna hanya membayar untuk sumber daya yang mereka gunakan, sehingga mereka dapat mengontrol biaya dan menghindari pemborosan sumber daya.', '2024-03-17 00:23:46', '2024-03-19 05:31:41'),
(2, 'ETL (Extract, Transform, Load)', 'ETL adalah singkatan dari Extract, Transform, Load. Ini adalah proses yang digunakan dalam pengolahan data untuk memindahkan data dari sumbernya ke tujuan akhirnya, seperti penyimpanan data atau aplikasi analisis.\r\n\r\nBerikut adalah penjelasan singkat tentang setiap langkah dalam proses ETL:\r\n\r\n1. Extract (Ekstrak): Pada langkah ini, data diekstrak dari sumbernya. Sumber data bisa berupa database, file teks, API, atau sumber data lainnya. Proses ini melibatkan pengambilan data dari sumbernya tanpa melakukan transformasi apa pun.\r\n\r\n2. Transform (Transformasi): Setelah data diekstrak, langkah selanjutnya adalah mentransformasikannya agar sesuai dengan kebutuhan. Transformasi data dapat melibatkan pembersihan data, penggabungan data dari beberapa sumber, pembentukan kembali struktur data, penghapusan data yang tidak relevan, pengubahan format data, atau penghitungan agregat, dan banyak lagi. Tujuannya adalah untuk mempersiapkan data sehingga dapat dimasukkan ke dalam bentuk yang sesuai untuk analisis atau penyimpanan.\r\n\r\n3. Load (Muat): Setelah data diubah, langkah terakhir adalah memuatnya ke dalam tujuan akhir. Tujuan ini bisa berupa data warehouse, data lake, database, atau aplikasi analisis lainnya. Proses memuat ini melibatkan memasukkan data yang telah diubah ke dalam struktur yang sesuai dengan tujuan akhir, serta memastikan keberhasilan pengiriman data dengan integritas yang dijaga.\r\n\r\nProses ETL ini sering digunakan dalam pengolahan data besar dan kompleks, dan menjadi bagian integral dari sistem bisnis modern di mana data dari berbagai sumber perlu diolah dan disiapkan untuk analisis atau pemrosesan lebih lanjut.', '2024-03-17 00:24:31', '2024-03-18 04:02:49'),
(4, 'Rumus Simple Past Tence', 'Simple Past Tense adalah bentuk waktu lampau sederhana dalam bahasa Inggris yang digunakan untuk menyatakan suatu kejadian atau tindakan yang terjadi di masa lampau dan telah selesai pada waktu tertentu.\n\nRumus pembentukan kalimat Simple Past Tense untuk kata kerja (verb) regular dan irregular adalah sebagai berikut:\n\n1. Untuk Kata Kerja Regular:\n   - Positif: Subject + Verb (ed) + Object\n   - Contoh: She played football yesterday. (Dia bermain sepak bola kemarin.)\n\n   - Negatif: Subject + Did + Not + Verb (infinitive) + Object\n   - Contoh: She did not play football yesterday. (Dia tidak bermain sepak bola kemarin.)\n\n   - Interogatif: Did + Subject + Verb (infinitive) + Object?\n   - Contoh: Did she play football yesterday? (Apakah dia bermain sepak bola kemarin?)\n\n2. Untuk Kata Kerja Irregular:\n   - Positif: Subject + Verb (irregular) + Object\n   - Contoh: He ate a sandwich for lunch. (Dia makan sebuah sandwich untuk makan siang.)\n\n   - Negatif: Subject + Did + Not + Verb (infinitive) + Object\n   - Contoh: He did not eat a sandwich for lunch. (Dia tidak makan sebuah sandwich untuk makan siang.)\n\n   - Interogatif: Did + Subject + Verb (infinitive) + Object?\n   - Contoh: Did he eat a sandwich for lunch? (Apakah dia makan sebuah sandwich untuk makan siang?)', '2024-03-18 03:35:57', '2024-03-19 05:29:53'),
(13, 'Algoritma Decision Tree', 'Algoritma Decision Tree (pohon keputusan) adalah algoritma pembelajaran mesin yang digunakan untuk tugas-tugas klasifikasi dan regresi. Algoritma ini bekerja dengan membagi dataset menjadi subset-subset yang lebih kecil berdasarkan serangkaian keputusan atau aturan, yang disusun dalam bentuk struktur pohon. Setiap simpul dalam pohon mewakili keputusan berdasarkan fitur-fitur data, dan cabang-cabang dari simpul tersebut mewakili kemungkinan hasil keputusan.\n\nProses pembentukan pohon keputusan dimulai dengan memilih fitur yang paling informatif untuk memisahkan data menjadi dua kelompok. Pemilihan fitur ini didasarkan pada kriteria seperti entropi, informasi gain, atau Gini impurity. Setelah pemilihan fitur, dataset dibagi menjadi dua bagian berdasarkan nilai fitur tersebut. Proses ini berulang hingga kondisi berhenti tercapai, misalnya saat semua data di suatu cabang pohon telah dikelompokkan ke dalam kelas yang sama, atau ketika kedalaman pohon telah mencapai batas tertentu.\n\nDecision Tree dapat digunakan untuk berbagai tugas seperti klasifikasi dan regresi. Dalam klasifikasi, pohon keputusan menghasilkan model yang memprediksi kelas atau label data, sementara dalam regresi, model memprediksi nilai kontinu. Keuntungan dari Decision Tree termasuk interpretabilitas yang tinggi, kemampuan untuk menangani data kategori dan numerik, serta keandalan dalam menangani interaksi antara fitur-fitur data. Namun, kelemahan utamanya adalah kecenderungan overfitting jika tidak diatur dengan baik, yang dapat mengakibatkan kinerja yang buruk pada data uji yang tidak terlihat sebelumnya.', '2024-03-18 06:44:04', '2024-03-19 05:28:48'),
(18, 'Convolutional Neural Network', 'Convolutional Neural Network (CNN) adalah jenis arsitektur jaringan saraf tiruan yang umumnya digunakan untuk tugas-tugas pengolahan citra dan pengenalan pola visual. CNN pertama kali dikembangkan untuk memproses gambar, tetapi sekarang juga telah diterapkan dalam berbagai bidang, termasuk teks dan suara.\n\nFitur utama CNN adalah lapisan konvolusi yang memungkinkan model untuk secara efektif mengekstraksi fitur dari data citra secara hierarkis. Lapisan konvolusi mengaplikasikan serangkaian filter ke wilayah kecil gambar untuk mengekstraksi fitur-fitur seperti tepi, sudut, atau tekstur. Kemudian, lapisan-lapisan berikutnya dari CNN menerapkan operasi seperti pengecilan ukuran (pooling) dan penggunaan fungsi aktivasi untuk mengekstraksi fitur-fitur yang semakin kompleks.\n\nKeuntungan utama CNN adalah kemampuannya untuk secara otomatis mengekstraksi fitur-fitur penting dari data citra, yang memungkinkan penggunaannya dalam tugas-tugas seperti klasifikasi gambar, deteksi objek, segmentasi gambar, dan banyak lagi. CNN telah menjadi salah satu teknologi yang paling berpengaruh dalam bidang visi komputer dan pembelajaran mesin.', '2024-03-19 04:36:51', '2024-03-19 05:47:33'),
(19, 'Belajar Laravel dan Vue.js', 'Hari ini saya sedang mempelajari cara membuat aplikasi menggunakan 2 framework yang berbeda yakni Laravel dan Vue.js. Saya menggunakan Laravel sebagai backend, yang berfungsi untuk membuat API. Selanjutnya saya menggunakan Vue.js sebagai frontend, yang berfungsi sebagai user interface dan mengkonsumsi API dari backend. Walaupun masih berjalan di local, saya senang sekali dapat mengeksplore lebih banyak lagi cara kerja dari suatu API termasuk implementasi yang sudah saya lakukan saat membuat aplikasi NoteApp Laravue.', '2024-03-19 05:36:38', '2024-03-19 05:36:38'),
(20, 'Natural Language Processing', 'Natural Language Processing (NLP) adalah cabang dari kecerdasan buatan (artificial intelligence) yang berfokus pada interaksi antara komputer dan bahasa manusia alami. Tujuan utama dari NLP adalah untuk memungkinkan komputer memahami, menganalisis, memanipulasi, dan menghasilkan bahasa manusia. Beberapa area utama dalam NLP meliputi:\n\n1. Pemrosesan Teks: NLP digunakan untuk menganalisis dan memahami teks dalam bentuk dokumen, artikel berita, pesan teks, dan banyak lagi. Ini meliputi tugas seperti pemrosesan bahasa alami (NLP), analisis sentimen, klasifikasi teks, dan ekstraksi informasi.\n\n2. Pemahaman Bahasa Alami: kemampuan untuk memahami bahasa manusia dalam konteks yang lebih luas, termasuk makna, sintaksis, dan semantik. Ini melibatkan pemahaman frasa, kalimat, dan teks secara keseluruhan, serta interpretasi maksud dari teks tersebut.\n\n3. Generasi Bahasa Alami: melibatkan pembangkitan teks dalam bahasa manusia berdasarkan data dan aturan tertentu. Ini bisa digunakan untuk membuat ringkasan, menghasilkan teks otomatis, dan membuat narasi berdasarkan data.\n\n4. Penerjemahan Mesin: NLP juga digunakan untuk memfasilitasi penerjemahan antar bahasa, di mana teks dalam satu bahasa diterjemahkan ke bahasa lain secara otomatis oleh komputer.\n\n5. Analisis Sentimen: NLP digunakan untuk mengekstraksi dan menganalisis sentimen atau opini dari teks, seperti ulasan produk, posting media sosial, atau tanggapan pelanggan.\n\nNLP telah menjadi bidang penelitian yang aktif dan terus berkembang, dengan penerapan yang luas dalam berbagai industri seperti teknologi, perbankan, kesehatan, e-niaga, dan lainnya.', '2024-03-19 05:40:16', '2024-03-19 05:46:51'),
(21, 'Exploratory Data Analysis', 'Exploratory Data Analysis (EDA) adalah proses analisis data yang dilakukan untuk memahami karakteristik, struktur, dan pola dalam dataset secara visual dan deskriptif. Tujuan utama dari EDA adalah untuk mengungkap informasi yang relevan, mengidentifikasi pola menarik, dan menghasilkan hipotesis yang dapat digunakan untuk analisis lebih lanjut. Berikut adalah beberapa langkah umum dalam Exploratory Data Analysis:\n\n1. Penjelajahan Data: Langkah pertama dalam EDA adalah memeriksa dataset secara keseluruhan untuk memahami struktur, ukuran, dan jenis data yang ada. Ini meliputi melihat beberapa baris awal dan akhir dari dataset, mengecek tipe data setiap kolom, dan memeriksa apakah ada nilai yang hilang atau tidak lengkap.\n\n2. Statistik Deskriptif: Menggunakan statistik deskriptif seperti mean, median, kuartil, dan deviasi standar untuk memberikan gambaran umum tentang distribusi variabel dalam dataset. Ini membantu dalam memahami sebaran data dan mengidentifikasi nilai ekstrem atau anomali.\n\n3. Visualisasi Data: Membuat berbagai jenis visualisasi seperti histogram, diagram pencar (scatter plot), box plot, dan diagram batang untuk memvisualisasikan distribusi data, hubungan antar variabel, dan pola-pola lainnya dalam dataset. Visualisasi membantu dalam mendeteksi pola, korelasi, dan tren yang mungkin tidak terlihat dalam analisis deskriptif.\n\n4. Eksplorasi Hubungan: Melakukan analisis hubungan antar variabel untuk memahami korelasi, asosiasi, atau pengaruh antar variabel. Ini dapat dilakukan dengan menggunakan matriks korelasi, scatter plot matrix, atau heatmap.\n\n5. Menemukan Pola dan Tren: Mencari pola dan tren dalam data yang dapat memberikan wawasan tambahan atau menimbulkan pertanyaan untuk diteliti lebih lanjut. Misalnya, melihat perubahan dalam data seiring waktu atau pola musiman dalam data deret waktu.', '2024-03-19 05:46:31', '2024-03-19 05:46:31');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
