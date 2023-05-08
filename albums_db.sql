CREATE database record_company;
USE record_company;
CREATE TABLE bands (
	id INT not null auto_increment,
	name varchar(255) not null,
    primary key (id)
);
CREATE TABLE albums (
	id INT not null auto_increment,
	name varchar(255) not null,
    release_year INT,
    band_id INT not null, 
    primary key (id), 
    foreign key (band_id) references bands(id)
);

INSERT INTO bands(name)
VALUES ('The Wiggles');
INSERT INTO bands(name)
VALUES ('Iron Maiden'), ('Aerosmith'), ('The Beatles'), ('Black Sabbath'), ('Coldplay'), ('Daft Punk');

SELECT * FROM bands;

SELECT * FROM bands LIMIT 2;

SELECT name FROM bands;

select id as 'ID', name as 'Band Name' from bands;

select * from bands order by name;

select * from bands order by name asc;
select * from bands order by name desc;

INSERT INTO albums (name, release_year, band_id)
VALUES('captain feathersword', 1993, 1),
('fear of the dark', 1992, 2),
('dream on', 1973, 3),
('let it be', 1973, 4),
('paranoid', 1970, 5),
('full of stars', 2014, 6),
('get lucky', 2013, 7),
('test album', null, 7);

select * from albums;

select distinct name from albums;

UPDATE albums
set release_year = 1982
where id = 1;

Select * from albums
where release_year < 2000;

Select * from albums
where name like '%rd%' or band_id = 2; 

Select * from albums
where release_year = 1984 and band_id = 1;

Select * from albums
where release_year between 2000 and 2018;

Select * from albums
where release_year is null;

delete from albums
where id = 8;

select * from bands
inner join albums ON bands.id = albums.band_id;

select * from bands
left join albums ON bands.id = albums.band_id;

select * from bands
right join albums ON bands.id = albums.band_id;

select avg(release_year) from albums;

select sum(release_year) from albums;

select band_id, count(band_id) from albums
group by band_id;

select b.name as band_name, count(a.id) as num_albums
from bands as b 
left join albums as a on b.id = a.band_id
where b.name = 'The Wiggles'
group by b.id
having num_albums = 2;








