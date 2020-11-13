use loja_games;
show tables;

select*from tb_categoria;
select*from tb_jogos;

insert into tb_categoria (descricao_categoria, nome) values
("Simular vida real ou ficticia","Simulação"),
("Atividades diversas com muita ação e aventura","Aventura"),
("Jogos com diversos jogadores e em grupos","Batalha multijogador"),
("Jogos online relacionados à esportes reais","Esportivo"),
("Interpretação de personagens online e em massa","RPG");

ALTER TABLE tb_categoria DROP COLUMN descricao;
ALTER TABLE tb_jogos DROP COLUMN ano, drop column disponibilidade;

insert into tb_jogos (titulo, categoria_id, preco) values
("Dota",13,50),
("Zelda",12,25),
("Final Fantasy",15,40),
("The Sims",11,40),
("Tennis Clash",14, 10);