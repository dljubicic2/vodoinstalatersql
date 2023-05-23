Use master;
create database vodoinstalater;
use vodoinstalater;

create table popravak (
	id int not null primary key identity (1,1),
	kvar int not null,
	cijena decimal(18,2) null,
	segrt int not null
);
create table kvar (
	id int not null primary key identity (1,1),
	naziv varchar(50) not null,
	vrsta varchar(50) not null,
	velicina varchar(50) null
);
create table segrt (
	id int not null primary key identity (1,1),
	ime varchar(50) null,
	prezime varchar(50) null
);

-- veze izme?u tablica

alter table popravak add foreign key (kvar) references kvar (id);
alter table popravak add foreign key (segrt) references segrt (id);

-- dodavanje sadržaja u tablicu

insert into kvar (naziv,vrsta,veli?ina)
values ('vodena_pumpa','mehanicki','veliki'),
('puknuce_cijevi','tehnicki','veliki'),
('dotrajale_instalacije','tehnicki','mali');

insert into segrt (ime,prezime)
values ('Pero','Peric'),
('Maro','Maric'),
('Duro','Duric');

insert into popravak (kvar,cijena,segrt)
values (1,182.00,1),
(2,155.78,2),
(3,123.54,3);

-- promjena tablice

update kvar set vrsta='mehanicki'
where id=2;

update kvar set veli?ina='mali'
where id=1;

update segrt set ime='Jozo'
where id=3;

-- Brisanje u tablici

update kvar set vrsta='mehanicki'
where id=2;

update kvar set veli?ina='mali'
where id=1;

update segrt set ime='Jozo'
where id=3;