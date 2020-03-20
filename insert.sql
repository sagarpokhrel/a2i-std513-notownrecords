insert into addresses (location, contact) values
('123 Victoria St., Auckland CBD', '0221111111'),
('1896, Intramuros, Metro Manila', '0918456789'),
('456 Queen St., Auckland CBD', '0222222222'),
('789 Albert St., Auckland CBD', '0223333333')


insert into musicians values
('010-132-123', 'Pangseen P', 1),
('212-141-212', 'CJ C', 2),
('654-243-876', 'Anton R', 3),
('632-134-841', 'Nando C', 4),
('213-765-136', 'Sagar', 3),
('909-123-404', 'Sakshi', 4)


insert into albums (title, copyright_date, producer_id, audio_format) values
('Grip Stand Throw', '1999', '212-141-212', 'FLAC'),
('Light Peace Love', '2006', '010-132-123', 'MP3'),
('Between the Stars and Waves', '2003', '654-243-876', 'WAV'),
('Parachutes', '2000', '632-134-841', 'AAC'),
('Square One', '2016', '213-765-136', 'MP3'),
('Songs About Jane', '2002', '212-141-212', 'FLAC'),
('Evil Empire', '1996', '632-134-841', 'FLAC'),
('Recovery', '2010', '909-123-404', 'WAV'),
('White Album', '1968', '212-141-212', 'FLAC')


insert into songs (album_id, title, author_id) values
(29, 'Bohemian Rhapsody', '212-141-212'),
(29, 'Cool Cat', '010-132-123'),
(29, 'Bicycle', '010-132-123'),
(30, '2 Trick Pony', '654-243-876'),
(30, 'Butterfly Carnival', '654-243-876'),
(30, 'Maybe', '010-132-123'),
(31, 'Truth', '212-141-212'),
(31, 'Much has been Said', '212-141-212'),
(31, 'As the Music Plays', '213-765-136'),
(31, 'Take Me Down', '213-765-136'),
(32, 'The Proposal', '212-141-212'),
(32, 'Stranded', '909-123-404'),
(32, 'I Shot the Walrus', '632-134-841'),
(32, 'Faithless', '632-134-841'),
(32, 'Serious Offender', '213-765-136'),
(32, 'A Love to Share', '212-141-212'),
(32, 'Sunday Driving', '909-123-404'),
(33, 'Shiver', '212-141-212'),
(33, 'Yellow', '212-141-212'),
(33, 'Trouble', '213-765-136'),
(33, 'Don\'t Panic', '654-243-876'),
(33, 'High Speed', '010-132-123'),
(34, 'Whistle', '212-141-212'),
(34, 'Stay', '632-134-841'),
(34, 'Kill This Love', '909-123-404'),
(34, 'Really', '213-765-136'),
(35, 'Harder to Breathe', '213-765-136'),
(35, 'This Love', '212-141-212'),
(35, 'She will be Loved', '212-141-212'),
(36, 'Bulls On Parade', '909-123-404'),
(36, 'Wake Up', '632-134-841'),
(36, 'Know your Enemy', '010-132-123'),
(36, 'Down Rodeo', '212-141-212'),
(37, 'No Love', '010-132-123'),
(37, 'Mom\'s Spaghetti', '212-141-212'),
(37, 'Stan', '632-134-841'),
(37, 'Not Afraid', '213-765-136'),
(37, 'When I\'m Gone', '010-132-123'),
(38, 'While My Guitar Gently Weeps', '010-132-123'),
(38, 'Blackbird', '632-134-841'),
(38, 'Yesterday', '212-141-212'),
(38, 'Come Together', '213-765-136'),
(38, 'Martha My Dear', '213-765-136'),
(38, 'Don\'t Let Me Down', '632-134-841'),
(38, 'Let it Be', '654-243-876')


insert into instruments (name, musical_key) values
('Rythm Guitar', 'D'),
('Lead Guitar', 'E Major'),
('Drums', 'C'),
('Keyboards', 'F'),
('Synthesizer', 'B Flat'),
('Bass Guitar', 'C'),
('Percussion', 'C Sharp'),
('Trumpet', 'G'),
('Flute', 'E'),
('Violin', 'C++')


INSERT INTO song_instruments (song_id,instrument_id,musician) VALUES 
(1,1,'212-141-212'),
(25,1,'213-765-136'),
(41,1,'213-765-136'),
(1,2,'213-765-136'),
(8,2,'909-123-404'),
(25,2,'010-132-123'),
(1,3,'010-132-123'),
(8,3,'212-141-212'),
(5,4,'909-123-404'),
(8,4,'213-765-136')
(5,5,'632-134-841'),
(5,6,'654-243-876'),
(8,6,'010-132-123'),
(25,8,'654-243-876'),
(25,10,'212-141-212');