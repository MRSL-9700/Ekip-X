-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost
-- Üretim Zamanı: 18 Oca 2019, 11:13:36
-- Sunucu sürümü: 5.7.17-log
-- PHP Sürümü: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `gorev_atama`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `durum`
--

CREATE TABLE `durum` (
  `id` int(11) NOT NULL,
  `durum` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `ikon` varchar(255) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci COMMENT='Online - Ofline';

--
-- Tablo döküm verisi `durum`
--

INSERT INTO `durum` (`id`, `durum`, `ikon`) VALUES
(0, 'Offline', 'mdi mdi-account-off text-danger'),
(1, 'Online', 'mdi mdi-account-check text-success');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `gorev`
--

CREATE TABLE `gorev` (
  `id` int(11) NOT NULL,
  `gorev_ad` varchar(255) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `gorev`
--

INSERT INTO `gorev` (`id`, `gorev_ad`) VALUES
(1, 'Grafik & Animasyon'),
(2, 'PHP: Hypertext Preprocessor'),
(3, 'Android'),
(4, 'Cascading Style Sheets'),
(5, 'SQL'),
(6, 'Java'),
(7, 'Python'),
(8, 'C#'),
(9, 'ASP.NET'),
(10, 'Diğer');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `isler`
--

CREATE TABLE `isler` (
  `id` int(11) NOT NULL,
  `is_ad` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `is_kategori` int(11) DEFAULT NULL,
  `is_durum` int(11) DEFAULT NULL,
  `is_ait_personel` int(11) DEFAULT NULL,
  `is_verildi_tarih` date DEFAULT NULL,
  `is_verilen_saat` time DEFAULT NULL,
  `is_alinan_tarih` date DEFAULT NULL,
  `is_alinan_saat` time DEFAULT NULL,
  `is_teslim_tarih` date DEFAULT NULL,
  `is_teslim_saat` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci COMMENT='Açılan İşler';

--
-- Tablo döküm verisi `isler`
--

INSERT INTO `isler` (`id`, `is_ad`, `is_kategori`, `is_durum`, `is_ait_personel`, `is_verildi_tarih`, `is_verilen_saat`, `is_alinan_tarih`, `is_alinan_saat`, `is_teslim_tarih`, `is_teslim_saat`) VALUES
(1, 'Veritabanı Oluşturulacak', 5, 3, 1, '2019-01-05', '07:32:31', '2019-01-08', '22:33:00', '2019-01-08', '22:35:44'),
(2, 'Kayıtlar Girilecek (Yeni Kullanıcılar)', 10, 3, 3, '2019-01-06', '15:19:16', '2019-01-08', '22:35:39', '2019-01-08', '22:35:46'),
(5, 'Web Site Yapılacak', 10, 3, 5, '2019-01-06', '22:05:00', '2019-01-10', '12:30:33', '2019-01-10', '12:30:36'),
(6, 'Logo Yapımı', 1, 1, 6, '2019-01-10', '17:34:39', NULL, NULL, NULL, NULL),
(7, 'Logo Yapımı', 1, 1, 6, '2019-01-10', '17:35:26', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `is_durumu`
--

CREATE TABLE `is_durumu` (
  `id` int(11) NOT NULL,
  `durum_ad` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `durum_icon` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `durum_sinif` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `durum_buton_sinif` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `durum_buton_icon` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `durum_buton_id` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci COMMENT='İslerin Durumu Bekleniyor - Tamamlandı - Iş Alındı - DevreD.';

--
-- Tablo döküm verisi `is_durumu`
--

INSERT INTO `is_durumu` (`id`, `durum_ad`, `durum_icon`, `durum_sinif`, `durum_buton_sinif`, `durum_buton_icon`, `durum_buton_id`) VALUES
(1, 'Bekleniyor', 'mdi mdi-alert-circle-outline', 'badge badge-gradient-danger', 'btn btn-gradient-warning btn-sm', 'mdi mdi-check', 'isal'),
(2, 'İş Alındı', 'mdi mdi-check', 'badge badge-gradient-warning', 'btn btn-gradient-success btn-sm', 'mdi mdi-check-all', 'is_teslim'),
(3, 'Tamamlandı', 'mdi mdi-check-all', 'badge badge-gradient-success', 'btn btn-gradient-light btn-sm disabled', 'mdi mdi-check-all', 'is_bitti');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `menu_ad` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `menu_link` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `menu_icon` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `menu_yetki` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `menu`
--

INSERT INTO `menu` (`menu_id`, `menu_ad`, `menu_link`, `menu_icon`, `menu_yetki`) VALUES
(1, 'Dashboard', 'index.php', 'mdi mdi-home menu-icon', 3),
(2, 'Personel Ekle', 'personel_insert.html', 'mdi mdi-account-plus menu-icon', 1),
(3, 'İs Açma', 'is_acma.html', 'mdi mdi-briefcase menu-icon', 2),
(4, 'İşlerim', 'benim_islerim.html', 'mdi mdi-briefcase menu-icon', 3);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `personel`
--

CREATE TABLE `personel` (
  `id` int(11) NOT NULL COMMENT 'Personelin İd''si',
  `profil` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `ad` varchar(255) COLLATE utf8_turkish_ci NOT NULL COMMENT 'Personelin Adı',
  `kullanici_ad` varchar(255) COLLATE utf8_turkish_ci NOT NULL COMMENT 'Personelin Kullanıcı Adı',
  `eposta` varchar(255) COLLATE utf8_turkish_ci NOT NULL COMMENT 'Personelin Mail Adresleri',
  `parola` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT 'Personelin Şifresi',
  `giris_tarih` date DEFAULT NULL,
  `giris_saat` time DEFAULT NULL,
  `yetki` int(11) DEFAULT NULL COMMENT 'Personelin Yetkisi',
  `durum` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `personel`
--

INSERT INTO `personel` (`id`, `profil`, `ad`, `kullanici_ad`, `eposta`, `parola`, `giris_tarih`, `giris_saat`, `yetki`, `durum`) VALUES
(1, 'face8.jpg', 'Mürsel ŞEN', 'xSimona', 'murselsen_35@hotmail.com', 'mursel17', '2019-01-18', '14:10:32', 2, 1),
(2, 'face3.jpg', 'Batuhan TANYERİ', 'batuhanT', 'tanyeribatuhan532@gmail.com', '1234', '2019-01-10', '10:15:20', 3, 0),
(3, 'face9.jpg', 'Necdet UÇAN', 'necdet', 'necdet463ucan@gmail.com', '1234', '2019-01-10', '11:54:54', 1, 0),
(5, 'face4.jpg', 'Halil DEMİRCİ', 'halildemirci', 'halildemir_ci@hotmail.com', '3821246', '2019-01-10', '14:03:05', 2, 0),
(6, 'face13.jpg', 'Batu Emre Diker', 'batuEmr', 'batuemr@gmail.com', '1234', NULL, NULL, 3, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sohbet`
--

CREATE TABLE `sohbet` (
  `id` int(11) NOT NULL,
  `sohbet_metin` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `metin_ait_kisi` int(11) NOT NULL,
  `metin_saat` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `sohbet`
--

INSERT INTO `sohbet` (`id`, `sohbet_metin`, `metin_ait_kisi`, `metin_saat`) VALUES
(17, 'Merhaba', 1, '13:49:00'),
(18, 'Merhaba', 5, '13:50:00'),
(20, 'j', 1, '13:54:00'),
(21, 'ı', 1, '13:54:00'),
(22, 'ı', 1, '13:54:00'),
(23, 'ı', 1, '13:54:00'),
(24, 'ı', 1, '13:54:00'),
(25, 'asda', 5, '14:03:00'),
(26, '13212', 1, '14:03:00'),
(27, 'asdadde', 5, '14:04:00'),
(28, '....', 5, '15:25:00'),
(29, 'asdas1232', 5, '15:34:00'),
(30, 'jj', 1, '14:10:00');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yetki`
--

CREATE TABLE `yetki` (
  `id` int(11) NOT NULL,
  `yetki_ad` varchar(255) COLLATE utf8_turkish_ci NOT NULL COMMENT 'Yetki Adı '
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `yetki`
--

INSERT INTO `yetki` (`id`, `yetki_ad`) VALUES
(1, 'Admin'),
(2, 'Müdür'),
(3, 'Personel');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `durum`
--
ALTER TABLE `durum`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Tablo için indeksler `gorev`
--
ALTER TABLE `gorev`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Tablo için indeksler `isler`
--
ALTER TABLE `isler`
  ADD PRIMARY KEY (`id`),
  ADD KEY `is_verilmis_kisi` (`is_ait_personel`),
  ADD KEY `is_kategori` (`is_kategori`),
  ADD KEY `is_durum` (`is_durum`);

--
-- Tablo için indeksler `is_durumu`
--
ALTER TABLE `is_durumu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Tablo için indeksler `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`),
  ADD KEY `menu_yetki` (`menu_yetki`),
  ADD KEY `menu_yetki_2` (`menu_yetki`);

--
-- Tablo için indeksler `personel`
--
ALTER TABLE `personel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `yetki` (`yetki`),
  ADD KEY `id` (`id`),
  ADD KEY `online` (`durum`);

--
-- Tablo için indeksler `sohbet`
--
ALTER TABLE `sohbet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `metin_ait_kisi` (`metin_ait_kisi`);

--
-- Tablo için indeksler `yetki`
--
ALTER TABLE `yetki`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `gorev`
--
ALTER TABLE `gorev`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Tablo için AUTO_INCREMENT değeri `isler`
--
ALTER TABLE `isler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Tablo için AUTO_INCREMENT değeri `is_durumu`
--
ALTER TABLE `is_durumu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Tablo için AUTO_INCREMENT değeri `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Tablo için AUTO_INCREMENT değeri `personel`
--
ALTER TABLE `personel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Personelin İd''si', AUTO_INCREMENT=7;
--
-- Tablo için AUTO_INCREMENT değeri `sohbet`
--
ALTER TABLE `sohbet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- Tablo için AUTO_INCREMENT değeri `yetki`
--
ALTER TABLE `yetki`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `isler`
--
ALTER TABLE `isler`
  ADD CONSTRAINT `isler_ibfk_1` FOREIGN KEY (`is_ait_personel`) REFERENCES `personel` (`id`),
  ADD CONSTRAINT `isler_ibfk_2` FOREIGN KEY (`is_kategori`) REFERENCES `gorev` (`id`),
  ADD CONSTRAINT `isler_ibfk_3` FOREIGN KEY (`is_durum`) REFERENCES `is_durumu` (`id`);

--
-- Tablo kısıtlamaları `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`menu_yetki`) REFERENCES `yetki` (`id`);

--
-- Tablo kısıtlamaları `personel`
--
ALTER TABLE `personel`
  ADD CONSTRAINT `personel_ibfk_1` FOREIGN KEY (`yetki`) REFERENCES `yetki` (`id`),
  ADD CONSTRAINT `personel_ibfk_2` FOREIGN KEY (`durum`) REFERENCES `durum` (`id`);

--
-- Tablo kısıtlamaları `sohbet`
--
ALTER TABLE `sohbet`
  ADD CONSTRAINT `sohbet_ibfk_1` FOREIGN KEY (`metin_ait_kisi`) REFERENCES `personel` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
