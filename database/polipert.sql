-- phpMyAdmin SQL Dump
-- version 4.1.13
-- http://www.phpmyadmin.net
--
-- Hoszt: 127.0.0.1
-- Létrehozás ideje: 2015. Már 27. 11:37
-- Szerver verzió: 5.5.27
-- PHP verzió: 5.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Adatbázis: `polipert`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `kategoriak`
--

CREATE TABLE IF NOT EXISTS `kategoriak` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(60) COLLATE utf8mb4_hungarian_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci AUTO_INCREMENT=4 ;

--
-- A tábla adatainak kiíratása `kategoriak`
--

INSERT INTO `kategoriak` (`id`, `description`) VALUES
(1, 'Billentyűzet'),
(2, 'Fejhallgató'),
(3, 'Egér');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `kosar`
--

CREATE TABLE IF NOT EXISTS `kosar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vasarlas_id` int(11) NOT NULL,
  `termek_id` int(11) NOT NULL,
  `darab` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci AUTO_INCREMENT=4 ;

--
-- A tábla adatainak kiíratása `kosar`
--

INSERT INTO `kosar` (`id`, `vasarlas_id`, `termek_id`, `darab`) VALUES
(1, 2, 3, 1),
(2, 2, 4, 3),
(3, 3, 2, 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lead` varchar(200) NOT NULL,
  `title` varchar(60) NOT NULL,
  `text` text NOT NULL,
  `date` date NOT NULL,
  `tag` tinyint(4) NOT NULL,
  `published` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- A tábla adatainak kiíratása `news`
--

INSERT INTO `news` (`id`, `lead`, `title`, `text`, `date`, `tag`, `published`) VALUES
(1, 'Bye Alex - Az én rózsám', 'Próba hír 1', '<p>Az én rózsám egy olyan szép lány<br>\r\nHogy koporsója<br>\r\nArany széf tán<br>\r\nBenne alszik az én rózsám<br>\r\nArany szeplők pozsgás arcán<br></p>', '2014-11-11', 2, 1),
(2, '', 'Nyúvz 2', '<p>Daber, daber, dah! <br>\r\nIn einem Krieg wie diesen gibt es keine Zivilisten...<br>\r\n(Wie Stalin!)<br>\r\nDaber, daber, dah!<br>\r\nDass ein Drittes Reich nicht vorstellbar ist...\r\nJA, JA, JA!!!</p>\r\n', '2014-11-25', 3, 0);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` varchar(25) NOT NULL,
  `title` varchar(60) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `pages`
--

INSERT INTO `pages` (`id`, `title`, `text`) VALUES
('bemutatkozas', 'Bemutatkozás', ' <p>\r\n    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n  </p>\r\n  <p>\r\n    Curabitur pretium tincidunt lacus. Nulla gravida orci a odio. Nullam varius, turpis et commodo pharetra, est eros bibendum elit, nec luctus magna felis sollicitudin mauris. Integer in mauris eu nibh euismod gravida. Duis ac tellus et risus vulputate vehicula. Donec lobortis risus a elit. Etiam tempor. Ut ullamcorper, ligula eu tempor congue, eros est euismod turpis, id tincidunt sapien risus a quam. Maecenas fermentum consequat mi. Donec fermentum. Pellentesque malesuada nulla a mi. Duis sapien sem, aliquet nec, commodo eget, consequat quis, neque. Aliquam faucibus, elit ut dictum aliquet, felis nisl adipiscing sapien, sed malesuada diam lacus eget erat. Cras mollis scelerisque nunc. Nullam arcu. Aliquam consequat. Curabitur augue lorem, dapibus quis, laoreet et, pretium ac, nisi. Aenean magna nisl, mollis quis, molestie eu, feugiat in, orci. In hac habitasse platea dictumst.\r\n  </p>\r\n  <p>\r\n    Fusce convallis, mauris imperdiet gravida bibendum, nisl turpis suscipit mauris, sed placerat ipsum urna sed risus. In convallis tellus a mauris. Curabitur non elit ut libero tristique sodales. Mauris a lacus. Donec mattis semper leo. In hac habitasse platea dictumst. Vivamus facilisis diam at odio. Mauris dictum, nisi eget consequat elementum, lacus ligula molestie metus, non feugiat orci magna ac sem. Donec turpis. Donec vitae metus. Morbi tristique neque eu mauris. Quisque gravida ipsum non sapien. Proin turpis lacus, scelerisque vitae, elementum at, lobortis ac, quam. Aliquam dictum eleifend risus. In hac habitasse platea dictumst. Etiam sit amet diam. Suspendisse odio. Suspendisse nunc. In semper bibendum libero.\r\n  </p>\r\n  <p>\r\n    Proin nonummy, lacus eget pulvinar lacinia, pede felis dignissim leo, vitae tristique magna lacus sit amet eros. Nullam ornare. Praesent odio ligula, dapibus sed, tincidunt eget, dictum ac, nibh. Nam quis lacus. Nunc eleifend molestie velit. Morbi lobortis quam eu velit. Donec euismod vestibulum massa. Donec non lectus. Aliquam commodo lacus sit amet nulla. Cras dignissim elit et augue. Nullam non diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. In hac habitasse platea dictumst. Aenean vestibulum. Sed lobortis elit quis lectus. Nunc sed lacus at augue bibendum dapibus.\r\n  </p>'),
('kapcsolat', 'Kapcsolat', 'Telefon: 30/588-3766');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `rights`
--

CREATE TABLE IF NOT EXISTS `rights` (
  `id` tinyint(4) NOT NULL,
  `description` varchar(40) COLLATE utf8mb4_hungarian_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `rights`
--

INSERT INTO `rights` (`id`, `description`) VALUES
(1, 'Adminisztrátor'),
(2, 'Főszerkesztő'),
(3, 'Hírszerkesztő'),
(4, 'Vendég');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `tags`
--

CREATE TABLE IF NOT EXISTS `tags` (
  `id` tinyint(4) NOT NULL,
  `description` varchar(40) COLLATE utf8mb4_hungarian_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `tags`
--

INSERT INTO `tags` (`id`, `description`) VALUES
(1, 'Tudomány'),
(2, 'IT/Tech'),
(3, 'Film'),
(4, 'Játék');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `termekek`
--

CREATE TABLE IF NOT EXISTS `termekek` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adatok` text COLLATE utf8mb4_hungarian_ci NOT NULL,
  `comment` text COLLATE utf8mb4_hungarian_ci NOT NULL,
  `megnevezes` varchar(100) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `kategoria_id` int(11) NOT NULL,
  `ar` int(11) NOT NULL,
  `garancia` int(11) NOT NULL,
  `akcios_ar` int(11) NOT NULL,
  `leiras` text COLLATE utf8mb4_hungarian_ci NOT NULL,
  `keszlet` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `kategoria_id` (`kategoria_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci AUTO_INCREMENT=6 ;

--
-- A tábla adatainak kiíratása `termekek`
--

INSERT INTO `termekek` (`id`, `adatok`, `comment`, `megnevezes`, `kategoria_id`, `ar`, `garancia`, `akcios_ar`, `leiras`, `keszlet`) VALUES
(1, 'USB gamer billentyűzet<br>\r\nlow profile gombok<br>\r\n16.8 millió szinben háttérvilágítás<br>\r\n8 szintben állítható fényerősség<br>\r\nantighosting gamer billentyűk<br>22 macro gomb<br>\r\n4 macro szint<br>\r\ndedikált media gombok<br>\r\nSteelseries Engine támogatás<br>\r\ntexturált, glossy felület<br>\r\nfonott kábel<br>\r\n2 port USB hub<br>\r\n5 millió leütés', '', 'Steelseries Apex', 1, 30990, 12, 25990, 'A Steelseries Apex gamer billenyűzet számos extra szolgáltatással próbálja megszólítani a hcgamer réteget.', 5),
(2, 'Technikai jellemzők:<br>\r\nFrekvencia Átvitel: 10-28000Hz<br>\r\nImpedancia: 32 Ohm<br>Dinamika: 112 dB<br>\r\nKábel hossz: 1M+2M<br>\r\nJack: 3.5 mm<br><br>\r\nMikrofon:<br>\r\nFrekvencia Átvitel: 50-16000 Hz<br>\r\nÉrzékenység: -38 dB', '', 'Steelseries Siberia V2 WH fejhallgató, mikrofonnal', 2, 25990, 12, 20990, 'A legendás Steelseries Siberia headset tovább fejlesztett változata.Hatalmas változás történt a hangminőségben, a komfort érzetben, nem beszélve a mikrofonról, amely teljesen megújjult. A V2 minden egyes alkatrésze játékra van optimalizálva ezért elhagyhatatlan kiegészítője minden gamernek szerte a világon.\r\n', 5),
(3, 'Pro-Aim Laser Sensor R3 / 8200dpi<br>\r\n1000Hz polling rate<br>\r\n1ms response time<br>\r\n12000fps, 10.8megapixel<br>\r\n30G acceleration<br>\r\n3.8m/s (150ips)<br>\r\n16-bit data channel<br>\r\n1-5mm Lift off distance<br>\r\nTracking & Distance Control Unit<br>\r\n72MHz Turbo Core V2 32-bit Arm based MCU<br>\r\n576kB onboard memory<br>\r\nZero angle snapping/prediction<br>\r\n1.8m braided USB cable', '', 'Roccat Kone XTD egér', 3, 22990, 12, 18990, 'A Roccat Kone szériája nem szorul különösebben bemutatásra, a prémium kategóriás egér világszerte nagy tiszteletnek örvend. ', 5),
(4, 'magyar kiosztású mechanikus<br>\r\nbillentyűzet<br>\r\nUSB csatlakozás<br>\r\n133 gomb<br>\r\nCherry MX Black kapcsolók<br>\r\n97 programozható gomb <br>\r\n5 programozható macro gomb M1 - M5<br>\r\n1000Hz polling ráta<br>\r\n1.8 méter kábel <br>\r\n24 x 51 cm', '', 'Roccat Ryos MK MX Black HU', 1, 29990, 8, 24990, 'Az MK Black nagy testvéreihez hasonlóan hatalmas, kényelmes csuklótámasszal van ellátva ami a legnagyobb harcok közben is biztosan és kényelmesen tartja csuklónkat', 1),
(5, 'Mikrofon: némítójelző led-es, leszerelhető,forgatható. <br>\r\nHardveres kezelőpanel minden csatornára.<br>\r\nVibráló funkció a nagyobb játék élményhez.<br>\r\nTápellátása USB-ről történik és Jack csatlakozású. <br>\r\nKézzel varrott fülvédő réteg amely kiszűri a kintről beszűrődő zajokat.<br>\r\nfelépítés: zárt<br>\r\nátviteli: 20 Hz - 20.000 Hz<br>\r\nimpedancia: 10.000 Ohm<br>\r\nhangnyomás: 114 dB <br>\r\nátviteli - mikrofon: 20 Hz - 18.000 Hz<br>\r\nimpedancia - mikrofon: 2200 Ohm<br>\r\nkábelhossz: 3,4 m <br>\r\ncsatorna: 5.1<br>\r\ncsatlakozók: 3,5 mm jack, USB', '', 'Roccat KAVE Fejhallgató fejhallgató, mikrofonnal', 2, 27990, 12, 22990, 'Tökéletes Surround hangzást nyújtó, 5.1 headset profi játékosoknak és mozirajongóknak.<br>\r\nEgy igazi FPS játékban ha már tudjuk honnan várható a támadás, az már félig győzelem. a Roccat Kave használatával 360-os körben nem történhet semmi sem a közelünkben, amit meg nem hallanánk. a legapróbb nesz is pontosan és jól hallható\r\n', 9);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `termekkepek`
--

CREATE TABLE IF NOT EXISTS `termekkepek` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `termek_id` int(11) NOT NULL,
  `kepfajl` varchar(60) COLLATE utf8mb4_hungarian_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `termek_id` (`termek_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci AUTO_INCREMENT=4 ;

--
-- A tábla adatainak kiíratása `termekkepek`
--

INSERT INTO `termekkepek` (`id`, `termek_id`, `kepfajl`) VALUES
(1, 1, 'steelapex.jpg'),
(2, 2, 'steelsiberia.jpg'),
(3, 3, 'roccatkone.jpg');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(25) NOT NULL,
  `upass` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `irszam` varchar(10) NOT NULL,
  `postacim` varchar(50) NOT NULL,
  `telszam` varchar(15) NOT NULL,
  `rights` tinyint(4) NOT NULL,
  `name` text NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`id`, `uname`, `upass`, `email`, `irszam`, `postacim`, `telszam`, `rights`, `name`, `active`) VALUES
(1, 'polipert', '1c839b55f1d0112c6b33bad5cf6f1ed1', 'worrybrandi@gmail.com', '7432', 'Hetes,Ady Endre 44.', '06305883766', 1, 'Kapronczai Bence', 1),
(2, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin@admin.admin', 'admin', 'admin', 'admin', 3, 'admin', 0),
(3, 'paple', '$1$Al3.JG0.$IojgdTY92tQHshBM1J3zc0', 'paple@paple.com', '', '', '', 2, 'OP Paple', 1),
(4, 'asd', '$1$/n1.al3.$C4zWRhUOOH8UPQnwH9597.', 'nye', '', '', '', 1, 'nyenyenyenyenye', 0);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `vasarlasok`
--

CREATE TABLE IF NOT EXISTS `vasarlasok` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `telszam` varchar(15) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `postacim` varchar(40) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `irszam` varchar(4) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `email` varchar(40) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `comment` text COLLATE utf8mb4_hungarian_ci NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci AUTO_INCREMENT=4 ;

--
-- A tábla adatainak kiíratása `vasarlasok`
--

INSERT INTO `vasarlasok` (`id`, `name`, `telszam`, `postacim`, `irszam`, `email`, `comment`, `date`) VALUES
(2, 'Kiss Pál', '80/782-2345', 'Kaposvár, Fő u. 23.', '7400', 'kiss@bela.hu', 'hfjkdsh fkds ', '2015-03-27 10:06:56'),
(3, 'Gazdag András', '7878', 'Kaposvár, fdsa', '7400', 'dfsaf@gfg.hu', 'fdsgvs gfsd ', '2015-03-27 10:09:28');

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `termekek`
--
ALTER TABLE `termekek`
  ADD CONSTRAINT `termekek_ibfk_1` FOREIGN KEY (`kategoria_id`) REFERENCES `kategoriak` (`id`);

--
-- Megkötések a táblához `termekkepek`
--
ALTER TABLE `termekkepek`
  ADD CONSTRAINT `termekkepek_ibfk_1` FOREIGN KEY (`termek_id`) REFERENCES `termekek` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
