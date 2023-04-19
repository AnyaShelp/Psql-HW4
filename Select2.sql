select g.name, count(a.name)  
  from genre as g
       join artist_genre as ga 
       on g.id = ga.genre_id
            join artist as a 
            on ga.artist_id = a.id
 group by g.name;

select al.name, count(s.name)
  from album as al
       join song as s
       on s.album_id = al.id
 where album_year between 2019 and 2020
 group by al.name;

select a.name, avg(s.duration)
  from album as a
       join song as s 
       on s.album_id = a.id
 group by a.name;

select name 
  from artist 
 where name not in (
       select a.name from artist as a
         join artist_album as aa 
         on a.id = aa.artist_id 
         join album as al 
         on aa.album_id = al.id
        where album_year = 2020)
 group by name;

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

select distinct al.name
  from album as al
 inner join artist_album as	aa 
 on al.id = aa.album_id 
 inner join artist as a 
 on a.id = aa.artist_id
 inner join artist_genre as ag 
 on ag.artist_id = a.id 
 inner join genre as g 
 on g.id = ag.artist_id 
 group by al.name, 
          a.name
having count(distinct g.name) > 1;

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
       left join artist as ar 
       on ar.id = aa.artist_id
 where s.duration = 
       (select min(duration) 
          from song);

select al.name, count(al.id)
  from album as al 
  join song as s 
  on s.album_id = al.id 
 group by al.name 
having count(s.id) = (
       select count(s.id)  
         from album as al 
         join song as s 
         on s.album_id = al.id 
 group by al.name
 order by count(s.id)
 limit 1)
