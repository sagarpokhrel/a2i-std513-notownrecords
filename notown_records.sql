CREATE TABLE `musicians` (
  `id` int PRIMARY KEY,
  `ssn` varchar(50) UNIQUE NOT NULL,
  `name` varchar(150) UNIQUE NOT NULL,
  `address_id` int NOT NULL
);

CREATE TABLE `addresses` (
  `int` id PRIMARY KEY,
  `location` varchar(255) UNIQUE NOT NULL,
  `contact` varchar(20) UNIQUE NOT NULL
);

CREATE TABLE `instruments` (
  `id` int PRIMARY KEY,
  `name` varchar(20) UNIQUE NOT NULL,
  `musical_key` varchar(10) NOT NULL
);

CREATE TABLE `albums` (
  `id` int PRIMARY KEY,
  `title` varchar(100) NOT NULL,
  `copyright_date` varchar(15) NOT NULL,
  `producer_id` int NOT NULL,
  `audio_format` varchar(10) NOT NULL,
  `album_identifier` varchar(20) UNIQUE NOT NULL
);

CREATE TABLE `songs` (
  `id` int PRIMARY KEY,
  `album_id` int NOT NULL,
  `title` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL
);

CREATE TABLE `song_instruments` (
  `song_id` int NOT NULL,
  `instrument_id` int NOT NULL,
  `musician_id` int NOT NULL
);

ALTER TABLE `songs` ADD FOREIGN KEY (`album_id`) REFERENCES `albums` (`id`);

ALTER TABLE `musicians` ADD FOREIGN KEY (`address_id`) REFERENCES `addresses` (`int`);

ALTER TABLE `song_instruments` ADD FOREIGN KEY (`instrument_id`) REFERENCES `instruments` (`id`);

ALTER TABLE `song_instruments` ADD FOREIGN KEY (`song_id`) REFERENCES `songs` (`id`);

ALTER TABLE `song_instruments` ADD FOREIGN KEY (`musician_id`) REFERENCES `musicians` (`id`);

ALTER TABLE `albums` ADD FOREIGN KEY (`producer_id`) REFERENCES `musicians` (`id`);
