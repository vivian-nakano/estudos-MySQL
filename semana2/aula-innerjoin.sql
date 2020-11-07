use relacional_db;

select * from carro;
select * from pessoa;

insert into pessoa values 
	(1, "Julia"),
    (2, "Marcio");

insert into carro values (1, "Fiat", "2019", 2);

#juncao interna/selecione todos os dados da tabela carro, juntando tabela pessoa onde os ids são iguais
select * from carro
inner join pessoa 
where carro.Pessoa_id_pessoa = pessoa.id_pessoa;