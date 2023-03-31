insert into genre (name)
values ('pop');
insert into genre (name)
values ('electro');
insert into genre (name)
values ('rock');
insert into genre (name)
values ('jazz');
insert into genre (name)
values ('hip-hop');

insert into artist (name)
values ('Rihanna');
insert into artist (name)
values ('Britney Spears');
insert into artist (name)
values ('Nero');
insert into artist (name)
values ('Linkin Park');
insert into artist (name)
values ('Louis Armstrong');
insert into artist (name)
values ('Drake');
insert into artist (name)
values ('Eminem');
insert into artist (name)
values ('Queen');

insert into album (name,album_year)
values ('Unapologetic','2012');
insert into album (name,album_year)
values ('Circus','2008');
insert into album (name,album_year)
values ('Between II Worlds','2015');
insert into album (name,album_year)
values ('A Thousand Suns','2010');
insert into album (name,album_year)
values ('Bing & Satchmo','1960');
insert into album (name,album_year)
values ('Scorpion','2018');
insert into album (name,album_year)
values ('Music to Be Murdered By','2020');
insert into album (name,album_year)
values ('The Game','1980');

insert into song (name,duration,album_id)
values ('Diamonds','3.45','1');
insert into song (name,duration,album_id)
values ('Womanizer','3.44','2');
insert into song (name,duration,album_id)
values ('Blur','3.09','2');
insert into song (name,duration,album_id)
values ('Satisfy','4.03','3');
insert into song (name,duration,album_id)
values ('Tonight','3.40','3');
insert into song (name,duration,album_id)
values ('Waiting for the End','3.52','4');
insert into song (name,duration,album_id)
values ('Fallout','1.23','4');
insert into song (name,duration,album_id)
values ('Sugar','3.11','5');
insert into song (name,duration,album_id)
values ('Brother Bill','2.58','5');
insert into song (name,duration,album_id)
values ('In My Feelings','3.39','6');
insert into song (name,duration,album_id)
values ('Final Fantasy','3.41','6');
insert into song (name,duration,album_id)
values ('Darkness','5.37','7');
insert into song (name,duration,album_id)
values ('Never Love Again','2.57','7');
insert into song (name,duration,album_id)
values ('Save Me','3.48','8');
insert into song (name,duration,album_id)
values ('Coming Soon','2.50','8');

insert into compilation (name,compilation_year)
values ('Top Music Non Stop','2013');
insert into compilation (name,compilation_year)
values ('Rock-Pop','2018');
insert into compilation (name,compilation_year)
values ('Electro-Rock','2011');
insert into compilation (name,compilation_year)
values ('Electro-Pop','2020');
insert into compilation (name,compilation_year)
values ('Hip-Hop-Rock','2010');
insert into compilation (name,compilation_year)
values ('Jazz-Hip-Hop','2016');
insert into compilation (name,compilation_year)
values ('Jazz-Pop','2016');
insert into compilation(name,compilation_year)
values ('Hip-Hop-Pop','2011');

insert into artist_genre (artist_id,genre_id)
values ('1','1');
insert into artist_genre (artist_id,genre_id)
values ('2','1');
insert into artist_genre (artist_id,genre_id)
values ('3','2');
insert into artist_genre (artist_id,genre_id)
values ('4','3');
insert into artist_genre (artist_id,genre_id)
values ('5','4');
insert into artist_genre (artist_id,genre_id)
values ('6','5');
insert into artist_genre (artist_id,genre_id)
values ('7','5');
insert into artist_genre (artist_id,genre_id)
values ('8','3');

insert into artist_album (artist_id,album_id)
values('1','1');
insert into artist_album (artist_id,album_id)
values('2','2');
insert into artist_album (artist_id,album_id)
values('3','3');
insert into artist_album (artist_id,album_id)
values('4','4');
insert into artist_album (artist_id,album_id)
values('5','5');
insert into artist_album (artist_id,album_id)
values('6','6');
insert into artist_album (artist_id,album_id)
values('7','7');
insert into artist_album (artist_id,album_id)
values('8','8');

insert into song_compilation (song_id,compilation_id)
values('1','1');
insert into song_compilation (song_id,compilation_id)
values('2','4');
insert into song_compilation (song_id,compilation_id)
values('3','1');
insert into song_compilation (song_id,compilation_id)
values('4','2');
insert into song_compilation (song_id,compilation_id)
values('5','3');
insert into song_compilation (song_id,compilation_id)
values('6','5');
insert into song_compilation (song_id,compilation_id)
values('7','3');
insert into song_compilation (song_id,compilation_id)
values('8','7');
insert into song_compilation (song_id,compilation_id)
values('9','7');
insert into song_compilation (song_id,compilation_id)
values('10','8');
insert into song_compilation (song_id,compilation_id)
values('11','8');
insert into song_compilation (song_id,compilation_id)
values('12','3');
insert into song_compilation (song_id,compilation_id)
values('13','2');
insert into song_compilation (song_id,compilation_id)
values('14','1');
insert into song_compilation (song_id,compilation_id)
values('15','1');