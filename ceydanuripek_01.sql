-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 10 Oca 2021, 13:05:17
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
  `kitapKayitNo` int(6) NOT NULL COMMENT 'Kitap tablosunun ana anahtarı',
  `kitapAdi` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Kitabın tam adı',
  `kitapBasimTarih` year(4) NOT NULL COMMENT 'Kitabın basım yılı',
  `kitapKayitTarih` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Kitabın veri tabanına kayıt tarihi',
  `kitapBasimYeri` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Kitabın basım ',
  `kitapISBN` varchar(13) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Kitabın ISBN numarası',
  `kitapAciklama` varchar(2000) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Eserin kısaca açıklamasına yer verilir.',
  `yazarKayitNo` int(11) NOT NULL,
  `yayineviKayitNo` int(11) NOT NULL,
  `kitapDili` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Kitabın dili'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Kitap ile ilgili temel bilgiler';

--
-- Tablo döküm verisi `kitap`
--

INSERT INTO `kitap` (`kitapKayitNo`, `kitapAdi`, `kitapBasimTarih`, `kitapKayitTarih`, `kitapBasimYeri`, `kitapISBN`, `kitapAciklama`, `yazarKayitNo`, `yayineviKayitNo`, `kitapDili`) VALUES
(1, 'Bitki Zekası', 2017, '2020-11-04 18:13:39', 'İstanbul', '9789752498402', 'Bitkilerin gayet zeki olduğu ve iletişim kurabildiği bir gezegen hayal edin. Bu hayali gezegende bitkiler kendi aralarında bilgi alışverişi yapabiliyor. Köklerinden en tepesindeki yaprağa kadar her türlü bilgiyi aktarabiliyor. Çevresinde kendi türünden olanlarla diğerlerini ayırabiliyor. Tuzak kurarak avlanabiliyor. İklim geçişlerine, kuraklığa ya da aşırı yağmurlara karşı tedbir alabiliyor. Daha da ileri gidip, diğer bitkilerle ve bazı hayvanlarla ağ kurabiliyorlar. Kendilerini korumak ve otçullardan sakınmak için, başka canlılardan yardım alabiliyorlar. Üremek için işbirliği geliştirebiliyorlar. Bu sessiz, pasif ve savunmasız gözüken bitkilerin en küçük kök solucanından insanlara kadar, etraflarındaki herkesi yönlendirerek ve onlarla iletişime geçerek yaşamlarını organize ettiği bir gezegen hayal edebiliyor musunuz? Boşuna uğraşmayın, bu gezegen zaten var: Dünya’ya hoşgeldiniz. Bu kitapta yazılanları bize çok önce öğretilmiş bilgilerle anlamamız imkansız. Yeni bir perspektif ve zarif bir bakış açısıyla bilindik bitkilere yönelik bütün yargılarınız temelden sarsılabilir. Dünyanın her yanında ses getirmeyeaday bu yepyenikitap, şimdiden pek çok dergiye kapak oldu ve insanlık bir kez daha doğru bildiklerini kenara itmek zorunda kalacak gibi. “Birkaç saatliğine alışık olduğunuz insan merkezciliğinizi bir kenara bırakın. Daha zengin ve daha muhteşem diğer dünyaya adım atın. Pişman olmayacaksınız ve bu yeni dünyadan asla eskisi gibi çıkamayacaksınız.”', 1, 1, 'Türkçe'),
(2, 'Bitki Fizyolojisi', 1996, '2020-11-04 18:13:39', 'Ankara', '9789755918334', 'İnsan ve hayvanların yeteri düzeyde beslenebilmesi, temel endüstri için gerekli ham maddelerin sağlanabilmesi, nitelikli olduğu kadar bol bitkisel üretim ile olanaklıdır. Bunun için tohumun çimlenmesinden vejetatif gelişmesine ve generatif organların oluşmasına değin bitkide cereyan eden tüm olayların anlaşılabilmesi Bitki Fizyolojisinin iyi bilinmesiyle olanaklıdır. Temel Bilimler içerisinde yer almakla beraber Bitki Fizyolojisi tarla, bağ ve bahçe bitkileri ile çiçek üreticilerine olduğu kadar tarım ve ormancılık alanlarında çalışanlar için de yadsınamaz düzeyde önemlidir. On beş ana bölümden oluşan bu kitabın ilk bölümünde Bitki Hücrelerinin Yapısı ve ikinci bölümde Enzimler ve İşlevleri ayrıntılı şekilde incelenmiştir. Su – Hücre İlişkileri, Suyun Alınması ve Taşınması, Su Yitmesi izleyen üç ayrı ana bölümde açıklanmıştır. Bitki Besin Elementleri ile Besin Elementlerinin Alınma ve Taşınmaları 6. ve 7. bölümlerde en son araştırma bulgularına dayanılarak sunulmuştur. Fotosentez, Azot ve Kükürt Özümlemeleri ile Fotosentez Ürünlerinin Taşınması ve Solunum izleyen 8. 9. 10. ve 11. bölümlerde ayrıntılı şekilde açıklanmıştır. Büyüme, Büyüme Hareketleri ile Bitki Hormonları ve İşlevleri 12. 13. ve 14. bölümlerde sunulmuştur. Bitkilerde stresin anlam ve önemi ile stresin değişik çeşitleri Stres Fizyolojisi başlığını taşıyan 15. bölümde açıklanmıştır.', 2, 2, 'Türkçe'),
(3, 'Bitki Anatomisi', 2011, '2020-11-04 19:05:43', 'Balıkesir', '9786051252957', 'Bu kitap, öncelikle üniversitelerin biyoloji bölümlerinde okutulan genel botanik, bitki morfolojisi ve anatomisi derslerini alan öğrencilerin laboratuvar çalışmalarında kullanılmak üzere hazırlanmıştır. Bu kitap ayrıca ülkemizin değişik bölgelerinde görev yapan biyoloji öğretmenlerinin laboratuvar derslerine de katkı sağlayacak niteliktedir. Kitabın içeriğinde bitkisel materyallerin kromozom incelemesi için yapılan ön işlemlere, materyallerin durağanlanmasına, durağanlayıcı karışımlara, kesit alma yöntemlerinden el kesit yöntemi ile mikrotom yöntemine ve kesitlerin boyanmasına değinilmiştir. Ayrıca laboratuvar uygulamaları adı altında hücrenin protoplazmik ile protoplazmik olmayan bileşenleri, epidermis, epidermisten türevlenen yapılar olarak trikomlar ve stomalar, destek dokulardan kollenkima ve sklerankima, ksilem ve floem, salgı dokusu, periderm gelişimi ve lentisel, kök, gövde, yaprak, meyve, çiçek ve tohum anatomisi konuları işlenmiştir. Uygulama kısmında, öğrencilerimizin mikroskopta gördükleri şekilleri çizebilecekleri bir çizim bölümü bırakılmıştır. Görsel materyal açısından zengin bir kaynak sunmak amacıyla hazırlanan bu kitapta temel konular ülkemizin her bölgesinde kolay bulunabilen bitkiler üzerinde gösterilmeye çalışılmış ve aynı konuların görüldüğü diğer bitkiler ile ilgili görsel fotoğraflara da yer verilmiştir.', 3, 3, 'Türkçe'),
(4, 'Kabalcı şifalı bitkiler ansiklopedisi', 2009, '2020-11-04 19:05:43', 'İstanbul', '9789759971496', 'Bitkiler binlerce yıldır hastalıkların tedavisinde çeşitli biçimlerde kullanılmaktadır. Kaynatılmış nane-limonun mideyi rahatlattığı, enginarın karaciğeri güçlendirdiği gibi kulaktan dolma bilgilerimizin kaynağı bu süreçte tekrarlanmış uygulamaların tecrübesidir. Ancak bu bilgilerde eksik kalan noktalar vardır ki, bitkilerin yararlı olabilmesini sağlayan da aslında bu küçük ayrıntılardır. Bitkilerden yapılan ilaçların da yerinde, doğru ölçülerde ve bilinçli olarak kullanılmaları gereklidir. Bitkilerin yan etkisi yoktur, arzu edildiği kadar kullanılabilir düşüncesi kesinlikle yanlıştır. Bu nedenle bu konuda titizlikle hazırlanmış bir kaynağın önemi oldukça büyüktür.İnsanlara binlerce yıldır sağlık sorunlarında yardımcı olan doğanın bizlere sunduğu yararlı bitkilerin tıbbi güçleri son dönemlerde merak konusu olmuş ve araştırılmaya başlanmıştır. Bitkilerin yararlı özelliklerine ilişkin bilimsel araştırmalardan elde edilen veriler, uzun süreçlerin tecrübeleriyle edinilmiş bilgileri güvenilir hale getirmektedir.Uzun bir sürecin sonunda titizlikle hazırlanmış olan Kabalcı Şifalı Bitkiler Ansiklopedisi, birçok hastalığın tedavisinde başarıyla uygulanan bitkiler hakkında önemli bilgiler edinmenize yardımcı olacak, doğru uygulamalarla tedaviden istenilen sonuçları almanızı sağlayacak ve sizi bazı yanlış uygulamalar yapmaktan koruyacaktır. Bu kitapta sirke, tuz, süt ürünleri, bal ve arı ürünleri gibi gıdaların yanı sıra, 333 bitkinin genel özelliklerini anlatan bölümlerin sonunda, bitkileri hastalıklar için nasıl ve hangi ölçülerde kullanacağınızı ayrıntılı olarak açıklayan reçeteleri bulacaksınız.', 4, 4, 'Türkçe'),
(5, 'Saksı bitkileri el kitabı', 2012, '2020-11-04 19:05:43', 'İstanbul', '9789944886536', 'Ufak alanlarda dikim yaparken kullanılacak yaratıcı sunumlar ve etkili yöntemler. Menekşelerin sarktığı bir sepetten, terakota çiçeklik içinde kır esintili bir bahçeye, renk, koku ya da mevsim temalı tasarım örnekleri. Her tur çiçeklik tipine uygun bitkiyi seçmek için gerekli ipuçları. Fotoğraflarla zenginleştirilmiş A\'dan Z\'ye bitki rehberinde yaklaşık 180 varyete hakkında çeşitli bilgiler. Basit bakım ve yetiştirme yöntemlerinden, zararlılarla mücadeleye dek, bitkilerinizi sağlıklı yetiştirmeniz için gerekli bilgiler.', 5, 5, 'Türkçe'),
(6, 'The garden book.', 2003, '2020-11-04 19:05:43', 'London', '9780714843551', '\"The Garden Book\" presents a diverse range of garden and landscape designers responsible for some of the most interesting and iconic gardens of all time from around the world. ', 6, 6, 'İngilizce'),
(7, 'Türkiye bitkileri kırmızı kitabı : (eğrelti ve tohumlu bitkiler) = (Red data book of Turkish plants) : (pteridophyta and spermatophyta)', 2000, '2020-11-04 19:05:43', 'Ankara', '9759361108	', 'İçindekiler:  1994 IUCN Red Data Book Kategorileri Bazı Kriteler Hakkında Açıklayıcı Bilgiler Endemik Bitkilerin Yurdumuzdaki Yayılışı Bitkileri Tehdit Eden Faktörler Ekonomik Yönden Önemli Endemik, Nadir ve Tehdit Altındaki Bitkiler Endemikler Endemik Olmayanlar Bazı Endemik ve Nadir Bitkilerin Resimleri', 7, 7, 'Türkçe'),
(8, 'Türkiye’nin odunsu endemik bitkileri', 2005, '2020-11-04 19:05:43', 'Bartın', '9789757372615', 'İçindekiler. Endemik Bitkilerle İlgili Kavramlar.  Türkiye\'nin Endemik Bitkilerine Toplu Bakış.  Literatür Özeti.  Diğer Ülkelerde Endemik Bitkiler.  Türkiye\'deki Endemik Bitkilerin İllere Dağılımı.  Yararlanılan Kaynaklar.  Terimler Sözlüğü.  Latince İndeks.', 8, 8, 'Türkçe'),
(9, 'Ankara şehrinin doğal bitkileri', 2015, '2020-11-04 19:05:43', 'Ankara', '9789754914146', '\"ANKARA ŞEHRİNİN DOĞAL BİTKİLERİ\" isimli bu kitap özellikle doğayı sevenlere bitkileri tanıyabilmeleri ve böylelikle koruyabilmeleri amacıyla bir kılavuz olabilecek niteliktedir.Hacettepe Üniversitesi Beytepe Kampüsü ve çevresinde yetişen doğal bitkilerin de içinde yer aldığı bu kitabın, öncelikle akademisyenlere ve öğrencilerimize olmak üzere doğaya ilgi duyan herkese yararlı olacağını umut ediyorum. Kitabın hazırlanmasında ve basılmasında emeği geçenlere şükranlarımı sunuyorum.', 9, 9, 'Türkçe'),
(10, 'Eyewitness Visual Dictionary: Plants', 2004, '2020-11-04 19:05:43', 'Ankara', '9789754033243', 'Text and labeled illustrations depict a variety of plants and their parts, including woody, flowering, desert, and tropical plants', 10, 10, 'İngilizce'),
(22, '', 0000, '0000-00-00 00:00:00', '', '', '', 0, 0, '');

-- --------------------------------------------------------

--
-- Görünüm yapısı durumu `kitaplar`
-- (Asıl görünüm için aşağıya bakın)
--
CREATE TABLE `kitaplar` (
);

-- --------------------------------------------------------

--
-- Görünüm yapısı durumu `kitaplistesi`
-- (Asıl görünüm için aşağıya bakın)
--
CREATE TABLE `kitaplistesi` (
`kitapAdi` varchar(200)
,`yayineviAdi` varchar(100)
,`AdSoyad` varchar(101)
);

-- --------------------------------------------------------

--
-- Görünüm yapısı durumu `liste`
-- (Asıl görünüm için aşağıya bakın)
--
CREATE TABLE `liste` (
`kitapAdi` varchar(200)
,`AdSoyad` varchar(101)
);

-- --------------------------------------------------------

--
-- Görünüm yapısı durumu `liste1`
-- (Asıl görünüm için aşağıya bakın)
--
CREATE TABLE `liste1` (
`kitapAdi` varchar(200)
,`AdSoyad` varchar(101)
,`yayineviAdi` varchar(100)
);

-- --------------------------------------------------------

--
-- Görünüm yapısı durumu `liste2`
-- (Asıl görünüm için aşağıya bakın)
--
CREATE TABLE `liste2` (
`kitapAdi` varchar(200)
,`kitapBasimTarih` year(4)
);

-- --------------------------------------------------------

--
-- Görünüm yapısı durumu `liste4`
-- (Asıl görünüm için aşağıya bakın)
--
CREATE TABLE `liste4` (
);

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
(3, '2020-11-05 19:07:44', 'Nobel Akademik Yayıncılık', 'https://www.nobelyayin.com/', '(0442) 231 42 89', NULL),
(4, '2020-11-05 19:07:44', 'Kabalcı Yayınevi', NULL, '(0212) 236 62 34', NULL),
(5, '2020-11-05 19:07:44', 'Türkiye İş Bankası Kültür Yayınları', 'https://www.iskultur.com.tr/', ' +90 212 252 3991', 'bilgi@iskultur.com.tr'),
(6, '2020-11-05 19:07:44', 'Phaidon Yayınları', NULL, '', NULL),
(7, '2020-11-05 19:07:44', 'Türkiye Tabiatını Koruma Derneği ', 'http://www.ttkder.org.tr/index.php/iletisim', '0312 425 19 44', 'ttkder@ttkder.org.tr'),
(8, '2020-11-05 19:07:44', 'Zonguldak Karaelmas Üniversitesi, Bartın Orman Fakültesi', 'https://orman.bartin.edu.tr/', ' 0 (378) 223 5100', 'bof@bartin.edu.tr'),
(9, '2020-11-05 19:07:44', 'Hacettepe Üniversitesi Basımevi', 'http://www.library.hacettepe.edu.tr/books/contact.html', '0 (362) 305 1487', ''),
(10, '2020-11-05 19:07:44', 'TÜBİTAK Popüler Bilim Yayınları', 'https://esatis.tubitak.gov.tr/', '0 (312) 298 13 37\r\n\r\n ', 'kitap.satis@tubitak.gov.tr');

-- --------------------------------------------------------

--
-- Görünüm yapısı durumu `yayinevleri`
-- (Asıl görünüm için aşağıya bakın)
--
CREATE TABLE `yayinevleri` (
`yayineviKayitNo` int(11)
,`yayineviKayitTarih` timestamp
,`yayineviAdi` varchar(100)
,`yayineviURL` varchar(100)
,`yayıneviTelefonNumarası` varchar(100)
,`yayıneviEmailAdresi` varchar(100)
);

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
(1, '2020-11-05 15:11:20', 'Michael ', 'Pollan', 'http://www.hopa.gen.tr/?pnum=112&pt=Metin+SARIBA%C5%9E'),
(2, '2020-11-05 15:51:34', 'Burhan', 'Kaçar', 'https://www.biyografya.com/biyografi/1410'),
(3, '2020-11-05 15:51:34', 'İlkay ', ' Öztürk Çalı', 'https://tr.linkedin.com/in/ilkay-%C3%B6zt%C3%BCrk-%C3%A7al%C4%B1-8874668b'),
(4, '2020-11-05 15:51:34', 'Oktay ', 'Mete', 'https://kidega.com/yazar/oktay-mete-150159'),
(5, '2020-11-05 15:51:34', 'Stephanie', 'Donaldson', 'https://g.co/kgs/kSTb8L'),
(6, '2020-11-05 15:51:34', 'Tim', 'Richardson', 'https://g.co/kgs/QWjqth'),
(7, '2020-11-05 15:51:34', 'Tuna', 'Ekim', 'https://tr.linkedin.com/in/tuna-ekim-a6153b35'),
(8, '2020-11-05 15:51:34', 'Metin', 'Sarıbaş', 'https://g.co/kgs/PdkhHX'),
(9, '2020-11-05 15:51:34', 'Galip', 'Akaydın', 'https://g.co/kgs/6qmh4n'),
(10, '2020-11-05 15:51:34', 'Deni', 'Brown', 'https://g.co/kgs/GNthBz'),
(33, '2021-01-09 19:03:02', '', '', '');

-- --------------------------------------------------------

--
-- Görünüm yapısı `kitaplar`
--
DROP TABLE IF EXISTS `kitaplar`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `kitaplar`  AS SELECT `kitap`.`kitapKayitNo` AS `kitapKayitNo`, `kitap`.`kitapKayitTarih` AS `kitapKayitTarih`, `kitap`.`kitapAdi` AS `kitapAdi`, `kitap`.`kitapISBN` AS `kitapISBN`, `kitap`.`kitapBasimTarih` AS `kitapBasimTarih`, `kitap`.`kitapBasimYeri` AS `kitapBasimYeri`, `kitap`.`kitapDili` AS `kitapDili`, `kitap`.`HangiBölgedeYetisenBitkiler` AS `HangiBölgedeYetisenBitkiler`, `kitap`.`kitapElektronikAdresi` AS `kitapElektronikAdresi`, `kitap`.`yayineviKayitno` AS `yayineviKayitno`, `kitap`.`yazarKayitNo` AS `yazarKayitNo` FROM `kitap` ORDER BY `kitap`.`kitapKayitNo` ASC ;

-- --------------------------------------------------------

--
-- Görünüm yapısı `kitaplistesi`
--
DROP TABLE IF EXISTS `kitaplistesi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `kitaplistesi`  AS SELECT `k`.`kitapAdi` AS `kitapAdi`, `ye`.`yayineviAdi` AS `yayineviAdi`, concat(`ya`.`yazarAdi`,' ',`ya`.`yazarSoyadi`) AS `AdSoyad` FROM ((`kitap` `k` join `yayinevi` `ye`) join `yazar` `ya`) WHERE `k`.`yayineviKayitNo` = `ye`.`yayineviKayitNo` AND `k`.`yazarKayitNo` = `ya`.`yazarKayitNo` ;

-- --------------------------------------------------------

--
-- Görünüm yapısı `liste`
--
DROP TABLE IF EXISTS `liste`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `liste`  AS SELECT `k`.`kitapAdi` AS `kitapAdi`, concat(`r`.`yazarAdi`,' ',`r`.`yazarSoyadi`) AS `AdSoyad` FROM ((`kitap` `k` join `yayinevi` `y`) join `yazar` `r`) WHERE `k`.`yayineviKayitNo` = `y`.`yayineviKayitNo` AND `k`.`yazarKayitNo` = `r`.`yazarKayitNo` ;

-- --------------------------------------------------------

--
-- Görünüm yapısı `liste1`
--
DROP TABLE IF EXISTS `liste1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `liste1`  AS SELECT `k`.`kitapAdi` AS `kitapAdi`, concat(`r`.`yazarAdi`,' ',`r`.`yazarSoyadi`) AS `AdSoyad`, `y`.`yayineviAdi` AS `yayineviAdi` FROM ((`kitap` `k` join `yayinevi` `y`) join `yazar` `r`) WHERE `k`.`yayineviKayitNo` = `y`.`yayineviKayitNo` AND `k`.`yazarKayitNo` = `r`.`yazarKayitNo` ;

-- --------------------------------------------------------

--
-- Görünüm yapısı `liste2`
--
DROP TABLE IF EXISTS `liste2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `liste2`  AS SELECT `kitap`.`kitapAdi` AS `kitapAdi`, `kitap`.`kitapBasimTarih` AS `kitapBasimTarih` FROM `kitap` ORDER BY `kitap`.`kitapBasimTarih` ASC ;

-- --------------------------------------------------------

--
-- Görünüm yapısı `liste4`
--
DROP TABLE IF EXISTS `liste4`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `liste4`  AS SELECT `kitap`.`kitapKayitNo` AS `kitapKayitNo`, `kitap`.`kitapKayitTarih` AS `kitapKayitTarih`, `kitap`.`kitapAdi` AS `kitapAdi`, `kitap`.`kitapISBN` AS `kitapISBN`, `kitap`.`kitapBasimTarih` AS `kitapBasimTarih`, `kitap`.`kitapBasimYeri` AS `kitapBasimYeri`, `kitap`.`kitapDili` AS `kitapDili`, `kitap`.`HangiBölgedeYetisenBitkiler` AS `HangiBölgedeYetisenBitkiler`, `kitap`.`kitapElektronikAdresi` AS `kitapElektronikAdresi`, `kitap`.`yayineviKayitno` AS `yayineviKayitno`, `kitap`.`yazarKayitNo` AS `yazarKayitNo` FROM `kitap` ORDER BY `kitap`.`kitapBasimTarih` DESC ;

-- --------------------------------------------------------

--
-- Görünüm yapısı `yayinevleri`
--
DROP TABLE IF EXISTS `yayinevleri`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `yayinevleri`  AS SELECT `yayinevi`.`yayineviKayitNo` AS `yayineviKayitNo`, `yayinevi`.`yayineviKayitTarih` AS `yayineviKayitTarih`, `yayinevi`.`yayineviAdi` AS `yayineviAdi`, `yayinevi`.`yayineviURL` AS `yayineviURL`, `yayinevi`.`yayıneviTelefonNumarası` AS `yayıneviTelefonNumarası`, `yayinevi`.`yayıneviEmailAdresi` AS `yayıneviEmailAdresi` FROM `yayinevi` ;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `kitap`
--
ALTER TABLE `kitap`
  ADD PRIMARY KEY (`kitapKayitNo`) USING BTREE,
  ADD UNIQUE KEY `kitapISBN` (`kitapISBN`);

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
  MODIFY `kitapKayitNo` int(6) NOT NULL AUTO_INCREMENT COMMENT 'Kitap tablosunun ana anahtarı', AUTO_INCREMENT=24;

--
-- Tablo için AUTO_INCREMENT değeri `yayinevi`
--
ALTER TABLE `yayinevi`
  MODIFY `yayineviKayitNo` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Yayınevi tablosunun anahtar alanı', AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `yazar`
--
ALTER TABLE `yazar`
  MODIFY `yazarKayitNo` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Yazar tablosunun anahtar alanı', AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
