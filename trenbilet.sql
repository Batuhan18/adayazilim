-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 18 Eyl 2021, 19:55:25
-- Sunucu sürümü: 10.4.20-MariaDB
-- PHP Sürümü: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `trenbilet`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `vagon1`
--

CREATE TABLE `vagon1` (
  `id` int(11) NOT NULL,
  `koltuk_sayisi` int(3) NOT NULL,
  `doluluk` int(2) NOT NULL,
  `satilan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `vagon1`
--

INSERT INTO `vagon1` (`id`, `koltuk_sayisi`, `doluluk`, `satilan`) VALUES
(1, 80, 56, 7);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `vagon2`
--

CREATE TABLE `vagon2` (
  `id` int(11) NOT NULL,
  `koltuk_sayisi` int(3) NOT NULL,
  `doluluk` int(2) NOT NULL,
  `satilan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `vagon2`
--

INSERT INTO `vagon2` (`id`, `koltuk_sayisi`, `doluluk`, `satilan`) VALUES
(1, 70, 49, 5);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `vagon3`
--

CREATE TABLE `vagon3` (
  `id` int(11) NOT NULL,
  `koltuk_sayisi` int(3) NOT NULL,
  `doluluk` int(2) NOT NULL,
  `satilan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `vagon3`
--

INSERT INTO `vagon3` (`id`, `koltuk_sayisi`, `doluluk`, `satilan`) VALUES
(1, 60, 42, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `vagon4`
--

CREATE TABLE `vagon4` (
  `id` int(11) NOT NULL,
  `koltuk_sayisi` int(3) NOT NULL,
  `doluluk` int(2) NOT NULL,
  `satilan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `vagon4`
--

INSERT INTO `vagon4` (`id`, `koltuk_sayisi`, `doluluk`, `satilan`) VALUES
(1, 80, 56, 7);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `vagon1`
--
ALTER TABLE `vagon1`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `vagon2`
--
ALTER TABLE `vagon2`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `vagon3`
--
ALTER TABLE `vagon3`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `vagon4`
--
ALTER TABLE `vagon4`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `vagon1`
--
ALTER TABLE `vagon1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `vagon2`
--
ALTER TABLE `vagon2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `vagon3`
--
ALTER TABLE `vagon3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `vagon4`
--
ALTER TABLE `vagon4`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
