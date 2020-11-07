CREATE DATABASE Ford;
DROP DATABASE Ford;
SHOW DATABASES;
USE aula1;
create table funcionarios (
nome varchar(30),
idade tinyint,
sexo char (1),
peso float,
altura float,
nacionalidade varchar (20)
);
insert into funcionarios values ("Juliana", 22, "f", 60, 1.65, "Brasileira");
insert into funcionarios (nome, sexo) values ("Marcio", "m");            

select * from funcionarios;

insert into funcionarios values 
	("Marcela",22,"f",60,1.65,"Brasileira"),
    ("Gabriel",28,"m",70,1.70,"Brasileiro"),
    ("Suyá",34,"f",55,1.60,"Brasileira");
    
update funcionarios set nacionalidade = "Argentino" where nome = "Gabriel";

show tables;
describe funcionarios;
select * from funcionarios;
select nome from funcionarios;
select nome, nacionalidade from funcionarios;