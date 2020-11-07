create database db_RH2;
use db_RH2;

create table tb_cargo (
	id_cargo int not null auto_increment,
	cargo varchar (40),
    departamento varchar (40),
	andar int (1),
    primary key (id_cargo)
    ) engine = innodb;
    
create table tb_funcionarios (
	id_func int not null auto_increment,
    nome_func varchar (50), 
    genero enum ('M','F','O'),
    salario decimal (10,2),
    nacionalidade varchar (50),
    id_cargo int,
     primary key (id_func),
     CONSTRAINT fk_func FOREIGN KEY (id_cargo) REFERENCES tb_cargo (id_cargo)
     );
     #chave estrangeira -> criar nome, depois atrelar a chave primária, depois puxar tabela que está
     #atrelando e colocar em parênteses o atributo.
     
     #populando
     #aqui tem que ser diferente cada cargo!  
insert into tb_cargo (cargo, departamento, andar) values
	('Desenvolvedor(a)','TI', 2),
    ('Analista de Desenvolvimento', 'TI', 2),
    ('Gerente de Marketing', 'Marketing', 1),
    ('Vendedor(a)', 'Vendas', 2),
    ('Analista de RH', 'Recursos Humanos', 1);
    
    select * from tb_cargo;
    
insert into tb_funcionarios (nome_func, genero, salario, nacionalidade, id_cargo) values
	('Joana Dias', 'F', 2500, 'Brasileira',1),
    ('Luiz Rodriguez', 'M', 2500, 'Mexicano',2),
    ('Priscila Oliveira', 'F', 3500, 'Brasileira',3),
    ('Luiza Martins', 'F', 2500, 'Brasileira',4),
    ('Carla Sanchez', 'F',4000, 'Brasileira',5),
    ('Larissa Bittencourt', 'F', 1900, 'Portuguesa',1),
    ('Hugo Leite', 'M', 3000, 'Brasileira',2),
    ('Alexandre Peixoto', 'M', 2500, 'Brasileira',3),
    ('Luna Marcia', 'F', 3500, 'Brasileira',4),
    ('Julio Cleide', 'M', 2500, 'Brasileira',5),
    ('Suya Lira', 'O', 5000, 'Brasileira',1),
    ('Poncho Jueves', 'O', 5000, 'Uruguaio',2),
    ('Maria Aparecida', 'F', 3500, 'Brasileira',3),
    ('Joana Dias', 'F', 4500, 'Brasileira',4),
    ('João Barbosa', 'M', 1700, 'Brasileira',5);
    
     select * from tb_funcionarios;
	
     select * from tb_funcionarios where salario < 2000.00;
	 select * from tb_funcionarios where salario > 2000.00;
     select * from tb_funcionarios where nome_func like 'C%';  #encontrar pessoas que começam com tal letra
     
     select * from tb_cargo inner join tb_funcionarios
     where tb_cargo.id_cargo = tb_funcionarios.id_cargo and tb_funcionarios.salario > 2000;
     
	 select * from tb_cargo inner join tb_funcionarios
     where tb_cargo.id_cargo = tb_funcionarios.id_cargo and tb_funcionarios.salario > 1000 and tb_funcionarios.salario < 2000; 