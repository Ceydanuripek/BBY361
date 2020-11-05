-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 05 Kas 2020, 20:20:15
-- Sunucu sürümü: 10.4.14-MariaDB
-- PHP Sürümü: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `ceydanuripek_01`
--
CREATE DATABASE IF NOT EXISTS `ceydanuripek_01` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `ceydanuripek_01`;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kitap`
--

CREATE TABLE `kitap` (
  `kitapKayitNo` smallint(6) NOT NULL COMMENT 'Kitap tablosunun ana anahtarı',
  `kitapKayitTarih` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Kitabın veri tabanına kayıt tarihi',
  `kitapAdi` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Kitabın tam adı',
  `kitapISBN` varchar(13) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Kitabın ISBN numarası',
  `kitapBasimTarih` year(4) NOT NULL COMMENT 'Kitabın basım yılı',
  `kitapBasimYeri` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Kitabın basım ',
  `kitapDili` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Kitabın dili',
  `HangiBölgedeYetisenBitkiler` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Kitabın hangi bölgede yetişen bitkileri içerdiği ',
  `kitapElektronikAdresi` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Kitabın elektronik adresi'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Kitap ile ilgili temel bilgiler';

--
-- Tablo döküm verisi `kitap`
--

INSERT INTO `kitap` (`kitapKayitNo`, `kitapKayitTarih`, `kitapAdi`, `kitapISBN`, `kitapBasimTarih`, `kitapBasimYeri`, `kitapDili`, `HangiBölgedeYetisenBitkiler`, `kitapElektronikAdresi`) VALUES
(1, '2020-11-04 18:13:39', 'Bitki Zekası', '9789752498402', 2017, 'İstanbul', 'Türkçe', 'Genel', NULL),
(2, '2020-11-04 18:13:39', 'Bitki Fizyolojisi', '9789755918334', 1996, 'Ankara', 'Türkçe', 'Genel', 'https://www.nobelyayin.com/kitap_bilgileri/dosyalar/bitki_fizy_jen_181737.pdf'),
(3, '2020-11-04 19:05:43', 'Bitki Anatomisi', '9786051252957', 2011, 'Balıkesir', 'Türkçe', 'Genel', 'https://www.researchgate.net/publication/215591824_Bitki_Anatomisi_Laboratuvar_Klavuzu_Balikesir'),
(4, '2020-11-04 19:05:43', 'Kabalcı şifalı bitkiler ansiklopedisi', '9789759971496', 2009, 'İstanbul', 'Türkçe', 'Genel', NULL),
(5, '2020-11-04 19:05:43', 'Saksı bitkileri el kitabı', '9789944886536', 2012, 'İstanbul', 'Türkçe', 'Genel', NULL),
(6, '2020-11-04 19:05:43', 'The garden book.', '9780714843551', 2003, 'London', 'İngilizce', 'Genel', NULL),
(7, '2020-11-04 19:05:43', 'Türkiye bitkileri kırmızı kitabı : (eğrelti ve tohumlu bitkiler) = (Red data book of Turkish plants) : (pteridophyta and spermatophyta)', '9759361108	', 2000, 'Ankara', 'Türkçe', 'Genel', 'http://www.gbv.de/dms/hebis-darmstadt/toc/10669409X.pdf'),
(8, '2020-11-04 19:05:43', 'Türkiye’nin odunsu endemik bitkileri', '9789757372615', 2005, 'Bartın', 'Türkçe', 'Genel', NULL),
(9, '2020-11-04 19:05:43', 'Ankara şehrinin doğal bitkileri', '9789754914146', 2015, 'Ankara', 'Türkçe', 'Genel', NULL),
(10, '2020-11-04 19:05:43', 'Bitkiler = eyewitness visual dictionary plants', '9789754033243', 2004, 'Ankara', 'Türkçe', 'Genel', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yayinevi`
--

CREATE TABLE `yayinevi` (
  `yayineviKayitNo` int(11) NOT NULL COMMENT 'Yayınevi tablosunun anahtar alanı',
  `yayineviKayitTarih` timestamp NOT NULL DEFAULT current_timestamp() COMMENT ' Yayınevi VT giriş tarihi',
  `yayineviAdi` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yayınevi tam adı',
  `yayineviURL` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Yayınevi web sitesi',
  `yayıneviTelefonNumarası` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Yayınevi Telefon numarası',
  `yayıneviEmailAdresi` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Yayınevi E-mail adresi'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Yayınevi tablosu';

--
-- Tablo döküm verisi `yayinevi`
--

INSERT INTO `yayinevi` (`yayineviKayitNo`, `yayineviKayitTarih`, `yayineviAdi`, `yayineviURL`, `yayıneviTelefonNumarası`, `yayıneviEmailAdresi`) VALUES
(1, '2020-11-05 17:02:15', 'Yeni İnsan Yayınları', 'https://yeniinsanyayinevi.com/?v=29b90007cbf9', '(+90) 216 489 84 08', 'yeniinsanyayinevi@gmail.com'),
(2, '2020-11-05 17:02:15', 'Nobel Yayınları', 'https://www.nobelyayin.com/', '0312 418 20 10', 'iletisim@nobelyayin.com'),
(3, '2020-11-05 19:07:44', 'Eğitim Fotokopi ve Kırtasiye Basım-Yayın', NULL, '(0442) 231 42 89', NULL),
(4, '2020-11-05 19:07:44', 'Kabalcı Yayınevi', NULL, '(0212) 236 62 34', NULL),
(5, '2020-11-05 19:07:44', 'Türkiye İş Bankası Kültür Yayınları', 'https://www.iskultur.com.tr/', ' +90 212 252 3991', 'bilgi@iskultur.com.tr'),
(6, '2020-11-05 19:07:44', 'phaidon yayınları', NULL, '', NULL),
(7, '2020-11-05 19:07:44', 'Türkiye Tabiatını Koruma Derneği ', 'http://www.ttkder.org.tr/index.php/iletisim', '0312 425 19 44', 'ttkder@ttkder.org.tr'),
(8, '2020-11-05 19:07:44', 'Zonguldak Karaelmas Üniversitesi, Bartın Orman Fakültesi', 'https://orman.bartin.edu.tr/', ' 0 (378) 223 5100', 'bof@bartin.edu.tr'),
(9, '2020-11-05 19:07:44', 'Hacettepe Üniversitesi Basımevi', 'http://www.library.hacettepe.edu.tr/books/contact.html', '0 (362) 305 1487', ''),
(10, '2020-11-05 19:07:44', 'TÜBİTAK Popüler Bilim Yayınları', 'https://esatis.tubitak.gov.tr/', '0 (312) 298 13 37\r\n\r\n ', 'kitap.satis@tubitak.gov.tr');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yazar`
--

CREATE TABLE `yazar` (
  `yazarKayitNo` smallint(6) NOT NULL COMMENT 'Yazar tablosunun anahtar alanı',
  `yazarKayitTarih` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Yazar kayıt tarihi',
  `yazarAdi` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yazar tam adı',
  `yazarSoyadi` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yazar tam soyadı',
  `yazarURL` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Yazar ek bilgi adresi'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Yazar tablosu';

--
-- Tablo döküm verisi `yazar`
--

INSERT INTO `yazar` (`yazarKayitNo`, `yazarKayitTarih`, `yazarAdi`, `yazarSoyadi`, `yazarURL`) VALUES
(1, '2020-11-05 15:11:20', 'Metin', 'Sarıbaş', 'http://www.hopa.gen.tr/?pnum=112&pt=Metin+SARIBA%C5%9E'),
(2, '2020-11-05 15:51:34', 'Burhan', 'Kaçar', 'https://g.co/kgs/PdkhHX'),
(3, '2020-11-05 15:51:34', 'Fatih', 'Satıl', 'http://w3.balikesir.edu.tr/~fsatil/'),
(4, '2020-11-05 15:51:34', 'Oktay ', 'Mete', ''),
(5, '2020-11-05 15:51:34', 'Stephanie', 'Donaldson', 'https://en.wikipedia.org/wiki/Stephanie_Donaldson'),
(6, '2020-11-05 15:51:34', 'Tim', 'Richardson', 'https://en.wikipedia.org/wiki/Tim_Richardson_(writer)'),
(7, '2020-11-05 15:51:34', 'Tuna ', 'Ekim', 'https://g.co/kgs/XvTPjT'),
(8, '2020-11-05 15:51:34', 'Metin', 'Sarıbaş', 'https://g.co/kgs/RZcFTg'),
(9, '2020-11-05 15:51:34', 'Galip', 'Akaydın', 'https://avesis.hacettepe.edu.tr/agalip'),
(10, '2020-11-05 15:51:34', 'Deni', 'Brown', 'https://g.co/kgs/nqKA41');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `kitap`
--
ALTER TABLE `kitap`
  ADD PRIMARY KEY (`kitapKayitNo`) USING BTREE;

--
-- Tablo için indeksler `yayinevi`
--
ALTER TABLE `yayinevi`
  ADD PRIMARY KEY (`yayineviKayitNo`);

--
-- Tablo için indeksler `yazar`
--
ALTER TABLE `yazar`
  ADD PRIMARY KEY (`yazarKayitNo`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `kitap`
--
ALTER TABLE `kitap`
  MODIFY `kitapKayitNo` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Kitap tablosunun ana anahtarı', AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `yayinevi`
--
ALTER TABLE `yayinevi`
  MODIFY `yayineviKayitNo` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Yayınevi tablosunun anahtar alanı', AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `yazar`
--
ALTER TABLE `yazar`
  MODIFY `yazarKayitNo` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Yazar tablosunun anahtar alanı', AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
