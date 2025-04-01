use clinica;

select *
from medicos;

select distinct especialidade 
from medicos;

-- exemplo de count 
select count(*)
from medicos
where especialidade = 'ortopedia';

select nome, idade
from medicos
order by nome asc;

 -- exemplo de like 
 select *
 from medicos
 where nome like 'M%';
 
 -- exemplo de between
 select *
 from medicos
 where idade between 30 and 40;
 
 select *
 from medicos 
 where idade >= 30 and idade <=40;
 
 
 -- exemplo de IN 
 select *
 from medicos
 where especialidade in ('ortopedia', 'neurologia');
 
 select *
 from medicos
 where especialidade = 'ortopedia' or 
	   especialidade = 'neurologia'; 
 
 
 