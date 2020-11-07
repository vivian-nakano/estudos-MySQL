delete from matriculados
where id_curso = '2';

#deletar vários por vez
delete from matriculados
where carga = 40;

#comando que não é pra fazer, muita atenção 
#truncate table matriculados;
select * from matriculados;