-- list of musicians and instruments they played
CREATE PROCEDURE `NotownRecords`.`listMusicianAndTheirInstruments`()
BEGIN
	select
		m.ssn,
		m.name as musician,
		group_concat(distinct i.name) as instrument
	from song_instruments si 
		join songs s on si.song_id = s.id 
		join instruments i on si.instrument_id = i.id 
		join musicians m on si.musician = m.ssn
	group by m.ssn;
END


-- list of songs and names of the musicians that played
CREATE PROCEDURE `NotownRecords`.`listSongsWithMusicians`()
BEGIN
	select a.title album,
		s.title track,
		COALESCE (group_concat(m.name), '<none recorded>') as musicians
	from songs s 
		left join song_instruments si on s.id = si.song_id
		left join musicians m on si.musician = m.ssn
		join albums a on s.album_id = a.id 
	group by s.title, a.title
	order by musicians desc;
END

-- musicians with most played songs
CREATE PROCEDURE `NotownRecords`.`listMusiciansWithMostPlayedSongs`()
BEGIN
	select m.ssn,
		m.name, 
		a.contact,
		count(si.song_id) number_of_songs_played
	from musicians m 
		join song_instruments si on m.ssn = si.musician
		join addresses a on m.address_id = a.id
	group by m.ssn;
END