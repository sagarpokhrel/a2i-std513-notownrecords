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


