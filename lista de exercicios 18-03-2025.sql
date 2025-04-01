use clinica;
-- 02 - Buscar todos os dados das consultas marcadas no período da tarde após o dia 19/06/2006

select *
from consultas
where data >= '2006-06-19'
and hora between '12:00:00' and '18:00:00';

-- 04 - Buscar a hora das consultas marcadas antes do dia 14/06/2006 e depois do dia 20/06/2006

select *
from consultas
where data between '2006-06-14' and '2006-06-20';

-- 06 - Em quais cidades residem os funcionários?

select cidade 
from funcionarios 

-- 10 - Qual o horário da última consulta marcada para o dia 13/06/2006?

select data
from consultas 
order by hora desc;

-- 12 - Buscar o código, o nome e o salário líquido dos funcionários. O salário líquido é obtido pela diferença entre o salário cadastrado menos 20% deste mesmo salário

select codf, nome, salario * 0.8 AS salario_liquido
from funcionarios;

-- 14 - Buscar o nome e CPF dos funcionários que não possuam a seqüência “00000” em seus CPFs
select cpf
from funcionarios
where cpf NOT like '%00000';

-- 16 - Buscar os códigos e nomes dos pacientes com mais de 25 anos que estão com tendinite, fratura, gripe e sarampo 

select codp, nome, doenca
from pacientes 
where idade>= 25 and doenca in ('tendinite', 'fratura', 'gripe', ' sarampo'); 




