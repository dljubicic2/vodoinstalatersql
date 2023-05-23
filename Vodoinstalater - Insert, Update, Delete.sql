-- use master;
use vodoinstalater;

select * from popravak;

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

update kvar set vrsta='mehanicki'
where id=2;

update kvar set veli?ina='mali'
where id=1;

update segrt set ime='Jozo'
where id=3;

delete from popravak where id=1;

delete from segrt where id=3;

delete from segrt where id=1;