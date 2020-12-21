#alguns exercicios

select descricao from tb_produtos;

select codigo from tb_produtos;

select preco from tb_produtos;

select descricao from tb_marcas;

#Faça a mesma consulta trazendo produtos que possuem ou não marca;
select * from tb_marcas inner join tb_produtos 
where tb_marcas.codmarca = tb_produtos.codmarca != '';

#Faça a mesma consulta trazendo produtos com validade entre janeiro e março de 2019 e que sejam apenas produtos nacionais;
select * from tb_produtos inner join tb_marcas
where tb_produtos.codmarca = tb_marcas.codmarca and tb_produtos.validade > '2019-01-01' and tb_produtos.validade < '2019-03-01' and tb_marcas.nacional = true;

select * from tb_produtos inner join tb_marcas
where tb_produtos.codmarca = tb_marcas.codmarca and tb_produtos.validade > '2019-01-01' and tb_produtos.validade < '2022-03-01' and tb_marcas.nacional = true;

#Faça a mesma consulta trazendo somente produtos que possuem a descrição iniciando com “A”

select * from tb_produtos where descricao like 'a%';

#Atualize em 10% o preço de todos os produtos de somente uma marca de sua escolha. (em apenas um comando).
update tb_produtos set preco = (preco * 1.1)  where codmarca = 2;
select * from tb_produtos;

#comandos básicos

alter table tb_produtos add peso decimal (5,2);

alter table tb_produtos drop validade;

alter table tb_produtos drop foreign key codmarca;

drop table tb_marcas;

drop database estoque;





