select count(*)
from movies; -- = 5

select count(*)
from directors; -- = 5
-- Produto cartesiano(Cross Join)
select *
from movies as m, directors as d;



-- Junção natural
select *
from movies as m, directors as d
where d.id = m.director_id
 and m.director_id = 1;

select *
from movies as m join directors as d 
on d.id = m.director_id
where m.director_id = 1;

-- Exemplos de LEFT JOIN
select *
from movies as m 
right join directors as d on d.id = m.director_id;

-- Liste todos os diretores, incluindo aqueles que não dirigiram nenhum filme

select *
from directors;

-- Liste todos os filmes, incluindo aqueles que não têm um diretor associado

select *
from directors;

-- Liste todos os filmes que têm tickets e seus diretores, incluindo os filmes sem tickets

select *
from movies as m 
right join directors as d on d.id = m.director_id;

