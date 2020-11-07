create database db_cidade_das_carnes;
use db_cidade_das_carnes;

create table tb_categoria (
	id_categoria int,
    categoria_prod varchar (50),
    produtor_marca varchar (50) default "Desconhecido",
    primary key (id_categoria)
);

create table tb_produto (
	id_produto int not null auto_increment,
    produto_desc varchar (50),
    valor decimal (5,2),
    estoque enum ('Sim', 'Não'),
    carne enum ('Sim','Não'),
    id_categoria int,
    primary key (id_produto),
    CONSTRAINT fk_produto FOREIGN KEY (id_categoria) REFERENCES tb_categoria (id_categoria)
);

#popular tabelas

insert into tb_categoria (categoria_prod,produtor_marca) values
    ('Carne Bovina', 'Swift'),
	('Carne Suína', 'Fazenda dos Anjos'),
    ('Carne de Frango','Fazenda Atalaia'),
    ('Espetinho de Queijo', 'Qualy'),
    ('Pão de alho', 'LoveAlho');
    
    select * from tb_categoria;
    
insert into tb_produto (produto_desc, valor, estoque, carne, id_categoria) values
	('Acém', 45, 'Sim', 'Sim',1),
    ('Contra-filé', 70, 'Sim', 'Sim',1),
    ('Picanha', 80, 'Sim', 'Sim',1),
    ('Lombo', 65, 'Sim', 'Sim',2),
    ('Peito de frango', 20, 'Sim', 'Sim',3),
	('Pão de alho e catupiry', 13, 'Sim', 'Não',5),
    ('Pão de alho apimentado', 10, 'Sim', 'Não',5),
    ('Queijinho Coalho', 18, 'Sim', 'Não',4);
   
   select * from tb_produto;

   select * from tb_produto where produto_desc like 'C%';
   
   select * from tb_produto inner join tb_categoria
   where tb_produto.id_produto = tb_categoria.id_categoria and tb_produto.valor > 50;
   
   select * from tb_produto inner join tb_categoria
   where tb_produto.id_produto = tb_categoria.id_categoria and tb_produto.valor > 3 and tb_produto.valor < 60;

   select * from tb_produto inner join tb_categoria
   on tb_produto.id_categoria = tb_categoria.id_categoria where tb_categoria.categoria_prod = "Carne Bovina";
   
   select * from tb_produto inner join tb_categoria
   on tb_produto.id_categoria = tb_categoria.id_categoria where tb_categoria.produtor_marca = "LoveAlho";