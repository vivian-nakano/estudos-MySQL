create database estoque;

use estoque;

# criação tb_marcas e populando dados

create table tb_marcas (
codmarca bigint auto_increment,
descricao varchar (50),
nacional boolean,
primary key (codmarca)
);

select * from tb_marcas;

insert into tb_marcas (descricao, nacional) values ("Nestlé", false),
	("Santa Helena", true),
	("Sadia", true);
    
#criacao tb_produtos e populando dados

create table tb_produtos (

	codpro bigint auto_increment,
    descricao varchar (50),
    codmarca bigint,
    codigo varchar (30),
    preco float,
    validade date,
    primary key (codpro),
    foreign key (codmarca) references tb_marcas (codmarca)

);

select * from tb_produtos;	

insert into tb_produtos (descricao,codmarca,codigo,preco,validade) values ("Chocolate", "1","cod123","5","2021/10/10"),
		("Paçoquinha", "2","cod159","3","2022/01/01"),
		("Pizza", "3","cod148","15","2021/02/02"),
		("Amendoim", "2","cod333","6","2021/12/12");
