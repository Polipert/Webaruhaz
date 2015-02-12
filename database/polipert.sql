-- phpMyAdmin SQL Dump
-- version 4.1.13
-- http://www.phpmyadmin.net
--
-- Hoszt: 127.0.0.1
-- Létrehozás ideje: 2015. Feb 12. 08:54
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
-- Tábla szerkezet ehhez a táblához `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(60) NOT NULL,
  `text` text NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- A tábla adatainak kiíratása `news`
--

INSERT INTO `news` (`id`, `title`, `text`, `date`) VALUES
(1, 'Próba hír 1', '<p>Az én rózsám egy olyan szép lány<br>\r\nHogy koporsója<br>\r\nArany széf tán<br>\r\nBenne alszik az én rózsám<br>\r\nArany szeplők pozsgás arcán<br></p>\r\n\r\n<p>És néha van hogy csókot kérek<br>\r\naz én rózsám édes méreg<br>\r\nKoporsója tárva nyitva<br>\r\nbenne fekszem én is sírva<br></p>\r\n\r\n<p>Az én rózsám pántlikája<br>\r\nLobog a szélben vihar cibálja<br>\r\nÚgy szerette az én rózsám<br>\r\nBús hajában nincsen ott már<br>\r\n\r\n<p>És néha van hogy lopva kérem<br>\r\nAz én rózsám hogy haza térjen<br>\r\nKoporsója tárva-nyitva<br>\r\nBenne fekszik ő is sírva<br></p>\r\n\r\n<p>Az én rózsám egy olyan szép lány<br>\r\nHa keble ringat szívem szét mál<br>\r\nElaltat majd az én rózsám<br>\r\nS ölel újra egyszer majd tán<br></p>\r\n\r\n<p>És néha van hogy látni vélem<br>\r\nAz én rózsám nyári szélben<br>\r\nKoporsója tárva-nyitva<br>\r\nBenne fekszünk ketten sírva<br></p>', '2014-11-11'),
(2, 'Nyúvz 2', '<p>Daber, daber, dah! <br>\r\nIn einem Krieg wie diesen gibt es keine Zivilisten...<br>\r\n(Wie Stalin!)<br>\r\nDaber, daber, dah!<br>\r\nDass ein Drittes Reich nicht vorstellbar ist...\r\nJA, JA, JA!!!</p>\r\n\r\n<p>Dann suchen Sie ihn!<br>\r\nIch will Fegelein sehen!<br>\r\nSofort!<br>\r\nWenn er sich ohne Befehl entfernt hat, ist das Fahnenflucht!<br>\r\nVerrat!</p>\r\n\r\n<p>-Zuschaffen, als selbst alles niederzureißen.<br>\r\nHören Sie den Schuss nicht?<br> Der Russe sollen eine Eisen...<br>\r\nDer krieg, -em Aufbau, erst mal gewonnen ist, dann wird...<br>\r\n-Ngen vorzunehmen brauchte-tant, er muss zer verfüngung stehen!<br>\r\n-Meinschaftsfremd tot, -kommen sind. So mitten in der Nacht.<br>\r\nBeschiss, von wo?! <br>Was hat er daraus gemacht?!<br>\r\nViertens: Wohin bricht die das Leben nehmen Ich möcht aber nicht...<br>\r\nWenn ich tot bin, ich will sofort einen Bericht!!</p>\r\n\r\n<p>Daber, daber, dah!<br>\r\nSagen Sie Busse, er soll kämpfen, wo er steht!\r\n(Ich glaube!)<br>\r\nDaber, daber, dah!<br>\r\nEs ist vollkommen wurscht, wenn auch das Volk verloren geht.<br>\r\n(Das Reicht!)</p>\r\n\r\n<p>Soll mit der zwölften Armee die Sache unterstützen.<br>\r\nDieses Dritte Reich wird eine Schatz...<br>\r\nAngreifen und sich mit der neunten Armee...<br>\r\nHaben Sie noch Zweifel an meinem Befehl?!<br></p>\r\n\r\n<p>Sie werden ersaufen in ihrem eigenen Blut!<br>\r\n-Gen schon werden mich Millionen verfluchen.<br>\r\n-Man aus diesen Trümmern neu empor wächst...<br>\r\nJeder hat mich belogen, sogar die SS!</p>\r\n\r\n<p>Haut ab...<br>\r\n-Tioooooon!<br>\r\nAllein dafür müsste man ihn an die Wand stellen!\r\n(Nieder!)<br>\r\n-Tioooooon!<br>\r\nEin Parvenu, ein Faulpelz! \r\n-Tioooooon!<br>\r\nAllein dafür müsste man ihn an die Wand stellen!\r\n(Nieder!)<br>\r\n-Tioooooon!<br>\r\nDer Angriff Steiners war Befehl!<br></p>\r\n\r\n...<br>\r\n\r\nBlut werden sie bezahlen!\r\n', '2014-11-25');

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
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(25) NOT NULL,
  `upass` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`id`, `uname`, `upass`) VALUES
(1, 'polipert', 'BeNcetuc12');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
