-- create schema esercizio_1;
use esercizio_1;
drop table if exists Automobile;
create table Automobile (
	Marca varchar(50),
	Modello varchar(35),
	Targa varchar(7),
	Cilindrata int,
	Colore varchar(50)
	);
insert into Automobile (marca, modello, targa, cilindrata, colore) values(
	"Ferrari",
    "488",
    "AA123BB",
    3902,
    "Rosso");
insert into automobile values (
	"Mercedes", 
    "Classe_C",
	"CC456DD", 
    2998,
    "Grigio"
    );
insert into automobile(modello, targa, marca, colore, cilindrata) values(
	"i8",
    "EE789FF",
    "Bmw",
    "Blu_scuro",
    1498
    );
insert into automobile(marca, cilindrata) values (
	"Fiat",
    1233
    );
drop table if exists lavoratore;
create table lavoratore(
	nome varchar(25), 
    cognome varchar(40),
    matricola varchar(16),
    stipendio int
    );
insert into lavoratore values(
	"paolo",
	"verde",
    "a01234",
    1865
    );
insert into lavoratore values(
	"stefano",
	"neri",
    "b05678",
    2000
    );
insert into lavoratore values(
	"francesco",
	"azzurra",
    "c09012",
    2000
    );
insert into lavoratore values(
	"luca",
	"rosso",
    "b091234",
    2100
    );
    
    
select * from lavoratore where cognome like "verde";
select * from lavoratore where cognome like "%e%";
select nome, cognome, stipendio from lavoratore where cognome like "a%";
select * from lavoratore where nome like "%o" and cognome like "%e%";
select * from lavoratore where stipendio between 1800 and 2000;
select * from lavoratore where (stipendio between 2000 and 2500) and (cognome like "%i");
select nome, cognome from lavoratore where stipendio between 1900 and 2400 order by stipendio desc;
select nome, cognome from lavoratore where stipendio between 2000 and 2500 order by stipendio desc, nome;