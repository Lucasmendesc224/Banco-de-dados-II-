
-- Liste todos os diretores e os filmes que eles dirigiram
SELECT d.name AS diretor, m.name AS filme
FROM directors d
LEFT JOIN movies m ON d.id = m.director_id;

 
 -- Liste todos os filmes e seus tickets vendidos

 SELECT m.name AS filme, COUNT(t.id) AS tickets_vendidos
FROM movies m
LEFT JOIN tickets t ON m.id = t.movie_id
GROUP BY m.id;

 
 -- Liste todos os filmes, seus diretores e os tickets vendidos

 select * from 
 movies as m
 join directors as d 
 on d.id = m.director_id
 join tickets as t 
 on m.id = t.movie_id;
 
 -- Liste todos os diretores, incluindo aqueles que não dirigiram nenhum filme
 SELECT m.name AS filme, d.name AS diretor, COUNT(t.id) AS tickets_vendidos
FROM movies m
LEFT JOIN directors d ON m.director_id = d.id
LEFT JOIN tickets t ON m.id = t.movie_id
GROUP BY m.id, d.name;

-- Liste todos os filmes, incluindo aqueles que não têm um diretor associado 
SELECT d.name AS diretor
FROM directors d
LEFT JOIN movies m ON d.id = m.director_id;

-- Liste todos os filmes que têm tickets e seus diretores, incluindo os filmes sem tickets
SELECT m.name AS filme, d.name AS diretor
FROM movies m
LEFT JOIN directors d ON m.director_id = d.id;

-- Liste todos os filmes que têm tickets e seus diretores, incluindo os diretores sem filmes 

SELECT m.name AS filme, d.name AS diretor, COUNT(t.id) AS tickets_vendidos
FROM movies m
LEFT JOIN directors d ON m.director_id = d.id
LEFT JOIN tickets t ON m.id = t.movie_id
GROUP BY m.id, d.name;

-- Liste todos os filmes que não têm tickets e seus diretores 
SELECT m.name AS filme, d.name AS diretor
FROM movies m
LEFT JOIN directors d ON m.director_id = d.id
LEFT JOIN tickets t ON m.id = t.movie_id
WHERE t.id IS NULL;

-- Liste todos os diretores, incluindo aqueles que não dirigiram nenhum filme, e os filmes que têm tickets 

SELECT d.name AS diretor, m.name AS filme, COUNT(t.id) AS tickets_vendidos
FROM directors d
LEFT JOIN movies m ON d.id = m.director_id
LEFT JOIN tickets t ON m.id = t.movie_id
WHERE t.id IS NOT NULL
GROUP BY d.name, m.name;

-- Liste todos os filmes que têm tickets e seus diretores 

SELECT m.name AS filme, d.name AS diretor, COUNT(t.id) AS tickets_vendidos
FROM movies m
LEFT JOIN directors d ON m.director_id = d.id
LEFT JOIN tickets t ON m.id = t.movie_id
WHERE t.id IS NOT NULL
GROUP BY m.id, d.name;

-- Liste todos os filmes e seus diretores, incluindo os filmes sem diretores

SELECT m.name AS filme, d.name AS diretor
FROM movies m
LEFT JOIN directors d ON m.director_id = d.id;





 
 