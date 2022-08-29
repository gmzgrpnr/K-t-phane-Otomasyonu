-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost
-- Üretim Zamanı: 18 Haz 2022, 15:16:27
-- Sunucu sürümü: 8.0.17
-- PHP Sürümü: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `kutuphaneotomasyon`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `kategori_ismi` varchar(100) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `kategori_okunma` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kategori`
--

INSERT INTO `kategori` (`id`, `kategori_ismi`, `kategori_okunma`) VALUES
(1, 'Roman', 0),
(2, 'Trajedi Komedi', 0),
(3, 'Psikolojik Kurgu', 0),
(4, 'Biyografi', 0),
(5, 'Kurgu', 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kitaplar`
--

CREATE TABLE `kitaplar` (
  `id` int(11) NOT NULL,
  `kitap_adi` varchar(100) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `yazar_id` int(11) NOT NULL,
  `yayin_tarihi` date NOT NULL,
  `yayinevi_id` int(11) NOT NULL,
  `kategori_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kitaplar`
--

INSERT INTO `kitaplar` (`id`, `kitap_adi`, `yazar_id`, `yayin_tarihi`, `yayinevi_id`, `kategori_id`) VALUES
(1, 'Deniz İşçileri', 1, '2022-05-30', 1, 1),
(2, 'Kış Masalı', 2, '2022-05-30', 1, 2),
(3, 'Suç ve Ceza', 3, '2022-05-30', 2, 3),
(4, 'Benim Üniversitelerim', 4, '2022-05-30', 2, 4),
(5, 'Sodom ve Gomore', 5, '2022-05-30', 3, 1),
(6, 'ANKARA', 5, '2022-05-30', 1, 3),
(7, 'İstanbul\'un Bir Yüzü', 6, '2022-05-30', 4, 1),
(8, 'Bugünün Saraylısı', 6, '2022-05-30', 4, 1),
(9, 'Vadideki Zambak', 7, '2022-05-30', 1, 5),
(10, 'Babalar ve Oğullar', 8, '2022-05-30', 1, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kitap_gecmisi`
--

CREATE TABLE `kitap_gecmisi` (
  `id` int(11) NOT NULL,
  `kitap_id` int(11) NOT NULL,
  `okur_id` int(11) NOT NULL,
  `alim_tarihi` date NOT NULL,
  `teslim_tarihi` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kitap_gecmisi`
--

INSERT INTO `kitap_gecmisi` (`id`, `kitap_id`, `okur_id`, `alim_tarihi`, `teslim_tarihi`) VALUES
(22, 3, 1003, '0000-00-00', '0000-00-00'),
(23, 6, 1003, '0000-00-00', '0000-00-00'),
(24, 4, 1004, '0000-00-00', '0000-00-00'),
(25, 1, 1004, '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `okurlar`
--

CREATE TABLE `okurlar` (
  `id` int(11) NOT NULL,
  `okur_ismi` varchar(100) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `okur_gorevi` varchar(30) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `okur_birim` varchar(30) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `okur_sifre` varchar(300) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `okurlar`
--

INSERT INTO `okurlar` (`id`, `okur_ismi`, `okur_gorevi`, `okur_birim`, `okur_sifre`) VALUES
(1004, 'root', 'Kütüphane Müdürü', 'Bilgi İşlem', '$2y$10$k5jOFQslS5KZTMsdj1gJN.i2OQDNyJTXVNMXxh928p/T13eFYh1nm'),
(1006, 'Gamze', 'Kütüphane Müdürü', 'Yönetici', '$2y$10$NgxHIYvGpa7chcAK3RuJkuYsIqGLEsFzvRf7BykMq/f5IwU7e/8W.');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yayin_evleri`
--

CREATE TABLE `yayin_evleri` (
  `id` int(11) NOT NULL,
  `yayinev_ismi` varchar(100) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `okunma_sayisi` int(11) NOT NULL,
  `kitap_sayisi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `yayin_evleri`
--

INSERT INTO `yayin_evleri` (`id`, `yayinev_ismi`, `okunma_sayisi`, `kitap_sayisi`) VALUES
(1, 'Kültür Yayınları', 0, 1),
(2, 'Can Klasik Yayınları', 0, 2),
(3, 'İletişim Yayınları', 0, 2),
(4, 'İnkılap Yayınları', 0, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yazarlar`
--

CREATE TABLE `yazarlar` (
  `id` int(11) NOT NULL,
  `yazar_ismi` varchar(100) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `okunma_sayisi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `yazarlar`
--

INSERT INTO `yazarlar` (`id`, `yazar_ismi`, `okunma_sayisi`) VALUES
(1, 'VICTOR HUGO', 0),
(2, 'WILLIAM SHAKESPEARE', 0),
(3, 'FYODOR DOSTOYEVSKİ', 0),
(4, 'MAKSİM GORKİ', 0),
(5, 'YAKUP KADRİ KARAOSMANOĞLU', 0),
(6, 'REFİK HALİD KARAY', 0),
(7, 'HONORE DE BALZAC', 0),
(8, 'İVAN TURGENYEV', 0);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kategori_ismi` (`kategori_ismi`);

--
-- Tablo için indeksler `kitaplar`
--
ALTER TABLE `kitaplar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `kitap_gecmisi`
--
ALTER TABLE `kitap_gecmisi`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `okurlar`
--
ALTER TABLE `okurlar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `yayin_evleri`
--
ALTER TABLE `yayin_evleri`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `yayinev_ismi` (`yayinev_ismi`);

--
-- Tablo için indeksler `yazarlar`
--
ALTER TABLE `yazarlar`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `yazar_ismi` (`yazar_ismi`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Tablo için AUTO_INCREMENT değeri `kitaplar`
--
ALTER TABLE `kitaplar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Tablo için AUTO_INCREMENT değeri `kitap_gecmisi`
--
ALTER TABLE `kitap_gecmisi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Tablo için AUTO_INCREMENT değeri `okurlar`
--
ALTER TABLE `okurlar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1007;

--
-- Tablo için AUTO_INCREMENT değeri `yayin_evleri`
--
ALTER TABLE `yayin_evleri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `yazarlar`
--
ALTER TABLE `yazarlar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
