use db_estoque;

create table tb_marcas (
	id bigint (5) auto_increment,
    nome varchar (30) not null, 
    ativo boolean, 
    primary key (id)
);

select * from tb_marcas;

INSERT INTO tb_marcas (nome, ativo) VALUES ("H&M", true);
INSERT INTO tb_marcas (nome, ativo) VALUES ("Zara", true);
INSERT INTO tb_marcas (nome, ativo) VALUES ("Louis Vuitton", true);
INSERT INTO tb_marcas (nome, ativo) VALUES ("Adidas", true);
INSERT INTO tb_marcas (nome, ativo) VALUES ("Uniqlo", true);
INSERT INTO tb_marcas (nome, ativo) VALUES ("Hermès", true);
INSERT INTO tb_marcas (nome, ativo) VALUES ("Rolex", true);
INSERT INTO tb_marcas (nome, ativo) VALUES ("Gucci", true);
INSERT INTO tb_marcas (nome, ativo) VALUES ("Cartier", true);
INSERT INTO tb_marcas (nome, ativo) VALUES ("Polo", true);
INSERT INTO tb_marcas (nome, ativo) VALUES ("Armany", true);

select * from tb_marcas;

#exemplo para inserir dados
#insert into tb_marcas (nome, ativo) values ("Nike", true)
#exemplo para atualizar dados
#update tb_marcas set nome = "Nike", ativo = false where id = 1;
#exemplo para selecionar conjunto de valores com condições
#select*from tb_marcas where id = 2 /// id > 2 ....
#select nome from tb_marcas : para trazer só nomes, por exemplo.
#delete from tb_marcas where id = 1;