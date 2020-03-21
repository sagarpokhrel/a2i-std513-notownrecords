INSERT INTO addresses (id,location,contact) VALUES 
(1,'123 Victoria St., Auckland CBD','0221111111'),
(2,'1896, Intramuros, Metro Manila','0918456789'),
(3,'456 Queen St., Auckland CBD','0222222222'),
(4,'789 Albert St., Auckland CBD','0223333333');


INSERT INTO musicians (ssn,name,address_id) VALUES 
('010-132-123','Pangseen P',1),
('212-141-212','CJ C',2),
('213-765-136','Sagar',3),
('632-134-841','Nando C',4),
('654-243-876','Anton R',3),
('909-123-404','Sakshi',4);


INSERT INTO instruments (id,name,musical_key) VALUES 
(1,'Rythm Guitar','D'),
(2,'Lead Guitar','E Major'),
(3,'Drums','C'),
(4,'Keyboards','F'),
(5,'Synthesizer','B Flat'),
(6,'Bass Guitar','C'),
(7,'Percussion','C Sharp'),
(8,'Trumpet','G'),
(9,'Flute','E'),
(10,'Violin','C++');


INSERT INTO albums (id,title,copyright_date,producer_id,audio_format) VALUES 
(29,'Queen','1975','010-132-123','123'),
(30,'Grip Stand Throw','1999','212-141-212','FLAC'),
(31,'Light Peace Love','2006','010-132-123','MP3'),
(32,'Between the Stars and Waves','2003','654-243-876','WAV'),
(33,'Parachutes','2000','632-134-841','AAC'),
(34,'Square One','2016','213-765-136','MP3'),
(35,'Songs About Jane','2002','212-141-212','FLAC'),
(36,'Evil Empire','1996','632-134-841','FLAC'),
(37,'Recovery','2010','909-123-404','WAV'),
(38,'White Album','1968','212-141-212','FLAC');


INSERT INTO songs (id,album_id,title,author_id) VALUES 
(1,29,'Bohemian Rhapsody','212-141-212'),
(2,29,'Cool Cat','010-132-123'),
(3,29,'Bicycle','010-132-123'),
(4,30,'2 Trick Pony','654-243-876'),
(5,30,'Butterfly Carnival','654-243-876'),
(6,30,'Maybe','010-132-123'),
(7,31,'Truth','212-141-212'),
(8,31,'Much has been Said','212-141-212'),
(9,31,'As the Music Plays','213-765-136'),
(10,31,'Take Me Down','213-765-136'),
(11,32,'The Proposal','212-141-212'),
(12,32,'Stranded','909-123-404'),
(13,32,'I Shot the Walrus','632-134-841'),
(14,32,'Faithless','632-134-841'),
(15,32,'Serious Offender','213-765-136'),
(16,32,'A Love to Share','212-141-212'),
(17,32,'Sunday Driving','909-123-404'),
(18,33,'Shiver','212-141-212'),
(19,33,'Yellow','212-141-212'),
(20,33,'Trouble','213-765-136'),
(21,33,'Don''t Panic','654-243-876'),
(22,33,'High Speed','010-132-123'),
(23,34,'Whistle','212-141-212'),
(24,34,'Stay','632-134-841'),
(25,34,'Kill This Love','909-123-404'),
(26,34,'Really','213-765-136'),
(27,35,'Harder to Breathe','213-765-136'),
(28,35,'This Love','212-141-212'),
(29,35,'She will be Loved','212-141-212'),
(30,36,'Bulls On Parade','909-123-404'),
(31,36,'Wake Up','632-134-841'),
(32,36,'Know your Enemy','010-132-123'),
(33,36,'Down Rodeo','212-141-212'),
(34,37,'No Love','010-132-123'),
(35,37,'Mom''s Spaghetti','212-141-212'),
(36,37,'Stan','632-134-841'),
(37,37,'Not Afraid','213-765-136'),
(38,37,'When I''m Gone','010-132-123'),
(39,38,'While My Guitar Gently Weeps','010-132-123'),
(40,38,'Blackbird','632-134-841'),
(41,38,'Yesterday','212-141-212'),
(42,38,'Come Together','213-765-136'),
(43,38,'Martha My Dear','213-765-136'),
(44,38,'Don''t Let Me Down','632-134-841'),
(45,38,'Let it Be','654-243-876');


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
(8,4,'213-765-136'),
(5,5,'632-134-841'),
(5,6,'654-243-876'),
(8,6,'010-132-123'),
(25,8,'654-243-876'),
(25,10,'212-141-212');
