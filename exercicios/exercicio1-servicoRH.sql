CREATE DATABASE db_rh;
USE db_rh;

#criacao da tabela

CREATE TABLE colaboradores_empresa (
id_colaborador int auto_increment,
nome varchar (50),
genero enum ('M','F','O'),
departamento varchar (50),
funcao varchar (50),
mesAniversario varchar (50),
salario decimal (10,2),
primary key (id_colaborador)
);

#populando
INSERT INTO colaboradores_empresa (nome, genero, departamento,funcao,mesAniversario,salario) values 
	('Joana Alves', 'F', 'TI', 'Desenvolvedora Java', 'Outubro',6000),
    ('Victor Luis', 'M', 'RH', 'Assistente de RH', 'Agosto',3500),
	('Carolina Machado', 'F', 'Financeiro', 'Contadora', 'Abril',4500),
    ('Juvenal Silva', 'M', 'TI', 'Analista de Testes','Janeiro',5000),
	('Priscila Cardoso', 'F', 'TI', 'Estagiária', 'Novembro',1900);
    
    select * from colaboradores_empresa;

#visualizar estes dados nestas condições
select * from colaboradores_empresa where salario > 2000;
select * from colaboradores_empresa where salario < 2000;

#atualizar
update colaboradores_empresa set salario = 4000 where id_colaborador = 2;

   select * from colaboradores_empresa;