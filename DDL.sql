DROP TABLE IF EXISTS `addresses`;

CREATE TABLE `addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location` varchar(255) NOT NULL,
  `contact` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `location` (`location`),
  UNIQUE KEY `contact` (`contact`)
);


DROP TABLE IF EXISTS `albums`;

CREATE TABLE `albums` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `copyright_date` varchar(15) NOT NULL,
  `producer_id` varchar(50) NOT NULL,
  `audio_format` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `albums_FK_producer` (`producer_id`),
  CONSTRAINT `albums_FK_producer` FOREIGN KEY (`producer_id`) REFERENCES `musicians` (`ssn`) ON UPDATE CASCADE
);

DROP TABLE IF EXISTS `instruments`;

CREATE TABLE `instruments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `musical_key` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
);

DROP TABLE IF EXISTS `musicians`;

CREATE TABLE `musicians` (
  `ssn` varchar(50) NOT NULL,
  `name` varchar(150) NOT NULL,
  `address_id` int(11) NOT NULL,
  UNIQUE KEY `ssn` (`ssn`),
  KEY `musicians_FK_address` (`address_id`),
  CONSTRAINT `musicians_FK_address` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`id`) ON UPDATE CASCADE
);

DROP TABLE IF EXISTS `song_instruments`;

CREATE TABLE `song_instruments` (
  `song_id` int(11) NOT NULL,
  `instrument_id` int(11) NOT NULL,
  `musician` varchar(50) NOT NULL,
  UNIQUE KEY `song_instruments_UN` (`song_id`,`instrument_id`,`musician`),
  KEY `song_instruments_FK_instrument` (`instrument_id`),
  KEY `song_instruments_FK_musician` (`musician`),
  CONSTRAINT `song_instruments_FK_instrument` FOREIGN KEY (`instrument_id`) REFERENCES `instruments` (`id`),
  CONSTRAINT `song_instruments_FK_musician` FOREIGN KEY (`musician`) REFERENCES `musicians` (`ssn`),
  CONSTRAINT `song_instruments_FK_song` FOREIGN KEY (`song_id`) REFERENCES `songs` (`id`) ON DELETE CASCADE
);

DROP TABLE IF EXISTS `songs`;

CREATE TABLE `songs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `album_id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `author_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `songs_FK_album` (`album_id`),
  KEY `songs_FK_musician` (`author_id`),
  CONSTRAINT `songs_FK_album` FOREIGN KEY (`album_id`) REFERENCES `albums` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `songs_FK_musician` FOREIGN KEY (`author_id`) REFERENCES `musicians` (`ssn`) ON UPDATE CASCADE
);