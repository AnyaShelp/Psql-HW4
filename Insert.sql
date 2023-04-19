insert into genre (name) values 
   ('pop'),
   ('electro'),
   ('rock'),
   ('jazz'),
   ('hip-hop');

insert into artist (name) values 
   ('Rihanna'),
   ('Britney Spears'),
   ('Nero'),
   ('Linkin Park'),
   ('Louis Armstrong'),
   ('Drake'),
   ('Eminem'),
   ('Queen');

insert into album (name,album_year) values
   ('Unapologetic','2012'),
   ('Circus','2008'),
   ('Between II Worlds','2015'),
   ('A Thousand Suns','2010'),
   ('Bing & Satchmo','1960'),
   ('Scorpion','2018'),
   ('Music to Be Murdered By','2020'),
   ('The Game','1980');

insert into song (name,duration,album_id) values
   ('Diamonds','00:03:45','1'),
   ('Womanizer','00:03:44','2'),
   ('Blur','00:03:09','2'),
   ('Satisfy','00:04:03','3'),
   ('Tonight','00:03:40','3'),
   ('Waiting for the End','00:03:52','4'),
   ('Fallout','00:01:23','4'),
   ('Sugar','00:03:11','5'),
   ('Brother Bill','00:02:58','5'),
   ('In My Feelings','00:03:39','6'),
   ('Final Fantasy','00:03:41','6'),
   ('Darkness','00:05:37','7'),
   ('Never Love Again','00:02:57','7'),
   ('Save Me','00:03:48','8'),
   ('Coming Soon','00:02:50','8');

insert into compilation (name,compilation_year) values
   ('Top Music Non Stop','2013'),
   ('Rock-Pop','2018'),
   ('Electro-Rock','2011'),
   ('Electro-Pop','2020'),
   ('Hip-Hop-Rock','2010'),
   ('Jazz-Hip-Hop','2016'),
   ('Jazz-Pop','2016'),
   ('Hip-Hop-Pop','2011');

insert into artist_genre (artist_id,genre_id) values
   ('1','1'),
   ('2','1'),
   ('3','2'),
   ('4','3'),
   ('5','4'),
   ('6','5'),
   ('7','5'),
   ('8','3');

insert into artist_album (artist_id,album_id) values
   ('1','1'),
   ('2','2'),
   ('3','3'),
   ('4','4'),
   ('5','5'),
   ('6','6'),
   ('7','7'),
   ('8','8');

insert into song_compilation (song_id,compilation_id) values
   ('1','1'),
   ('2','4'),
   ('3','1'),
   ('4','2'),
   ('5','3'),
   ('6','5'),
   ('7','3'),
   ('8','7'),
   ('9','7'),
   ('10','8'),
   ('11','8'),
   ('12','3'),
   ('13','2'),
   ('14','1'),
   ('15','1');
