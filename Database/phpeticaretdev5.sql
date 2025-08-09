-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost
-- Üretim Zamanı: 31 Oca 2025, 18:46:55
-- Sunucu sürümü: 9.0.1
-- PHP Sürümü: 8.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `eticaret`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `about`
--

CREATE TABLE `about` (
  `id` int NOT NULL,
  `vision` text CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL,
  `mission` text CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL,
  `biography` text CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL,
  `image1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL,
  `image2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `about`
--

INSERT INTO `about` (`id`, `vision`, `mission`, `biography`, `image1`, `image2`, `created_at`, `updated_at`) VALUES
(1, 'Eticaretv5 olarak, müşterilerimize en iyi alışveriş deneyimini sunmayı hedefliyoruz. Teknolojiyi ve yenilikleri takip ederek, sektörde öncü bir marka olmayı amaçlıyoruz...', 'Müşterilerimize kaliteli ürünleri en uygun fiyatlarlasunmak, müşteri memnuniyetini en üst düzeyde tutmak ve sürdürülebilir bir iş modeli oluşturmak misyonumuzdur..', '<p>Eticaretv5, 2020 yılında kurulmuş olup, kısa s&uuml;rede sekt&ouml;rde &ouml;nemli bir yer edinmiştir. Kuruluşumuzdan bu yana, m&uuml;şteri odaklı hizmet anlayışımız ve kaliteli &uuml;r&uuml;nlerimizle b&uuml;y&uuml;meye devam ediyoruz. Firmamız, geniş &uuml;r&uuml;n yelpazesi ve uygun fiyat politikası ile m&uuml;şterilerimizin ihtiya&ccedil;larını karşılamayı hedeflemektedir. Teknolojik altyapımız ve uzman ekibimizle, m&uuml;şterilerimize en iyi hizmeti sunmak i&ccedil;in &ccedil;alışıyoruz. Eticaretv5 olarak, m&uuml;şteri memnuniyetini her zaman &ouml;n planda tutuyoruz. M&uuml;şterilerimizin geri bildirimlerini dikkate alarak, hizmet kalitemizi s&uuml;rekli olarak iyileştiriyoruz. Gelecekte de aynı anlayışla, sekt&ouml;rdeki lider konumumuzu s&uuml;rd&uuml;rmeyi hedefliyoruz. Firmamızın başarısının arkasında, alanında uzman ve deneyimli bir ekip bulunmaktadır. Ekibimiz, m&uuml;şteri memnuniyetini sağlamak i&ccedil;in &ouml;zveriyle &ccedil;alışmaktadır. Eticaretv5 olarak, &ccedil;alışanlarımızın gelişimine &ouml;nem veriyor ve s&uuml;rekli eğitimlerle onları destekliyoruz. Eticaretv5, m&uuml;şteri memnuniyetini en &uuml;st d&uuml;zeyde tutmak i&ccedil;in s&uuml;rekli olarak yenilikler yapmaktadır. Teknolojik altyapımızı s&uuml;rekli olarak g&uuml;ncelliyor ve m&uuml;şterilerimize en iyi hizmeti sunmak i&ccedil;in &ccedil;alışıyoruz. M&uuml;şterilerimizin ihtiya&ccedil;larını karşılamak i&ccedil;in geniş bir &uuml;r&uuml;n yelpazesi sunuyoruz. Firmamız, m&uuml;şteri odaklı hizmet anlayışı ile sekt&ouml;rde fark yaratmaktadır. M&uuml;şterilerimizin memnuniyeti bizim i&ccedil;in her zaman &ouml;nceliklidir. Bu nedenle, m&uuml;şteri geri bildirimlerini dikkate alarak hizmet kalitemizi s&uuml;rekli olarak iyileştiriyoruz.</p>', 'https://place-hold.it/600x400?text=Firmamız', 'https://place-hold.it/600x400?text=Firmamız', '2025-01-25 11:12:28', '2025-01-31 17:16:46');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `BlogPosts`
--

CREATE TABLE `BlogPosts` (
  `id` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL,
  `thumbnail_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `BlogPosts`
--

INSERT INTO `BlogPosts` (`id`, `title`, `slug`, `content`, `thumbnail_url`, `published_at`, `created_at`, `updated_at`) VALUES
(3, 'JavaScript ile İlk Projeniz', 'javascript-ile-ilk-projeniz', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent fringilla ligula vitae metus commodo rutrum. Aliquam pharetra ut lorem ac eleifend. Nam fringilla imperdiet lorem, vel rutrum nulla pulvinar in. Nunc scelerisque sed erat interdum molestie. Vestibulum finibus diam sem, eget tempus quam placerat sed. Phasellus pellentesque id quam id eleifend. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec ultricies convallis consectetur. Aliquam erat volutpat. Nunc efficitur mollis porttitor. Suspendisse eget egestas diam.</p>\n\n<p>Maecenas aliquam nisi tortor, ac imperdiet eros eleifend ut. Nam dolor tortor, mollis quis massa eu, consectetur volutpat neque. Nulla ultricies lectus vitae arcu sollicitudin tempus. Pellentesque iaculis erat a ex volutpat dapibus. Sed eget bibendum neque. Praesent varius urna et nulla fringilla dignissim sit amet non lectus. Nunc fermentum eleifend est, et hendrerit mi fringilla nec. Ut in congue enim. Donec quis tincidunt orci, a commodo augue. Maecenas facilisis risus dui, at vulputate neque venenatis et. Vivamus nec mattis nulla. Ut non pretium felis, in luctus felis. Vivamus congue orci nec purus sodales ullamcorper.</p>\n\n<p>Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed euismod dui non mattis fringilla. In quis laoreet dui. Aliquam maximus auctor maximus. Donec volutpat scelerisque lobortis. In non metus sed lectus tincidunt semper quis vitae sapien. Mauris libero urna, ultricies quis ullamcorper et, tristique eget urna. Quisque sit amet faucibus diam. Vivamus et nibh vehicula, cursus libero eu, pretium urna. Maecenas dapibus auctor elit quis ornare.</p>\n\n<p>Ut hendrerit, dolor a rhoncus vulputate, justo elit semper ex, molestie tincidunt lorem ex eget sem. Nunc nec pretium ipsum. Cras vel elementum orci. Ut vehicula odio ac blandit interdum. Ut interdum eleifend lorem, nec varius enim. Suspendisse euismod congue enim a sollicitudin. Phasellus quis fermentum nisl. Fusce rutrum, erat ullamcorper vestibulum aliquam, mi lacus iaculis lacus, sed laoreet nisi ligula vitae odio. Aliquam tristique massa accumsan pharetra semper. Pellentesque suscipit est ut efficitur aliquam.</p>\n\n<p>Phasellus fringilla, est ut aliquam accumsan, massa odio commodo tortor, sollicitudin vehicula justo tortor vestibulum purus. Pellentesque a tristique lectus, ut mollis tortor. Quisque eget maximus neque. Suspendisse in lectus cursus libero porta maximus. Nam hendrerit, mauris a bibendum volutpat, risus tellus interdum tortor, a blandit libero ante id mi. Morbi congue lacus velit. Mauris efficitur id urna quis ornare.</p>', 'https://place-hold.it/600x400?text=Blog+Cover', '2025-01-03 11:00:00', '2025-01-22 14:32:14', '2025-01-25 15:38:10'),
(4, 'Responsive Tasarım Nedir?', 'responsive-tasarim-nedir', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent fringilla ligula vitae metus commodo rutrum. Aliquam pharetra ut lorem ac eleifend. Nam fringilla imperdiet lorem, vel rutrum nulla pulvinar in. Nunc scelerisque sed erat interdum molestie. Vestibulum finibus diam sem, eget tempus quam placerat sed. Phasellus pellentesque id quam id eleifend. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec ultricies convallis consectetur. Aliquam erat volutpat. Nunc efficitur mollis porttitor. Suspendisse eget egestas diam.</p>\n\n<p>Maecenas aliquam nisi tortor, ac imperdiet eros eleifend ut. Nam dolor tortor, mollis quis massa eu, consectetur volutpat neque. Nulla ultricies lectus vitae arcu sollicitudin tempus. Pellentesque iaculis erat a ex volutpat dapibus. Sed eget bibendum neque. Praesent varius urna et nulla fringilla dignissim sit amet non lectus. Nunc fermentum eleifend est, et hendrerit mi fringilla nec. Ut in congue enim. Donec quis tincidunt orci, a commodo augue. Maecenas facilisis risus dui, at vulputate neque venenatis et. Vivamus nec mattis nulla. Ut non pretium felis, in luctus felis. Vivamus congue orci nec purus sodales ullamcorper.</p>\n\n<p>Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed euismod dui non mattis fringilla. In quis laoreet dui. Aliquam maximus auctor maximus. Donec volutpat scelerisque lobortis. In non metus sed lectus tincidunt semper quis vitae sapien. Mauris libero urna, ultricies quis ullamcorper et, tristique eget urna. Quisque sit amet faucibus diam. Vivamus et nibh vehicula, cursus libero eu, pretium urna. Maecenas dapibus auctor elit quis ornare.</p>\n\n<p>Ut hendrerit, dolor a rhoncus vulputate, justo elit semper ex, molestie tincidunt lorem ex eget sem. Nunc nec pretium ipsum. Cras vel elementum orci. Ut vehicula odio ac blandit interdum. Ut interdum eleifend lorem, nec varius enim. Suspendisse euismod congue enim a sollicitudin. Phasellus quis fermentum nisl. Fusce rutrum, erat ullamcorper vestibulum aliquam, mi lacus iaculis lacus, sed laoreet nisi ligula vitae odio. Aliquam tristique massa accumsan pharetra semper. Pellentesque suscipit est ut efficitur aliquam.</p>\n\n<p>Phasellus fringilla, est ut aliquam accumsan, massa odio commodo tortor, sollicitudin vehicula justo tortor vestibulum purus. Pellentesque a tristique lectus, ut mollis tortor. Quisque eget maximus neque. Suspendisse in lectus cursus libero porta maximus. Nam hendrerit, mauris a bibendum volutpat, risus tellus interdum tortor, a blandit libero ante id mi. Morbi congue lacus velit. Mauris efficitur id urna quis ornare.</p>', 'https://place-hold.it/600x400?text=Blog+Cover', '2025-01-04 12:00:00', '2025-01-22 14:32:14', '2025-01-25 15:38:09'),
(5, 'HTML ve CSS ile Hızlı Başlangıç', 'html-css-hizli-baslangic', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent fringilla ligula vitae metus commodo rutrum. Aliquam pharetra ut lorem ac eleifend. Nam fringilla imperdiet lorem, vel rutrum nulla pulvinar in. Nunc scelerisque sed erat interdum molestie. Vestibulum finibus diam sem, eget tempus quam placerat sed. Phasellus pellentesque id quam id eleifend. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec ultricies convallis consectetur. Aliquam erat volutpat. Nunc efficitur mollis porttitor. Suspendisse eget egestas diam.</p>\n\n<p>Maecenas aliquam nisi tortor, ac imperdiet eros eleifend ut. Nam dolor tortor, mollis quis massa eu, consectetur volutpat neque. Nulla ultricies lectus vitae arcu sollicitudin tempus. Pellentesque iaculis erat a ex volutpat dapibus. Sed eget bibendum neque. Praesent varius urna et nulla fringilla dignissim sit amet non lectus. Nunc fermentum eleifend est, et hendrerit mi fringilla nec. Ut in congue enim. Donec quis tincidunt orci, a commodo augue. Maecenas facilisis risus dui, at vulputate neque venenatis et. Vivamus nec mattis nulla. Ut non pretium felis, in luctus felis. Vivamus congue orci nec purus sodales ullamcorper.</p>\n\n<p>Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed euismod dui non mattis fringilla. In quis laoreet dui. Aliquam maximus auctor maximus. Donec volutpat scelerisque lobortis. In non metus sed lectus tincidunt semper quis vitae sapien. Mauris libero urna, ultricies quis ullamcorper et, tristique eget urna. Quisque sit amet faucibus diam. Vivamus et nibh vehicula, cursus libero eu, pretium urna. Maecenas dapibus auctor elit quis ornare.</p>\n\n<p>Ut hendrerit, dolor a rhoncus vulputate, justo elit semper ex, molestie tincidunt lorem ex eget sem. Nunc nec pretium ipsum. Cras vel elementum orci. Ut vehicula odio ac blandit interdum. Ut interdum eleifend lorem, nec varius enim. Suspendisse euismod congue enim a sollicitudin. Phasellus quis fermentum nisl. Fusce rutrum, erat ullamcorper vestibulum aliquam, mi lacus iaculis lacus, sed laoreet nisi ligula vitae odio. Aliquam tristique massa accumsan pharetra semper. Pellentesque suscipit est ut efficitur aliquam.</p>\n\n<p>Phasellus fringilla, est ut aliquam accumsan, massa odio commodo tortor, sollicitudin vehicula justo tortor vestibulum purus. Pellentesque a tristique lectus, ut mollis tortor. Quisque eget maximus neque. Suspendisse in lectus cursus libero porta maximus. Nam hendrerit, mauris a bibendum volutpat, risus tellus interdum tortor, a blandit libero ante id mi. Morbi congue lacus velit. Mauris efficitur id urna quis ornare.</p>', 'https://place-hold.it/600x400?text=Blog+Cover', '2025-01-05 13:00:00', '2025-01-22 14:32:14', '2025-01-25 15:38:07'),
(6, 'SEO: Arama Motoru Optimizasyonu', 'seo-arama-motoru-optimizasyonu', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent fringilla ligula vitae metus commodo rutrum. Aliquam pharetra ut lorem ac eleifend. Nam fringilla imperdiet lorem, vel rutrum nulla pulvinar in. Nunc scelerisque sed erat interdum molestie. Vestibulum finibus diam sem, eget tempus quam placerat sed. Phasellus pellentesque id quam id eleifend. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec ultricies convallis consectetur. Aliquam erat volutpat. Nunc efficitur mollis porttitor. Suspendisse eget egestas diam.</p>\n\n<p>Maecenas aliquam nisi tortor, ac imperdiet eros eleifend ut. Nam dolor tortor, mollis quis massa eu, consectetur volutpat neque. Nulla ultricies lectus vitae arcu sollicitudin tempus. Pellentesque iaculis erat a ex volutpat dapibus. Sed eget bibendum neque. Praesent varius urna et nulla fringilla dignissim sit amet non lectus. Nunc fermentum eleifend est, et hendrerit mi fringilla nec. Ut in congue enim. Donec quis tincidunt orci, a commodo augue. Maecenas facilisis risus dui, at vulputate neque venenatis et. Vivamus nec mattis nulla. Ut non pretium felis, in luctus felis. Vivamus congue orci nec purus sodales ullamcorper.</p>\n\n<p>Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed euismod dui non mattis fringilla. In quis laoreet dui. Aliquam maximus auctor maximus. Donec volutpat scelerisque lobortis. In non metus sed lectus tincidunt semper quis vitae sapien. Mauris libero urna, ultricies quis ullamcorper et, tristique eget urna. Quisque sit amet faucibus diam. Vivamus et nibh vehicula, cursus libero eu, pretium urna. Maecenas dapibus auctor elit quis ornare.</p>\n\n<p>Ut hendrerit, dolor a rhoncus vulputate, justo elit semper ex, molestie tincidunt lorem ex eget sem. Nunc nec pretium ipsum. Cras vel elementum orci. Ut vehicula odio ac blandit interdum. Ut interdum eleifend lorem, nec varius enim. Suspendisse euismod congue enim a sollicitudin. Phasellus quis fermentum nisl. Fusce rutrum, erat ullamcorper vestibulum aliquam, mi lacus iaculis lacus, sed laoreet nisi ligula vitae odio. Aliquam tristique massa accumsan pharetra semper. Pellentesque suscipit est ut efficitur aliquam.</p>\n\n<p>Phasellus fringilla, est ut aliquam accumsan, massa odio commodo tortor, sollicitudin vehicula justo tortor vestibulum purus. Pellentesque a tristique lectus, ut mollis tortor. Quisque eget maximus neque. Suspendisse in lectus cursus libero porta maximus. Nam hendrerit, mauris a bibendum volutpat, risus tellus interdum tortor, a blandit libero ante id mi. Morbi congue lacus velit. Mauris efficitur id urna quis ornare.</p>', 'https://place-hold.it/600x400?text=Blog+Cover', '2025-01-06 14:00:00', '2025-01-22 14:32:14', '2025-01-25 15:38:05'),
(7, 'WordPress ile Blog Oluşturma', 'wordpress-ile-blog-olusturma', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent fringilla ligula vitae metus commodo rutrum. Aliquam pharetra ut lorem ac eleifend. Nam fringilla imperdiet lorem, vel rutrum nulla pulvinar in. Nunc scelerisque sed erat interdum molestie. Vestibulum finibus diam sem, eget tempus quam placerat sed. Phasellus pellentesque id quam id eleifend. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec ultricies convallis consectetur. Aliquam erat volutpat. Nunc efficitur mollis porttitor. Suspendisse eget egestas diam.</p>\n\n<p>Maecenas aliquam nisi tortor, ac imperdiet eros eleifend ut. Nam dolor tortor, mollis quis massa eu, consectetur volutpat neque. Nulla ultricies lectus vitae arcu sollicitudin tempus. Pellentesque iaculis erat a ex volutpat dapibus. Sed eget bibendum neque. Praesent varius urna et nulla fringilla dignissim sit amet non lectus. Nunc fermentum eleifend est, et hendrerit mi fringilla nec. Ut in congue enim. Donec quis tincidunt orci, a commodo augue. Maecenas facilisis risus dui, at vulputate neque venenatis et. Vivamus nec mattis nulla. Ut non pretium felis, in luctus felis. Vivamus congue orci nec purus sodales ullamcorper.</p>\n\n<p>Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed euismod dui non mattis fringilla. In quis laoreet dui. Aliquam maximus auctor maximus. Donec volutpat scelerisque lobortis. In non metus sed lectus tincidunt semper quis vitae sapien. Mauris libero urna, ultricies quis ullamcorper et, tristique eget urna. Quisque sit amet faucibus diam. Vivamus et nibh vehicula, cursus libero eu, pretium urna. Maecenas dapibus auctor elit quis ornare.</p>\n\n<p>Ut hendrerit, dolor a rhoncus vulputate, justo elit semper ex, molestie tincidunt lorem ex eget sem. Nunc nec pretium ipsum. Cras vel elementum orci. Ut vehicula odio ac blandit interdum. Ut interdum eleifend lorem, nec varius enim. Suspendisse euismod congue enim a sollicitudin. Phasellus quis fermentum nisl. Fusce rutrum, erat ullamcorper vestibulum aliquam, mi lacus iaculis lacus, sed laoreet nisi ligula vitae odio. Aliquam tristique massa accumsan pharetra semper. Pellentesque suscipit est ut efficitur aliquam.</p>\n\n<p>Phasellus fringilla, est ut aliquam accumsan, massa odio commodo tortor, sollicitudin vehicula justo tortor vestibulum purus. Pellentesque a tristique lectus, ut mollis tortor. Quisque eget maximus neque. Suspendisse in lectus cursus libero porta maximus. Nam hendrerit, mauris a bibendum volutpat, risus tellus interdum tortor, a blandit libero ante id mi. Morbi congue lacus velit. Mauris efficitur id urna quis ornare.</p>', 'https://place-hold.it/600x400?text=Blog+Cover', '2025-01-07 15:00:00', '2025-01-22 14:32:14', '2025-01-25 15:38:03'),
(8, 'Veritabanı Tasarımında İpuçları 01', 'veritaban-tasar-m-nda-pu-lar-01', 'Veritabanı tasarımı sırasında dikkat etmeniz gereken önemli noktaları ele alıyoruz.<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent fringilla ligula vitae metus commodo rutrum. Aliquam pharetra ut lorem ac eleifend. Nam fringilla imperdiet lorem, vel rutrum nulla pulvinar in. Nunc scelerisque sed erat interdum molestie. Vestibulum finibus diam sem, eget tempus quam placerat sed. Phasellus pellentesque id quam id eleifend. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec ultricies convallis consectetur. Aliquam erat volutpat. Nunc efficitur mollis porttitor. Suspendisse eget egestas diam.</p>\r\n\r\n<p>Maecenas aliquam nisi tortor, ac imperdiet eros eleifend ut. Nam dolor tortor, mollis quis massa eu, consectetur volutpat neque. Nulla ultricies lectus vitae arcu sollicitudin tempus. Pellentesque iaculis erat a ex volutpat dapibus. Sed eget bibendum neque. Praesent varius urna et nulla fringilla dignissim sit amet non lectus. Nunc fermentum eleifend est, et hendrerit mi fringilla nec. Ut in congue enim. Donec quis tincidunt orci, a commodo augue. Maecenas facilisis risus dui, at vulputate neque venenatis et. Vivamus nec mattis nulla. Ut non pretium felis, in luctus felis. Vivamus congue orci nec purus sodales ullamcorper.</p>\r\n\r\n<p>Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed euismod dui non mattis fringilla. In quis laoreet dui. Aliquam maximus auctor maximus. Donec volutpat scelerisque lobortis. In non metus sed lectus tincidunt semper quis vitae sapien. Mauris libero urna, ultricies quis ullamcorper et, tristique eget urna. Quisque sit amet faucibus diam. Vivamus et nibh vehicula, cursus libero eu, pretium urna. Maecenas dapibus auctor elit quis ornare.</p>\r\n\r\n<p>Ut hendrerit, dolor a rhoncus vulputate, justo elit semper ex, molestie tincidunt lorem ex eget sem. Nunc nec pretium ipsum. Cras vel elementum orci. Ut vehicula odio ac blandit interdum. Ut interdum eleifend lorem, nec varius enim. Suspendisse euismod congue enim a sollicitudin. Phasellus quis fermentum nisl. Fusce rutrum, erat ullamcorper vestibulum aliquam, mi lacus iaculis lacus, sed laoreet nisi ligula vitae odio. Aliquam tristique massa accumsan pharetra semper. Pellentesque suscipit est ut efficitur aliquam.</p>\r\n\r\n<p>Phasellus fringilla, est ut aliquam accumsan, massa odio commodo tortor, sollicitudin vehicula justo tortor vestibulum purus. Pellentesque a tristique lectus, ut mollis tortor. Quisque eget maximus neque. Suspendisse in lectus cursus libero porta maximus. Nam hendrerit, mauris a bibendum volutpat, risus tellus interdum tortor, a blandit libero ante id mi. Morbi congue lacus velit. Mauris efficitur id urna quis ornare.</p>', 'https://place-hold.it/600x400?text=Blog+Cover', '2025-01-08 16:00:00', '2025-01-22 14:32:14', '2025-01-25 15:40:07');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cart`
--

CREATE TABLE `cart` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES
(24, 12, 36, 1, '2025-01-31 18:46:40', '2025-01-31 18:46:40'),
(25, 12, 36, 1, '2025-01-31 18:46:48', '2025-01-31 18:46:48');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `categories`
--

CREATE TABLE `categories` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci,
  `status` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `icon`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Elektronik', 'elektronik', 'fas fa-tv', 'Elektronik cihazlar ve aksesuarlar', 1, '2025-01-16 09:23:36', '2025-01-22 21:24:18'),
(2, 'Moda', 'moda', 'fas fa-tshirt', 'Kadın ve erkek modası ürünleri.', 1, '2025-01-16 09:23:36', '2025-01-16 09:23:36'),
(3, 'Ev & Yaşam', 'ev-ve-yasam', 'fas fa-couch', 'Mobilya, dekorasyon ve ev gereçleri.', 1, '2025-01-16 09:23:36', '2025-01-16 09:23:36'),
(4, 'Spor & Outdoor', 'spor-ve-outdoor', 'fas fa-dumbbell', 'Spor malzemeleri ve outdoor ekipmanları.', 1, '2025-01-16 09:23:36', '2025-01-16 09:23:36'),
(5, 'Kitap & Kırtasiye', 'kitap-ve-kirtasiye', 'fas fa-book', 'Kitaplar, defterler ve kırtasiye ürünleri.', 1, '2025-01-16 09:23:36', '2025-01-16 09:23:36'),
(8, 'Ev Ürünleri', 'ev-urunleri', 'fas fa-home', 'ev ürünleri', 1, '2025-01-22 21:29:55', '2025-01-22 21:29:55');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `deals`
--

CREATE TABLE `deals` (
  `id` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `deals`
--

INSERT INTO `deals` (`id`, `title`, `content`, `start_date`, `end_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Elektronik İndirim Günleri', 'Tüm elektronik ürünlerde %50’ye varan indirim! Bilgisayar, telefon ve TV modellerinde büyük fırsatlar sizi bekliyor.', '2025-01-15 09:00:00', '2026-01-31 23:59:59', 0, '2025-01-16 09:33:39', '2025-01-29 13:39:16'),
(2, 'Kış Sezonu İndirimi Var', 'Mont, bot ve kışlık aksesuarlarda harika indirimler! Soğuk havalara hazırlanın ve kaçırılmayacak fırsatları yakalayın.', '2025-01-10 00:00:00', '2026-01-31 23:59:59', 1, '2025-01-16 09:33:39', '2025-01-29 13:39:21'),
(3, 'Ev Dekorasyon Fırsatları', 'Evinizi yenileyin! Modern mobilyalar, dekoratif objeler ve aydınlatma ürünlerinde %40’a varan indirimler.', '2025-01-12 10:00:00', '2026-01-31 23:59:59', 1, '2025-01-16 09:33:39', '2025-01-29 13:39:23'),
(4, 'Spor Malzemelerinde Büyük İndirim', 'Fitness ekipmanları, koşu ayakkabıları ve spor kıyafetlerinde %60’a varan indirimlerle yeni yıla zinde girin.', '2025-01-14 08:00:00', '2026-01-31 23:59:59', 1, '2025-01-16 09:33:39', '2025-01-29 13:39:25'),
(5, 'Kitap Festivali', 'En çok satan romanlardan eğitim kitaplarına kadar geniş bir yelpazede %30’a varan indirimlerle kitap severleri bekliyoruz.', '2025-01-13 09:00:00', '2026-01-31 23:59:59', 1, '2025-01-16 09:33:39', '2025-01-29 13:39:27');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `orders`
--

CREATE TABLE `orders` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `status` enum('pending','paid','shipped','cancelled') CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `total_price`, `status`, `created_at`, `updated_at`) VALUES
(8, 12, 120.00, 'shipped', '2025-01-31 16:21:05', '2025-01-31 17:58:31');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `order_addresses`
--

CREATE TABLE `order_addresses` (
  `id` int NOT NULL,
  `order_id` int NOT NULL,
  `address_type` enum('shipping','billing') CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL,
  `full_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL,
  `city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL,
  `district` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL,
  `neighborhood` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `order_addresses`
--

INSERT INTO `order_addresses` (`id`, `order_id`, `address_type`, `full_name`, `phone`, `city`, `district`, `neighborhood`, `address`, `created_at`, `updated_at`) VALUES
(15, 8, 'shipping', 'Britanney Rich', '+1 (764) 917-4841', 'Et consequat Quae q', 'Voluptas lorem alias', 'Nam dolorum tenetur ', 'Sit et quia labore e', '2025-01-31 16:21:05', '2025-01-31 16:21:05'),
(16, 8, 'billing', 'Britanney Rich', '+1 (764) 917-4841', 'Et consequat Quae q', 'Voluptas lorem alias', 'Nam dolorum tenetur ', 'Sit et quia labore e', '2025-01-31 16:21:05', '2025-01-31 16:21:05');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `order_items`
--

CREATE TABLE `order_items` (
  `id` int NOT NULL,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(11, 8, 16, 1, 120.00, '2025-01-31 16:21:05', '2025-01-31 16:21:05');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `order_payments`
--

CREATE TABLE `order_payments` (
  `id` int NOT NULL,
  `order_id` int NOT NULL,
  `payment_status` enum('pending','completed','failed') CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci DEFAULT 'pending',
  `payment_method` enum('credit_card','paypal','bank_transfer') CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL,
  `transaction_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `payment_total` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `order_payments`
--

INSERT INTO `order_payments` (`id`, `order_id`, `payment_status`, `payment_method`, `transaction_id`, `payment_total`, `created_at`, `updated_at`) VALUES
(8, 8, 'completed', 'credit_card', '23482070', 120.00, '2025-01-31 16:21:05', '2025-01-31 16:21:05');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pages`
--

CREATE TABLE `pages` (
  `id` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL,
  `status` enum('published','draft') CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci DEFAULT 'draft',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `content`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Gizlilik Politikası', 'gizlilik-politikasi', '<h1>Gizlilik Politikası</h1>\r\n<p>Bu gizlilik politikası, kullanıcılarımızın gizliliğini korumak amacıyla hazırlanmıştır. Web sitemizi kullanarak kişisel bilgilerinizin nasıl toplandığını, kullanıldığını ve korunduğunu anlayabilirsiniz.</p>\r\n<ul>\r\n<li><strong>Kişisel Bilgi Toplama:</strong> Ad, soyad, e-posta adresi gibi bilgilerinizi yalnızca sizin onayınızla toplarız.</li>\r\n<li><strong>Bilgilerin Kullanımı:</strong> Hizmet sunumu, sipariş işleme ve m&uuml;şteri destek hizmetleri i&ccedil;in kullanılır.</li>\r\n<li><strong>Gizlilik Garantisi:</strong> Bilgileriniz &uuml;&ccedil;&uuml;nc&uuml; şahıslarla paylaşılmaz.</li>\r\n</ul>\r\n<p>Daha fazla bilgi i&ccedil;in bizimle iletişime ge&ccedil;ebilirsiniz.</p>', 'published', '2025-01-27 20:41:10', '2025-01-27 20:51:24'),
(2, 'Mesafeli Satış Sözleşmesi', 'mesafeli-satis-sozlesmesi', '<h1>Mesafeli Satış Sözleşmesi</h1>\r\n<p>Bu sözleşme, alıcı ile satıcı arasında elektronik ortamda yapılan alışverişlerde uygulanır.</p>\r\n<h2>1. Taraflar</h2>\r\n<p>SATICI: [Firma Adı]</p>\r\n<p>ALICI: [Alıcı Bilgileri]</p>\r\n<h2>2. Sözleşme Konusu</h2>\r\n<p>Satıcı, alıcıya sipariş edilen ürünleri eksiksiz, kusursuz ve mevzuata uygun şekilde teslim etmeyi taahhüt eder.</p>\r\n<p>Daha fazla detay için iletişim sayfamızı ziyaret edebilirsiniz.</p>', 'published', '2025-01-27 20:41:10', '2025-01-27 20:41:10'),
(3, 'Teslimat ve İade Şartları', 'teslimat-ve-iade-sartlari', '<h1>Teslimat ve İade Şartları</h1>\r\n<p>Firmamız aşağıdaki teslimat ve iade şartlarını uygulamaktadır:</p>\r\n<h2>Teslimat</h2>\r\n<ul>\r\n    <li>Siparişler, ödeme onayını takip eden 3 iş günü içinde kargoya verilir.</li>\r\n    <li>Teslimat süresi kargo firmasına bağlı olarak değişiklik gösterebilir.</li>\r\n</ul>\r\n<h2>İade</h2>\r\n<ul>\r\n    <li>Ürünler 14 gün içinde iade edilebilir.</li>\r\n    <li>İade edilecek ürünlerin orijinal ambalajında ve kullanılmamış olması gereklidir.</li>\r\n</ul>\r\n<p>İade politikamız hakkında daha fazla bilgi için müşteri hizmetlerimizle iletişime geçebilirsiniz.</p>', 'published', '2025-01-27 20:41:10', '2025-01-27 20:41:10'),
(4, 'KVKK ve Aydınlatma Metni', 'kvkk-ve-aydinlatma-metni', '<h1>KVKK ve Aydınlatma Metni</h1>\r\n<p>Kişisel Verilerin Korunması Kanunu (KVKK) kapsamında bilgilerinizin işlenmesi ve korunması hakkında sizi bilgilendirmek istiyoruz.</p>\r\n<h2>Hangi Veriler Toplanır?</h2>\r\n<p>Ad, soyad, telefon numarası, e-posta adresi gibi bilgiler toplanabilir.</p>\r\n<h2>Veri İşleme Amaçları</h2>\r\n<p>Kişisel verileriniz, hizmet sunumu ve yasal yükümlülüklerin yerine getirilmesi için işlenir.</p>\r\n<p>Daha fazla bilgi için bizimle iletişime geçebilirsiniz.</p>', 'published', '2025-01-27 20:41:10', '2025-01-27 20:41:10');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `products`
--

CREATE TABLE `products` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL,
  `price` float(9,2) NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL,
  `short_description` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL,
  `featured` enum('none','featured','bestseller') CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci DEFAULT 'none',
  `tag` enum('new','campaign','discount') CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `standard_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL,
  `hover_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL,
  `stock_quantity` int DEFAULT '0',
  `delivery_date` int DEFAULT NULL,
  `long_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci,
  `category_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `slug`, `short_description`, `featured`, `tag`, `standard_image`, `hover_image`, `stock_quantity`, `delivery_date`, `long_description`, `category_id`, `created_at`, `updated_at`) VALUES
(14, 'Akıllı Telefon', 100.00, 'akilli-telefon', 'Gelişmiş özelliklere sahip akıllı telefon.', 'featured', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Ak%C4%B1ll%C4%B1+Telefon', 'https://place-hold.it/600x400?text=Hover+Resmi+Ak%C4%B1ll%C4%B1+Telefon', 50, NULL, '<p>Bu akıllı telefon, son teknoloji özellikleri ve şık tasarımıyla öne çıkar. 5000mAh pil kapasitesi, ultra hızlı işlemcisi ve yüksek çözünürlüklü kamerası sayesinde kullanıcı deneyimini üst seviyeye taşır.</p>', 1, '2025-01-27 20:13:55', '2025-01-27 20:15:27'),
(15, 'Spor Ayakkabı', 250.00, 'spor-ayakkabi', 'Rahat ve şık tasarıma sahip spor ayakkabı.', 'featured', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Spor+Ayakkab%C4%B1', 'https://place-hold.it/600x400?text=Hover+Resmi+Spor+Ayakkab%C4%B1', 100, NULL, '<p>Bu spor ayakkabı, nefes alabilir malzemeler ve dayanıklı tabanı ile hem günlük kullanımda hem de spor aktivitelerinde mükemmel bir seçenektir. Şıklık ve rahatlık bir arada.</p>', 4, '2025-01-27 20:13:55', '2025-01-27 20:15:35'),
(16, 'Erkek Tişört', 120.00, 'erkek-tisort', 'Şık tasarımlı erkek tişört.', 'featured', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Erkek+T%C4%B0%C5%9F%C3%B6rt', 'https://place-hold.it/600x400?text=Hover+Resmi+Erkek+T%C4%B0%C5%9F%C3%B6rt', 75, NULL, '<p>Kaliteli pamuktan üretilmiş bu erkek tişört, nefes alabilir kumaşıyla rahatlık sunar. Günlük kombinlerinizde şıklığınızı tamamlayın.</p>', 2, '2025-01-27 20:13:55', '2025-01-27 20:15:39'),
(17, 'Ders Kitabı', 90.00, 'ders-kitabi', 'Eğitim için temel ders kitabı.', 'featured', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Ders+Kitab%C4%B1', 'https://place-hold.it/600x400?text=Hover+Resmi+Ders+Kitab%C4%B1', 60, NULL, '<p>Bu ders kitabı, öğrencilere temel bilgileri sunmak ve akademik başarıyı desteklemek için tasarlanmıştır. Zengin içeriği ve kolay anlaşılır diliyle etkili bir öğrenme sağlar.</p>', 5, '2025-01-27 20:13:55', '2025-01-27 20:15:43'),
(18, 'Modern Lamba', 180.00, 'modern-lamba', 'Şık tasarıma sahip modern lamba.', 'featured', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Modern+Lamba', 'https://place-hold.it/600x400?text=Hover+Resmi+Modern+Lamba', 30, NULL, '<p>Bu modern lamba, zarif tasarımı ve enerji tasarruflu yapısıyla yaşam alanlarınıza estetik bir dokunuş katar. Hem dekoratif hem de işlevseldir.</p>', 8, '2025-01-27 20:13:55', '2025-01-27 20:15:48'),
(19, 'Dizüstü Bilgisayar', 7500.00, 'dizustu-bilgisayar', 'Yüksek performanslı dizüstü bilgisayar.', 'featured', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Diz%C3%BCst%C3%BC+Bilgisayar', 'https://place-hold.it/600x400?text=Hover+Resmi+Diz%C3%BCst%C3%BC+Bilgisayar', 20, NULL, '<p>Güçlü işlemcisi ve uzun pil ömrü ile iş ve eğlence için ideal bir dizüstü bilgisayar.</p>', 1, '2025-01-27 20:16:53', '2025-01-27 20:23:17'),
(20, 'Kablosuz Kulaklık', 1500.00, 'kablosuz-kulaklik', 'Konforlu ve kaliteli kablosuz kulaklık.', 'none', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Kablosuz+Kulakl%C4%B1k', 'https://place-hold.it/600x400?text=Hover+Resmi+Kablosuz+Kulakl%C4%B1k', 50, NULL, '<p>Yüksek kaliteli ses deneyimi sunan, ergonomik tasarıma sahip kablosuz kulaklık.</p>', 1, '2025-01-27 20:16:53', '2025-01-27 20:16:53'),
(21, 'Akıllı Saat', 2300.00, 'akilli-saat', 'Gelişmiş özelliklere sahip akıllı saat.', 'none', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Ak%C4%B1ll%C4%B1+Saat', 'https://place-hold.it/600x400?text=Hover+Resmi+Ak%C4%B1ll%C4%B1+Saat', 40, NULL, '<p>Adımlarınızı izleyin, mesajlarınızı kontrol edin ve daha fazlasını yapın.</p>', 1, '2025-01-27 20:16:53', '2025-01-27 20:16:53'),
(22, 'Tablet', 3400.00, 'tablet', 'Yüksek çözünürlüklü ekranlı tablet.', 'featured', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Tablet', 'https://place-hold.it/600x400?text=Hover+Resmi+Tablet', 25, NULL, '<p>Taşınabilir tasarımı ve güçlü performansı ile çok amaçlı kullanım sunar.</p>', 1, '2025-01-27 20:16:53', '2025-01-27 20:23:13'),
(23, 'Kadın Tişört', 150.00, 'kadin-tisort', 'Rahat kumaştan üretilmiş kadın tişört.', 'none', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Kad%C4%B1n+T%C4%B0%C5%9F%C3%B6rt', 'https://place-hold.it/600x400?text=Hover+Resmi+Kad%C4%B1n+T%C4%B0%C5%9F%C3%B6rt', 60, NULL, '<p>Yumuşak dokusu ve modern kesimi ile günlük şıklığı tamamlar.</p>', 2, '2025-01-27 20:16:53', '2025-01-27 20:16:53'),
(24, 'Kaban', 750.00, 'kaban', 'Soğuk hava koşullarına uygun kaban.', 'none', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Kaban', 'https://place-hold.it/600x400?text=Hover+Resmi+Kaban', 15, NULL, '<p>Sıcak tutan, rüzgar geçirmez ve şık tasarımı ile öne çıkar.</p>', 2, '2025-01-27 20:16:53', '2025-01-27 20:16:53'),
(25, 'Spor Ayakkabı Kadın', 300.00, 'spor-ayakkabi-kadin', 'Rahat tabanlı kadın spor ayakkabı.', 'featured', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Kad%C4%B1n+Spor+Ayakkab%C4%B1', 'https://place-hold.it/600x400?text=Hover+Resmi+Kad%C4%B1n+Spor+Ayakkab%C4%B1', 40, NULL, '<p>Şıklığı ve rahatlığı bir araya getiren, günlük kullanıma uygun kadın spor ayakkabı.</p>', 2, '2025-01-27 20:16:53', '2025-01-27 20:23:08'),
(26, 'Kot Ceket', 500.00, 'kot-ceket', 'Hafif ve şık tasarıma sahip kot ceket.', 'none', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Kot+Ceket', 'https://place-hold.it/600x400?text=Hover+Resmi+Kot+Ceket', 20, NULL, '<p>Her mevsim kullanıma uygun, zamansız bir moda klasiği.</p>', 2, '2025-01-27 20:16:53', '2025-01-27 20:16:53'),
(27, 'Koltuk Takımı', 12000.00, 'koltuk-takimi', 'Konforlu koltuk takımı.', 'none', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Koltuk+Tak%C4%B1m%C4%B1', 'https://place-hold.it/600x400?text=Hover+Resmi+Koltuk+Tak%C4%B1m%C4%B1', 5, NULL, '<p>Oturma odanız için şıklık ve konfor sunan dayanıklı koltuk takımı.</p>', 3, '2025-01-27 20:16:53', '2025-01-27 20:16:53'),
(28, 'Yemek Takımı', 2200.00, 'yemek-takimi', '12 kişilik porselen yemek takımı.', 'featured', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Yemek+Tak%C4%B1m%C4%B1', 'https://place-hold.it/600x400?text=Hover+Resmi+Yemek+Tak%C4%B1m%C4%B1', 15, NULL, '<p>Özel davetler ve günlük kullanım için ideal şık bir yemek takımı.</p>', 3, '2025-01-27 20:16:53', '2025-01-27 20:23:04'),
(29, 'Ayna', 450.00, 'ayna', 'Dekoratif tasarımlı duvar aynası.', 'none', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Ayna', 'https://place-hold.it/600x400?text=Hover+Resmi+Ayna', 30, NULL, '<p>Her yaşam alanına uyum sağlayan, modern ve zarif bir duvar aynası.</p>', 3, '2025-01-27 20:16:53', '2025-01-27 20:16:53'),
(30, 'Abajur', 350.00, 'abajur', 'Şık tasarımlı abajur.', 'none', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Abajur', 'https://place-hold.it/600x400?text=Hover+Resmi+Abajur', 50, NULL, '<p>Sıcak ışığı ve dekoratif yapısıyla yaşam alanınıza estetik bir hava katar.</p>', 3, '2025-01-27 20:16:53', '2025-01-27 20:16:53'),
(31, 'Kamp Çadırı', 1200.00, 'kamp-cadiri', '4 kişilik dayanıklı kamp çadırı.', 'none', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Kamp+%C3%87ad%C4%B1r%C4%B1', 'https://place-hold.it/600x400?text=Hover+Resmi+Kamp+%C3%87ad%C4%B1r%C4%B1', 10, NULL, '<p>Her türlü hava koşuluna uygun, kolay kurulum sağlayan 4 kişilik kamp çadırı.</p>', 4, '2025-01-27 20:16:53', '2025-01-27 20:16:53'),
(32, 'Sırt Çantası', 700.00, 'sirt-cantasi', 'Dayanıklı ve hafif sırt çantası.', 'none', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+S%C4%B1rt+%C3%87antas%C4%B1', 'https://place-hold.it/600x400?text=Hover+Resmi+S%C4%B1rt+%C3%87antas%C4%B1', 30, NULL, '<p>Geniş iç hacmi ve ergonomik tasarımı ile seyahat ve outdoor aktiviteler için ideal.</p>', 4, '2025-01-27 20:16:53', '2025-01-27 20:16:53'),
(33, 'Uyku Tulumu', 600.00, 'uyku-tulumu', 'Hafif ve sıcak tutan uyku tulumu.', 'none', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Uyku+Tulumu', 'https://place-hold.it/600x400?text=Hover+Resmi+Uyku+Tulumu', 20, NULL, '<p>Soğuk gecelerde rahat bir uyku için tasarlanmış, kolay taşınabilir uyku tulumu.</p>', 4, '2025-01-27 20:16:53', '2025-01-27 20:16:53'),
(34, 'Koşu Bandı', 9500.00, 'kosu-bandi', 'Ev kullanımı için uygun koşu bandı.', 'featured', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Ko%C5%9Fu+Band%C4%B1', 'https://place-hold.it/600x400?text=Hover+Resmi+Ko%C5%9Fu+Band%C4%B1', 5, NULL, '<p>Sağlam yapısı ve çok fonksiyonlu özellikleriyle evde spor yapmak için ideal.</p>', 4, '2025-01-27 20:16:53', '2025-01-27 20:23:41'),
(35, 'Bluetooth Hoparlör', 650.00, 'bluetooth-hoparlor', 'Yüksek ses kalitesi sunan Bluetooth hoparlör.', 'none', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Bluetooth+Hoparl%C3%B6r', 'https://place-hold.it/600x400?text=Hover+Resmi+Bluetooth+Hoparl%C3%B6r', 40, NULL, '<p>Kompakt ve taşınabilir tasarımı ile her yerde kaliteli müzik deneyimi sunar.</p>', 1, '2025-01-27 20:18:02', '2025-01-27 20:18:02'),
(36, 'Monitör', 3500.00, 'monitor', '4K çözünürlüklü bilgisayar monitörü.', 'featured', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Monit%C3%B6r', 'https://place-hold.it/600x400?text=Hover+Resmi+Monit%C3%B6r', 20, NULL, '<p>Ultra geniş ekranıyla profesyonel ve eğlence amaçlı kullanımlar için uygundur.</p>', 1, '2025-01-27 20:18:02', '2025-01-27 20:23:37'),
(37, 'Harici SSD', 2000.00, 'harici-ssd', 'Yüksek hızlı taşınabilir SSD.', 'none', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Harici+SSD', 'https://place-hold.it/600x400?text=Hover+Resmi+Harici+SSD', 50, NULL, '<p>Dayanıklı yapısı ve yüksek veri aktarım hızı ile mükemmel bir depolama çözümü.</p>', 1, '2025-01-27 20:18:02', '2025-01-27 20:18:02'),
(38, 'Gaming Klavye', 900.00, 'gaming-klavye', 'RGB aydınlatmalı mekanik klavye.', 'featured', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Gaming+Klavye', 'https://place-hold.it/600x400?text=Hover+Resmi+Gaming+Klavye', 35, NULL, '<p>Oyun performansınızı artırmak için özel olarak tasarlanmış dayanıklı klavye.</p>', 1, '2025-01-27 20:18:02', '2025-01-27 20:23:45'),
(39, 'Kadın Çanta', 450.00, 'kadin-canta', 'Şık ve modern kadın çanta.', 'none', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Kad%C4%B1n+%C3%87anta', 'https://place-hold.it/600x400?text=Hover+Resmi+Kad%C4%B1n+%C3%87anta', 60, NULL, '<p>Her ortamda şıklığınızı tamamlayacak, kaliteli malzemeden üretilmiş çanta.</p>', 2, '2025-01-27 20:18:02', '2025-01-27 20:18:02'),
(40, 'Erkek Ceket', 650.00, 'erkek-ceket', 'Soğuk havalar için ideal erkek ceket.', 'none', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Erkek+Ceket', 'https://place-hold.it/600x400?text=Hover+Resmi+Erkek+Ceket', 25, NULL, '<p>Şıklığı ve fonksiyonelliği bir araya getiren erkek ceket.</p>', 2, '2025-01-27 20:18:02', '2025-01-27 20:18:02'),
(41, 'Kadın Elbise', 850.00, 'kadin-elbise', 'Modern tasarıma sahip kadın elbise.', 'none', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Kad%C4%B1n+Elbise', 'https://place-hold.it/600x400?text=Hover+Resmi+Kad%C4%B1n+Elbise', 40, NULL, '<p>Özel davetlerde ve günlük yaşamda rahatlıkla kullanabileceğiniz şık bir elbise.</p>', 2, '2025-01-27 20:18:02', '2025-01-27 20:18:02'),
(42, 'Spor Tişört', 180.00, 'spor-tisort', 'Rahat ve nefes alabilir kumaşlı spor tişört.', 'none', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Spor+T%C4%B0%C5%9F%C3%B6rt', 'https://place-hold.it/600x400?text=Hover+Resmi+Spor+T%C4%B0%C5%9F%C3%B6rt', 70, NULL, '<p>Egzersiz sırasında maksimum konfor sunan hafif spor tişört.</p>', 2, '2025-01-27 20:18:02', '2025-01-27 20:18:02'),
(43, 'Buzdolabı', 12500.00, 'buzdolabi', 'Enerji tasarruflu buzdolabı.', 'none', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Buzdolab%C4%B1', 'https://place-hold.it/600x400?text=Hover+Resmi+Buzdolab%C4%B1', 8, NULL, '<p>Geniş iç hacmi ve gelişmiş soğutma teknolojisi ile mutfağınıza mükemmel uyum sağlar.</p>', 3, '2025-01-27 20:18:02', '2025-01-27 20:18:02'),
(44, 'Mikrodalga Fırın', 3000.00, 'mikrodalga-firin', 'Hızlı ve etkili ısıtma sağlayan mikrodalga.', 'none', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Mikrodalga+F%C4%B1r%C4%B1n', 'https://place-hold.it/600x400?text=Hover+Resmi+Mikrodalga+F%C4%B1r%C4%B1n', 18, NULL, '<p>Günlük yemek hazırlığını kolaylaştıran modern mikrodalga fırın.</p>', 3, '2025-01-27 20:18:02', '2025-01-27 20:18:02'),
(45, 'Halı', 900.00, 'hali', 'Dayanıklı ve dekoratif halı.', 'none', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Halı', 'https://place-hold.it/600x400?text=Hover+Resmi+Halı', 25, NULL, '<p>Her odaya uyum sağlayan, yumuşak ve kaliteli malzemeden üretilmiş halı.</p>', 3, '2025-01-27 20:18:02', '2025-01-27 20:18:02'),
(46, 'Kitaplık', 1750.00, 'kitaplik', 'Modern tasarımlı kitaplık.', 'none', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Kitapl%C4%B1k', 'https://place-hold.it/600x400?text=Hover+Resmi+Kitapl%C4%B1k', 15, NULL, '<p>Geniş depolama alanı sunan, zarif ve modern bir kitaplık.</p>', 3, '2025-01-27 20:18:02', '2025-01-27 20:18:02'),
(47, 'Yoga Matı', 250.00, 'yoga-mati', 'Kaymaz yüzeyli yoga matı.', 'none', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Yoga+Mat%C4%B1', 'https://place-hold.it/600x400?text=Hover+Resmi+Yoga+Mat%C4%B1', 60, NULL, '<p>Esneme ve yoga egzersizlerinde rahatlık sağlayan, dayanıklı malzemeden üretilmiş mat.</p>', 4, '2025-01-27 20:18:02', '2025-01-27 20:18:02'),
(48, 'Kamp Lambası', 400.00, 'kamp-lambasi', 'Uzun ömürlü kamp lambası.', 'none', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Kamp+Lambas%C4%B1', 'https://place-hold.it/600x400?text=Hover+Resmi+Kamp+Lambas%C4%B1', 30, NULL, '<p>Karanlıkta güvenilir ışık sağlayan, taşınabilir ve dayanıklı kamp lambası.</p>', 4, '2025-01-27 20:18:02', '2025-01-27 20:18:02'),
(49, 'Bisiklet Kaskı', 750.00, 'bisiklet-kaski', 'Dayanıklı ve hafif bisiklet kaskı.', 'none', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Bisiklet+Kask%C4%B1', 'https://place-hold.it/600x400?text=Hover+Resmi+Bisiklet+Kask%C4%B1', 25, NULL, '<p>Güvenlik ve konfor sunan, aerodinamik tasarımlı bisiklet kaskı.</p>', 4, '2025-01-27 20:18:02', '2025-01-27 20:18:02'),
(50, 'Trekking Ayakkabısı', 1200.00, 'trekking-ayakkabisi', 'Su geçirmez trekking ayakkabısı.', 'none', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Trekking+Ayakkab%C4%B1s%C4%B1', 'https://place-hold.it/600x400?text=Hover+Resmi+Trekking+Ayakkab%C4%B1s%C4%B1', 12, NULL, '<p>Zorlu araziler için tasarlanmış, dayanıklı ve su geçirmez trekking ayakkabısı.</p>', 4, '2025-01-27 20:18:02', '2025-01-27 20:18:02'),
(51, 'Ahşap Masa', 1500.00, 'ahsap-masa', 'Şık ve dayanıklı ahşap masa.', 'none', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Ah%C5%9Fap+Masa', 'https://place-hold.it/600x400?text=Hover+Resmi+Ah%C5%9Fap+Masa', 30, NULL, '<p>Kaliteli ahşaptan üretilmiş, hem ev hem de ofis kullanımı için uygun bir masa.</p>', 8, '2025-01-27 20:22:12', '2025-01-27 20:22:12'),
(52, 'Rahat Koltuk', 2500.00, 'rahat-koltuk', 'Konforlu ve şık koltuk.', 'none', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Rahat+Koltuk', 'https://place-hold.it/600x400?text=Hover+Resmi+Rahat+Koltuk', 20, NULL, '<p>Geniş oturma alanı ve ergonomik tasarımı ile evinize şıklık katar.</p>', 8, '2025-01-27 20:22:12', '2025-01-27 20:22:12'),
(53, 'Yatak Örtüsü', 350.00, 'yatak-ortusu', 'Modern tasarımlı yatak örtüsü.', 'none', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Yatak+%C3%96rt%C3%BCs%C3%BC', 'https://place-hold.it/600x400?text=Hover+Resmi+Yatak+%C3%96rt%C3%BCs%C3%BC', 50, NULL, '<p>Şık ve yumuşak dokuya sahip, yatak odanızı tamamlayan örtü.</p>', 8, '2025-01-27 20:22:12', '2025-01-27 20:22:12'),
(54, 'Tavşanlı Halı', 1200.00, 'tavsanli-hali', 'Sevimli tavşan desenli halı.', 'none', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Tav%C5%9Fanl%C4%B1+Hal%C4%B1', 'https://place-hold.it/600x400?text=Hover+Resmi+Tav%C5%9Fanl%C4%B1+Hal%C4%B1', 40, NULL, '<p>Çocuk odaları için ideal, yumuşak dokulu ve şık halı.</p>', 8, '2025-01-27 20:22:12', '2025-01-27 20:22:12'),
(55, 'Ahşap Raf', 700.00, 'ahsap-raf', 'Dekoratif ve sağlam ahşap raf.', 'none', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Ah%C5%9Fap+Raf', 'https://place-hold.it/600x400?text=Hover+Resmi+Ah%C5%9Fap+Raf', 60, NULL, '<p>Evinizde şıklığı ve düzeni bir arada sunan ahşap raf sistemi.</p>', 8, '2025-01-27 20:22:12', '2025-01-27 20:22:12'),
(56, 'Şık Perdeler', 900.00, 'sik-perdeler', 'Modern tasarımlı şık perdeler.', 'none', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+%C5%9E%C4%B1k+Perdeler', 'https://place-hold.it/600x400?text=Hover+Resmi+%C5%9E%C4%B1k+Perdeler', 50, NULL, '<p>Evinizin havasını değiştirecek, güneş ışığını zarifçe filtreleyen perdeler.</p>', 8, '2025-01-27 20:22:12', '2025-01-27 20:22:12'),
(57, 'Mutfak Dolabı', 3200.00, 'mutfak-dolabi', 'Geniş ve kullanışlı mutfak dolabı.', 'none', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Mutfak+Dolab%C4%B1', 'https://place-hold.it/600x400?text=Hover+Resmi+Mutfak+Dolab%C4%B1', 10, NULL, '<p>Depolama alanınızı genişleten modern tasarımlı mutfak dolabı.</p>', 8, '2025-01-27 20:22:12', '2025-01-27 20:22:12'),
(58, 'Dekoratif Vazo', 450.00, 'dekoratif-vazo', 'Şık ve zarif dekoratif vazo.', 'none', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Dekoratif+Vazo', 'https://place-hold.it/600x400?text=Hover+Resmi+Dekoratif+Vazo', 70, NULL, '<p>Çiçeklerinizle uyum sağlayacak modern tasarımlı vazo.</p>', 8, '2025-01-27 20:22:12', '2025-01-27 20:22:12'),
(59, 'Ahşap Tabure', 300.00, 'ahsap-tabure', 'Kullanışlı ve sağlam ahşap tabure.', 'none', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Ah%C5%9Fap+Tabure', 'https://place-hold.it/600x400?text=Hover+Resmi+Ah%C5%9Fap+Tabure', 40, NULL, '<p>Mutfak ve balkonlarınızda rahatlıkla kullanabileceğiniz ahşap tabure.</p>', 8, '2025-01-27 20:22:12', '2025-01-27 20:22:12'),
(60, 'Dekoratif Ayna', 1200.00, 'dekoratif-ayna', 'Modern ve şık dekoratif ayna.', 'none', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Dekoratif+Ayna', 'https://place-hold.it/600x400?text=Hover+Resmi+Dekoratif+Ayna', 25, NULL, '<p>Odanızın şıklığını artıracak çerçeveli dekoratif ayna.</p>', 8, '2025-01-27 20:22:12', '2025-01-27 20:22:12'),
(61, 'Konsol Masası', 2000.00, 'konsol-masasi', 'Şık tasarımlı konsol masası.', 'none', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Konsol+Masas%C4%B1', 'https://place-hold.it/600x400?text=Hover+Resmi+Konsol+Masas%C4%B1', 15, NULL, '<p>Geniş depolama alanı sunan, modern bir tasarım ürünü.</p>', 8, '2025-01-27 20:22:12', '2025-01-27 20:22:12'),
(62, 'Tv Ünitesi', 2800.00, 'tv-unitesi', 'Modern tasarımlı TV ünitesi.', 'none', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Tv+%C3%9Cnitesi', 'https://place-hold.it/600x400?text=Hover+Resmi+Tv+%C3%9Cnitesi', 20, NULL, '<p>Şıklığı ve işlevselliği bir arada sunan TV ünitesi.</p>', 8, '2025-01-27 20:22:12', '2025-01-27 20:22:12'),
(63, 'Lambader', 800.00, 'lambader', 'Şık ve modern lambader.', 'none', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Lambader', 'https://place-hold.it/600x400?text=Hover+Resmi+Lambader', 35, NULL, '<p>Odanıza sıcak bir atmosfer katacak modern lambader.</p>', 8, '2025-01-27 20:22:12', '2025-01-27 20:22:12'),
(64, 'Yemek Masası', 4000.00, 'yemek-masasi', 'Geniş yemek masası.', 'none', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Yemek+Masas%C4%B1', 'https://place-hold.it/600x400?text=Hover+Resmi+Yemek+Masas%C4%B1', 8, NULL, '<p>Ailenizle keyifli yemekler yiyebileceğiniz, geniş bir masa.</p>', 8, '2025-01-27 20:22:12', '2025-01-27 20:22:12'),
(65, 'Banyo Dolabı', 1500.00, 'banyo-dolabi', 'Modern banyo dolabı.', 'none', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Banyo+Dolab%C4%B1', 'https://place-hold.it/600x400?text=Hover+Resmi+Banyo+Dolab%C4%B1', 30, NULL, '<p>Şıklığı ve düzeni bir arada sunan, dayanıklı banyo dolabı.</p>', 8, '2025-01-27 20:22:12', '2025-01-27 20:22:12'),
(66, 'Kalem Seti', 50.00, 'kalem-seti', 'Renkli kalemlerden oluşan set.', 'none', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Kalem+Seti', 'https://place-hold.it/600x400?text=Hover+Resmi+Kalem+Seti', 100, NULL, '<p>Okul ve ofis kullanımına uygun, kaliteli malzemeden üretilmiş kalem seti.</p>', 5, '2025-01-27 20:24:03', '2025-01-27 20:24:03'),
(67, 'Defter', 30.00, 'defter', 'Çizgili ve şık tasarımlı defter.', 'none', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Defter', 'https://place-hold.it/600x400?text=Hover+Resmi+Defter', 200, NULL, '<p>Dayanıklı kapak tasarımı ve kaliteli kağıt yapısıyla günlük kullanım için ideal.</p>', 5, '2025-01-27 20:24:03', '2025-01-27 20:24:03'),
(68, 'Renkli Fosforlu Kalemler', 80.00, 'renkli-fosforlu-kalemler', 'Parlak ve canlı renklere sahip fosforlu kalemler.', 'none', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Renkli+Fosforlu+Kalemler', 'https://place-hold.it/600x400?text=Hover+Resmi+Renkli+Fosforlu+Kalemler', 150, NULL, '<p>Notlarınızı ve belgelerinizi düzenlemek için vazgeçilmez fosforlu kalem seti.</p>', 5, '2025-01-27 20:24:03', '2025-01-27 20:24:03'),
(69, 'Ajanda', 100.00, 'ajanda', '2025 yılına özel ajanda.', 'none', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Ajanda', 'https://place-hold.it/600x400?text=Hover+Resmi+Ajanda', 80, NULL, '<p>Planlarınızı ve notlarınızı düzenlemek için şık ve kullanışlı bir ajanda.</p>', 5, '2025-01-27 20:24:03', '2025-01-27 20:24:03'),
(70, 'Çizim Blokları', 120.00, 'cizim-bloklari', 'Sanatçılar için özel tasarlanmış çizim blokları.', 'none', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+%C3%87izim+Bloklar%C4%B1', 'https://place-hold.it/600x400?text=Hover+Resmi+%C3%87izim+Bloklar%C4%B1', 50, NULL, '<p>Yüksek kaliteli kağıt dokusuyla çizim ve eskiz çalışmalarına uygun bloklar.</p>', 5, '2025-01-27 20:24:03', '2025-01-27 20:24:03'),
(71, 'Kurşun Kalem Seti', 40.00, 'kursun-kalem-seti', 'HB özellikli kaliteli kurşun kalem seti.', 'none', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Kur%C5%9Fun+Kalem+Seti', 'https://place-hold.it/600x400?text=Hover+Resmi+Kur%C5%9Fun+Kalem+Seti', 300, NULL, '<p>Çocuklar ve profesyoneller için uygun, dayanıklı ve ergonomik tasarıma sahip kurşun kalem seti.</p>', 5, '2025-01-27 20:24:03', '2025-01-27 20:24:03'),
(72, 'Kitap Ayracı', 15.00, 'kitap-ayraci', 'Eğlenceli ve şık tasarımlı kitap ayraçları.', 'none', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Kitap+Ayrac%C4%B1', 'https://place-hold.it/600x400?text=Hover+Resmi+Kitap+Ayrac%C4%B1', 500, NULL, '<p>Kitap okuma keyfinizi tamamlayacak farklı tasarımlara sahip kitap ayraçları.</p>', 5, '2025-01-27 20:24:03', '2025-01-27 20:24:03'),
(73, 'Post-it Notlar', 35.00, 'post-it-notlar', 'Yapışkanlı not kağıtları seti.', 'none', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Post-it+Notlar', 'https://place-hold.it/600x400?text=Hover+Resmi+Post-it+Notlar', 120, NULL, '<p>Ofis ve ev kullanımı için ideal, renkli ve pratik yapışkanlı not kağıtları.</p>', 5, '2025-01-27 20:24:03', '2025-01-27 20:24:03'),
(74, 'Boyama Kitabı', 70.00, 'boyama-kitabi', 'Çocuklar için eğlenceli boyama kitabı.', 'none', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Boyama+Kitab%C4%B1', 'https://place-hold.it/600x400?text=Hover+Resmi+Boyama+Kitab%C4%B1', 200, NULL, '<p>Çocukların hayal gücünü geliştiren, rengarenk tasarımlı boyama kitabı.</p>', 5, '2025-01-27 20:24:03', '2025-01-27 20:24:03'),
(75, 'Plastik Cetvel', 25.00, 'plastik-cetvel', 'Esnek ve dayanıklı plastik cetvel.', 'none', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Plastik+Cetvel', 'https://place-hold.it/600x400?text=Hover+Resmi+Plastik+Cetvel', 300, NULL, '<p>Ölçümlerinizde hassas sonuçlar alabileceğiniz, dayanıklı bir cetvel.</p>', 5, '2025-01-27 20:24:03', '2025-01-27 20:24:03'),
(76, 'Spiral Defter', 45.00, 'spiral-defter', 'Modern tasarımlı spiral defter.', 'none', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Spiral+Defter', 'https://place-hold.it/600x400?text=Hover+Resmi+Spiral+Defter', 150, NULL, '<p>Spiral yapısı ile kullanımı kolay, dayanıklı kapaklı bir defter.</p>', 5, '2025-01-27 20:24:03', '2025-01-27 20:24:03'),
(77, 'Sanatsal Eskiz Kalemi', 55.00, 'sanatsal-eskiz-kalemi', 'Sanatçılar için özel tasarlanmış eskiz kalemi.', 'none', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Sanatsal+Eskiz+Kalemi', 'https://place-hold.it/600x400?text=Hover+Resmi+Sanatsal+Eskiz+Kalemi', 90, NULL, '<p>Profesyonel çizim ve eskizleriniz için ideal tasarıma sahip eskiz kalemi.</p>', 5, '2025-01-27 20:24:03', '2025-01-27 20:24:03'),
(78, 'Kalemtraş', 20.00, 'kalemtras', 'Dayanıklı metal uçlu kalemtraş.', 'none', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Kalemtra%C5%9F', 'https://place-hold.it/600x400?text=Hover+Resmi+Kalemtra%C5%9F', 400, NULL, '<p>Dayanıklı yapısı ve keskin bıçaklarıyla kalemlerinizi mükemmel bir şekilde açar.</p>', 5, '2025-01-27 20:24:03', '2025-01-27 20:24:03'),
(79, 'Sanat Seti', 200.00, 'sanat-seti', 'Çocuklar için eğlenceli sanat seti.', 'none', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Sanat+Seti', 'https://place-hold.it/600x400?text=Hover+Resmi+Sanat+Seti', 50, NULL, '<p>Resim ve boyama yeteneklerini geliştirmek isteyen çocuklar için yaratıcı bir set.</p>', 5, '2025-01-27 20:24:03', '2025-01-27 20:24:03'),
(80, 'Zımba', 35.00, 'zimba', 'Pratik kullanım için ergonomik tasarımlı zımba.', 'none', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Z%C4%B1mba', 'https://place-hold.it/600x400?text=Hover+Resmi+Z%C4%B1mba', 180, NULL, '<p>Ofisler ve okullar için dayanıklı ve uzun ömürlü zımba.</p>', 5, '2025-01-27 20:24:03', '2025-01-27 20:24:03'),
(81, 'Renkli Kalem Kutusu', 75.00, 'renkli-kalem-kutusu', 'Taşınabilir renkli kalem kutusu.', 'none', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Renkli+Kalem+Kutusu', 'https://place-hold.it/600x400?text=Hover+Resmi+Renkli+Kalem+Kutusu', 120, NULL, '<p>Dayanıklı ve şık tasarımlı renkli kalem kutusu, okul ve ofis için ideal.</p>', 5, '2025-01-27 20:28:56', '2025-01-27 20:28:56'),
(82, 'Kalemlik', 45.00, 'kalemlik', 'Masaüstü düzenleyici kalemlik.', 'none', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Kalemlik', 'https://place-hold.it/600x400?text=Hover+Resmi+Kalemlik', 300, NULL, '<p>Masanızda düzen sağlayacak, kaliteli malzemeden üretilmiş kalemlik.</p>', 5, '2025-01-27 20:28:56', '2025-01-27 20:28:56'),
(83, 'Silgi Seti', 20.00, 'silgi-seti', 'Farklı boyutlarda kaliteli silgiler.', 'none', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Silgi+Seti', 'https://place-hold.it/600x400?text=Hover+Resmi+Silgi+Seti', 250, NULL, '<p>Çizim ve yazım hatalarını kolayca temizleyebileceğiniz kaliteli silgi seti.</p>', 5, '2025-01-27 20:28:56', '2025-01-27 20:28:56'),
(84, 'Açık Renk Fosforlu Kalemler', 90.00, 'acik-renk-fosforlu-kalemler', 'Pastel tonlarda fosforlu kalem seti.', 'none', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+A%C3%A7%C4%B1k+Renk+Fosforlu+Kalemler', 'https://place-hold.it/600x400?text=Hover+Resmi+A%C3%A7%C4%B1k+Renk+Fosforlu+Kalemler', 140, NULL, '<p>Daha yumuşak tonlar isteyenler için pastel renklerde fosforlu kalemler.</p>', 5, '2025-01-27 20:28:56', '2025-01-27 20:28:56'),
(85, 'A4 Çizgisiz Kağıt', 60.00, 'a4-cizgisiz-kagit', 'Çizim ve tasarım için çizgisiz kağıt.', 'none', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+A4+%C3%87izgisiz+Ka%C4%9F%C4%B1t', 'https://place-hold.it/600x400?text=Hover+Resmi+A4+%C3%87izgisiz+Ka%C4%9F%C4%B1t', 180, NULL, '<p>Profesyonel çizim ve tasarımlar için ideal kalitede A4 kağıt.</p>', 5, '2025-01-27 20:28:56', '2025-01-27 20:28:56'),
(86, 'Kalem Ucu (0.5)', 15.00, 'kalem-ucu-05', 'Mekanik kalemler için 0.5 uç.', 'none', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Kalem+Ucu+%280.5%29', 'https://place-hold.it/600x400?text=Hover+Resmi+Kalem+Ucu+%280.5%29', 500, NULL, '<p>Yüksek dayanıklılığa sahip, uzun ömürlü mekanik kalem uçları.</p>', 5, '2025-01-27 20:28:56', '2025-01-27 20:28:56'),
(87, 'Matematik Seti', 120.00, 'matematik-seti', 'Açıölçer, cetvel ve pergel seti.', 'none', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Matematik+Seti', 'https://place-hold.it/600x400?text=Hover+Resmi+Matematik+Seti', 100, NULL, '<p>Geometri ve matematik derslerinde kullanılmak üzere tasarlanmış dayanıklı bir set.</p>', 5, '2025-01-27 20:28:56', '2025-01-27 20:28:56'),
(88, 'Spiral Çizim Defteri', 80.00, 'spiral-cizim-defteri', 'Sanatsal çalışmalar için spiral defter.', 'none', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Spiral+%C3%87izim+Defteri', 'https://place-hold.it/600x400?text=Hover+Resmi+Spiral+%C3%87izim+Defteri', 90, NULL, '<p>Yaratıcılığınızı konuşturabileceğiniz, yüksek kaliteli çizim kağıtlarına sahip spiral defter.</p>', 5, '2025-01-27 20:28:56', '2025-01-27 20:28:56'),
(89, 'Keçe Kalem Seti', 85.00, 'kece-kalem-seti', 'Keçeli kalemlerden oluşan 12\'li set.', 'none', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Ke%C3%A7e+Kalem+Seti', 'https://place-hold.it/600x400?text=Hover+Resmi+Ke%C3%A7e+Kalem+Seti', 150, NULL, '<p>Yazı ve çizimlerinizde canlı renkler sunan keçeli kalem seti.</p>', 5, '2025-01-27 20:28:56', '2025-01-27 20:28:56'),
(90, 'Maskeleme Bandı', 25.00, 'maskeleme-bandi', 'Çizim ve boyama için maskeleme bandı.', 'none', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Maskeleme+Band%C4%B1', 'https://place-hold.it/600x400?text=Hover+Resmi+Maskeleme+Band%C4%B1', 300, NULL, '<p>Sanatsal ve endüstriyel projelerde hassas çalışma imkanı sunan maskeleme bandı.</p>', 5, '2025-01-27 20:28:56', '2025-01-27 20:28:56'),
(91, 'Okul Çantası', 220.00, 'okul-cantasi', 'Ergonomik ve dayanıklı okul çantası.', 'none', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Okul+%C3%87antas%C4%B1', 'https://place-hold.it/600x400?text=Hover+Resmi+Okul+%C3%87antas%C4%B1', 80, NULL, '<p>Geniş iç hacme ve modern tasarıma sahip, konforlu okul çantası.</p>', 5, '2025-01-27 20:28:56', '2025-01-27 20:28:56'),
(92, 'Sanatçı Paleti', 65.00, 'sanatci-paleti', 'Farklı boyutlarda boya paleti.', 'none', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Sanat%C3%A7%C4%B1+Paleti', 'https://place-hold.it/600x400?text=Hover+Resmi+Sanat%C3%A7%C4%B1+Paleti', 90, NULL, '<p>Boyama sırasında rahatlık sağlayan dayanıklı ve hafif sanatçı paleti.</p>', 5, '2025-01-27 20:28:56', '2025-01-27 20:28:56'),
(93, 'Kitap Okuma Lambası', 110.00, 'kitap-okuma-lambasi', 'Taşınabilir kitap okuma lambası.', 'none', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Kitap+Okuma+Lambas%C4%B1', 'https://place-hold.it/600x400?text=Hover+Resmi+Kitap+Okuma+Lambas%C4%B1', 70, NULL, '<p>Gece kitap okumayı sevenler için taşınabilir, LED teknolojili okuma lambası.</p>', 5, '2025-01-27 20:28:56', '2025-01-27 20:28:56'),
(94, 'Eğitim Puzzle Kitabı', 50.00, 'egitim-puzzle-kitabi', 'Çocuklar için eğitici puzzle kitabı.', 'none', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+E%C4%9Fitim+Puzzle+Kitab%C4%B1', 'https://place-hold.it/600x400?text=Hover+Resmi+E%C4%9Fitim+Puzzle+Kitab%C4%B1', 250, NULL, '<p>Çocukların öğrenirken eğlenmesini sağlayan, eğitici ve eğlenceli puzzle kitabı.</p>', 5, '2025-01-27 20:28:56', '2025-01-27 20:28:56'),
(95, 'Yapışkanlı Etiket', 30.00, 'yapiskanli-etiket', 'Renkli yapışkanlı etiket seti.', 'none', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Yap%C4%B1%C5%9Fkanl%C4%B1+Etiket', 'https://place-hold.it/600x400?text=Hover+Resmi+Yap%C4%B1%C5%9Fkanl%C4%B1+Etiket', 400, NULL, '<p>Dosya ve evrak düzenlemesi için ideal, renkli yapışkanlı etiket seti.</p>', 5, '2025-01-27 20:28:56', '2025-01-27 20:28:56'),
(96, 'Mini Beyaz Tahta', 150.00, 'mini-beyaz-tahta', 'Taşınabilir mini beyaz tahta seti.', 'none', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Mini+Beyaz+Tahta', 'https://place-hold.it/600x400?text=Hover+Resmi+Mini+Beyaz+Tahta', 60, NULL, '<p>Notlarınızı kolayca yazıp silebileceğiniz, pratik mini beyaz tahta.</p>', 5, '2025-01-27 20:28:56', '2025-01-27 20:28:56'),
(97, 'Bluetooth Hoparlör', 450.00, 'bluetooth-hoparlor', 'Taşınabilir kablosuz hoparlör.', 'none', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Bluetooth+Hoparl%C3%B6r', 'https://place-hold.it/600x400?text=Hover+Resmi+Bluetooth+Hoparl%C3%B6r', 120, NULL, '<p>Yüksek ses kalitesiyle eğlencenizi her yere taşıyabileceğiniz kompakt hoparlör.</p>', 1, '2025-01-27 20:30:08', '2025-01-27 20:30:08'),
(98, 'Akıllı Saat', 950.00, 'akilli-saat', 'Çok işlevli akıllı saat.', 'none', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Ak%C4%B1ll%C4%B1+Saat', 'https://place-hold.it/600x400?text=Hover+Resmi+Ak%C4%B1ll%C4%B1+Saat', 80, NULL, '<p>Kalp atışı takibi, adım sayar ve mesaj bildirimleri özellikli şık akıllı saat.</p>', 1, '2025-01-27 20:30:08', '2025-01-27 20:30:08'),
(99, 'Kanvas Çanta', 120.00, 'kanvas-canta', 'Şık ve dayanıklı kanvas çanta.', 'none', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Kanvas+%C3%87anta', 'https://place-hold.it/600x400?text=Hover+Resmi+Kanvas+%C3%87anta', 100, NULL, '<p>Günlük kullanım için hafif, geniş iç hacimli kanvas çanta.</p>', 2, '2025-01-27 20:30:08', '2025-01-27 20:30:08'),
(100, 'Unisex Güneş Gözlüğü', 300.00, 'unisex-gunes-gozlugu', 'UV korumalı güneş gözlüğü.', 'none', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Unisex+G%C3%BCne%C5%9F+G%C3%B6zl%C3%BC%C4%9F%C3%BC', 'https://place-hold.it/600x400?text=Hover+Resmi+Unisex+G%C3%BCne%C5%9F+G%C3%B6zl%C3%BC%C4%9F%C3%BC', 150, NULL, '<p>Modern tasarımlı, gözlerinizi güneş ışınlarından koruyan kaliteli güneş gözlüğü.</p>', 2, '2025-01-27 20:30:08', '2025-01-27 20:30:08'),
(101, 'Seramik Kahve Fincanı', 75.00, 'seramik-kahve-fincani', 'Estetik tasarımlı seramik kahve fincanı.', 'none', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Seramik+Kahve+Fincan%C4%B1', 'https://place-hold.it/600x400?text=Hover+Resmi+Seramik+Kahve+Fincan%C4%B1', 200, NULL, '<p>El yapımı dokusuyla kahve keyfinize estetik katacak seramik fincan.</p>', 3, '2025-01-27 20:30:08', '2025-01-27 20:30:08'),
(102, 'Dekoratif Yastık', 120.00, 'dekoratif-yastik', 'Rahat ve şık dekoratif yastık.', 'none', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Dekoratif+Yast%C4%B1k', 'https://place-hold.it/600x400?text=Hover+Resmi+Dekoratif+Yast%C4%B1k', 90, NULL, '<p>Ev dekorasyonunuza renk katacak, yumuşak dokulu dekoratif yastık.</p>', 3, '2025-01-27 20:30:08', '2025-01-27 20:30:08'),
(103, 'Yoga Matı', 250.00, 'yoga-mati', 'Kaymaz yüzeyli yoga matı.', 'none', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Yoga+Mat%C4%B1', 'https://place-hold.it/600x400?text=Hover+Resmi+Yoga+Mat%C4%B1', 50, NULL, '<p>Hareketlerinizi kolaylaştıran ve konfor sağlayan kaymaz yüzeyli yoga matı.</p>', 4, '2025-01-27 20:30:08', '2025-01-27 20:30:08'),
(104, 'Outdoor Sırt Çantası', 420.00, 'outdoor-sirt-cantasi', 'Hafif ve dayanıklı outdoor sırt çantası.', 'none', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Outdoor+S%C4%B1rt+%C3%87antas%C4%B1', 'https://place-hold.it/600x400?text=Hover+Resmi+Outdoor+S%C4%B1rt+%C3%87antas%C4%B1', 70, NULL, '<p>Doğa yürüyüşlerinizde ve kamp aktivitelerinizde kullanabileceğiniz geniş sırt çantası.</p>', 4, '2025-01-27 20:30:08', '2025-01-27 20:30:08'),
(105, 'Günlük Planlayıcı', 90.00, 'gunluk-planlayici', 'Verimli planlama için günlük defter.', 'none', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+G%C3%BCnl%C3%BCk+Planlay%C4%B1c%C4%B1', 'https://place-hold.it/600x400?text=Hover+Resmi+G%C3%BCnl%C3%BCk+Planlay%C4%B1c%C4%B1', 200, NULL, '<p>Hedeflerinizi takip etmenizi sağlayacak, düzenli planlama yapabileceğiniz bir defter.</p>', 5, '2025-01-27 20:30:08', '2025-01-27 20:30:08'),
(106, 'Marker Kalem Seti', 60.00, 'marker-kalem-seti', 'Canlı renklerde marker seti.', 'none', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Marker+Kalem+Seti', 'https://place-hold.it/600x400?text=Hover+Resmi+Marker+Kalem+Seti', 250, NULL, '<p>Profesyonel işler ve günlük kullanım için uygun, kaliteli marker seti.</p>', 5, '2025-01-27 20:30:08', '2025-01-27 20:30:08'),
(107, 'Çift Katlı Saklama Kutusu', 200.00, 'cift-katli-saklama-kutusu', 'Şeffaf saklama kutusu.', 'none', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+%C3%87ift+Katl%C4%B1+Saklama+Kutusu', 'https://place-hold.it/600x400?text=Hover+Resmi+%C3%87ift+Katl%C4%B1+Saklama+Kutusu', 120, NULL, '<p>Evde düzen sağlamanızı kolaylaştıracak pratik ve dayanıklı saklama kutusu.</p>', 8, '2025-01-27 20:30:08', '2025-01-27 20:30:08'),
(108, 'Katlanabilir Çamaşır Sepeti', 150.00, 'katlanabilir-camasir-sepeti', 'Portatif çamaşır sepeti.', 'none', 'new', 'https://place-hold.it/600x400?text=%C3%9Cr%C3%BCn+Resmi+Katlanabilir+%C3%87ama%C5%9F%C4%B1r+Sepeti', 'https://place-hold.it/600x400?text=Hover+Resmi+Katlanabilir+%C3%87ama%C5%9F%C4%B1r+Sepeti', 60, NULL, '<p>Ev içinde yer kazandıran, kolay taşınabilir çamaşır sepeti.</p>', 8, '2025-01-27 20:30:08', '2025-01-27 20:30:08');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `product_gallery`
--

CREATE TABLE `product_gallery` (
  `id` int NOT NULL,
  `product_id` int NOT NULL,
  `image_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `settings`
--

CREATE TABLE `settings` (
  `id` int NOT NULL,
  `setting_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL,
  `setting_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `settings`
--

INSERT INTO `settings` (`id`, `setting_key`, `setting_value`, `created_at`, `updated_at`) VALUES
(1, 'site_title', 'Eticaretv5 Edukey Eğitim Sürümü', '2025-01-15 19:04:26', '2025-01-31 17:01:57'),
(2, 'site_keywords', 'php, mvc, emrah yüksel, udemy, mvc', '2025-01-15 19:04:26', '2025-01-18 13:48:38'),
(3, 'site_description', 'Bu Eticaretv5 yazılımı Emrah Yüksel tarafından Udemy eğitiminde yazılmıştır.', '2025-01-15 19:04:26', '2025-01-15 19:04:26'),
(4, 'contact_email', 'info@example.com1', '2025-01-15 19:04:26', '2025-01-18 16:16:04'),
(5, 'contact_phone', '+91234567890', '2025-01-15 19:04:26', '2025-01-18 13:49:57'),
(6, 'contact_address', '123 Sokak,Cadde İstanbul', '2025-01-15 19:04:26', '2025-01-15 19:04:26'),
(7, 'cargo', '{\n    \"delivery_text\": \"Standart Teslimat\",\n    \"carrier_logo\": \"https://place-hold.it/100x50?text=Kargo+Firma\"\n}', '2025-01-25 14:53:21', '2025-01-25 14:54:08'),
(8, 'campaign_01', '{\n    \"campaign_name\": \"Kampanya 01\",\n    \"description\": \"Satıcılı ürünlerde 100 TL ve üzerine %40 indirim\"\n}', '2025-01-25 14:58:34', '2025-01-25 15:06:50'),
(9, 'campaign_02', '{\n    \"campaign_name\": \"Kargo Bedavam\",\n    \"description\": \"3000 TL üzeri kargo bedava\"\n}', '2025-01-25 14:59:55', '2025-01-25 15:06:56');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sliders`
--

CREATE TABLE `sliders` (
  `id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_turkish_ci NOT NULL,
  `description` text COLLATE utf8mb4_turkish_ci,
  `image_url` varchar(255) COLLATE utf8mb4_turkish_ci NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `sort_order` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `description`, `image_url`, `link_url`, `status`, `sort_order`, `created_at`, `updated_at`) VALUES
(10, 'Slider 01', 'Slider 01', 'https://place-hold.it/800x400?text=Slider+1', 'https://www.emrahyuksel.com.tr', 1, 1, '2025-01-27 19:39:48', '2025-01-31 17:09:28'),
(11, 'Slider 02', 'Slider 02', 'https://place-hold.it/800x400?text=Slider+2', 'https://www.emrahyuksel.com.tr', 1, 2, '2025-01-27 19:44:29', '2025-01-27 20:04:30'),
(12, 'Slider 03', 'Slider 03', 'https://place-hold.it/800x400?text=Slider+3', 'https://www.emrahyuksel.com.tr', 1, 3, '2025-01-27 19:45:22', '2025-01-27 20:04:54'),
(13, 'Slider 04', 'Slider 04', 'https://place-hold.it/800x400?text=Slider+3', 'https://www.emrahyuksel.com.tr', 1, 4, '2025-01-27 19:45:39', '2025-01-27 20:05:00'),
(14, 'Slider 05', 'Slider 05', 'https://place-hold.it/800x400?text=Slider+4', 'https://www.emrahyuksel.com.tr', 1, 5, '2025-01-27 19:45:55', '2025-01-27 20:05:04'),
(15, 'Slider 06', 'Slider 06', 'https://place-hold.it/800x400?text=Slider+5', 'https://www.emrahyuksel.com.tr', 1, 6, '2025-01-27 19:46:14', '2025-01-27 20:05:11'),
(16, 'Slider 07', 'Slider 07', 'https://place-hold.it/800x400?text=Slider+6', 'https://www.emrahyuksel.com.tr', 1, 7, '2025-01-27 19:46:43', '2025-01-27 20:05:17');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL,
  `password_hash` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL,
  `phone_number` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `is_email_verified` tinyint(1) DEFAULT '0',
  `is_phone_verified` tinyint(1) DEFAULT '0',
  `status` enum('active','inactive','banned') CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci DEFAULT 'active',
  `role` enum('admin','customer') CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL DEFAULT 'customer',
  `profile_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password_hash`, `phone_number`, `is_email_verified`, `is_phone_verified`, `status`, `role`, `profile_image`, `created_at`, `updated_at`) VALUES
(12, 'Emrah Yüksel', 'course@emrahyuksel.com.tr', '$2y$10$/GH3yQffSvzbOErcOXyGbOrFta9NORprs7ZrltxuRGvsBV83EsVEa', '05321231212', 0, 0, 'active', 'admin', NULL, '2025-01-24 14:47:39', '2025-01-31 16:47:24');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user_addresses`
--

CREATE TABLE `user_addresses` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `full_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL,
  `city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL,
  `district` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL,
  `neighborhood` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `address_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL,
  `invoice_type` enum('individual','corporate') CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci DEFAULT 'individual',
  `tax_office` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `tax_number` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `company_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `user_addresses`
--

INSERT INTO `user_addresses` (`id`, `user_id`, `full_name`, `phone`, `city`, `district`, `neighborhood`, `address_title`, `address`, `invoice_type`, `tax_office`, `tax_number`, `company_name`, `is_default`, `created_at`, `updated_at`) VALUES
(49, 12, 'Britanney Rich', '+1 (764) 917-4841', 'Et consequat Quae q', 'Voluptas lorem alias', 'Nam dolorum tenetur ', NULL, 'Sit et quia labore e', 'corporate', 'asd', '246', 'asd', 0, '2025-01-31 16:05:25', '2025-01-31 16:05:25');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `BlogPosts`
--
ALTER TABLE `BlogPosts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Tablo için indeksler `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Tablo için indeksler `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Tablo için indeksler `deals`
--
ALTER TABLE `deals`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Tablo için indeksler `order_addresses`
--
ALTER TABLE `order_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Tablo için indeksler `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Tablo için indeksler `order_payments`
--
ALTER TABLE `order_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Tablo için indeksler `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Tablo için indeksler `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Tablo için indeksler `product_gallery`
--
ALTER TABLE `product_gallery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Tablo için indeksler `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `setting_key` (`setting_key`);

--
-- Tablo için indeksler `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Tablo için indeksler `user_addresses`
--
ALTER TABLE `user_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `about`
--
ALTER TABLE `about`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `BlogPosts`
--
ALTER TABLE `BlogPosts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Tablo için AUTO_INCREMENT değeri `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Tablo için AUTO_INCREMENT değeri `deals`
--
ALTER TABLE `deals`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Tablo için AUTO_INCREMENT değeri `order_addresses`
--
ALTER TABLE `order_addresses`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Tablo için AUTO_INCREMENT değeri `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `order_payments`
--
ALTER TABLE `order_payments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Tablo için AUTO_INCREMENT değeri `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Tablo için AUTO_INCREMENT değeri `products`
--
ALTER TABLE `products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- Tablo için AUTO_INCREMENT değeri `product_gallery`
--
ALTER TABLE `product_gallery`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Tablo için AUTO_INCREMENT değeri `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Tablo için AUTO_INCREMENT değeri `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Tablo için AUTO_INCREMENT değeri `user_addresses`
--
ALTER TABLE `user_addresses`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `order_addresses`
--
ALTER TABLE `order_addresses`
  ADD CONSTRAINT `order_addresses_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `order_payments`
--
ALTER TABLE `order_payments`
  ADD CONSTRAINT `order_payments_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `product_gallery`
--
ALTER TABLE `product_gallery`
  ADD CONSTRAINT `product_gallery_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `user_addresses`
--
ALTER TABLE `user_addresses`
  ADD CONSTRAINT `user_addresses_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
