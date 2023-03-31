create table if not exists genre (
id serial primary key,
name varchar (60) not null
);

create table if not exists artist (
id serial primary key,
name varchar (60) not null
);

create table if not exists album (
id serial primary key,
name varchar (60) not null,
album_year varchar (4)
);

create table if not exists artist_genre (
genre_id integer not null references genre (id),
artist_id integer not null references artist (id)
);

create table if not exists artist_album (
artist_id integer not null references artist (id),
album_id integer not null references album (id)
);

create table if not exists song (
id serial primary key,
name varchar(60) not null,
duration numeric not null, 
album_id integer references album (id)
);

create table if not exists compilation (
id serial primary key,
name varchar(60) not null,
compilation_year varchar (4)
);

create table if not exists song_compilation (
song_id integer not null references song (id),
compilation_id integer not null references compilation (id)
);