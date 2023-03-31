select g.name, count(a.name)  
  from genre as g
       join artist_genre as ga 
       on g.id = ga.genre_id
            join artist as a 
            on ga.artist_id = a.id
 group by g.name;

select s.name, a.album_year
  from album as a
       inner join song as s
       on s.album_id = a.id
 where a.album_year >= '01.01.2019' 
   and a.album_year <= '31.12.2020';

select avg(duration) 
  from song as s
       join album as a 
       on a.id = s.album_id 
 group by album_id;

select name
  from artist as a
 where a.name not in 
       (select a.name from artist as a2 
               inner join artist_album as aa 
               on aa.artist_id = a2.id 
               inner join album as al 
               on al.id = aa.album_id  
         where al.album_year = '2022'
         group by a.name);

select c.name
  from compilation as c
       inner join song_compilation as sc 
       on c.id = sc.compilation_id
       inner join song as s 
       on s.id = sc.song_id
       inner join album as a 
       on a.id = s.album_id
       inner join artist_album as aa 
       on aa.album_id = a.id
       inner join artist as a2 
       on a2.id = aa.artist_id
 where a2.name like '%Eminem%';

select a.name 
  from album as a
       left join artist_album as aa 
       on a.id = aa.album_id
       left join artist as ar 
       on ar.id = aa.artist_id
       left join artist_genre as ag 
       on ar.id = ag.artist_id
       left join genre as g 
       on g.id = ag.genre_id
 group by a.name
having count(distinct g.name) > 1
 order by a.name;

select s.name
  from song as s
       inner join song_compilation as sc 
       on s.id = sc.song_id
 where sc.song_id is null;

select ar.name, s.duration
  from song as s
       left join album as a 
       on a.id = s.album_id
       left join artist_album as aa 
       on aa.album_id = a.id
       left join artist as ar on ar.id = aa.artist_id
 group by ar.name, s.duration
having s.duration = 
       (select min(duration) 
          from song)
 order by ar.name;

select al.name 
  from album as al 
  inner join song as s
  on s.album_id = al.id
 where s.id  < (
       select avg(album_id) 
         from song)
 group by al.name;