-- Revisão para a prova

--  Contar o número total de clientes
select count(*)
from clientes;

-- Contar o número total de pedidos
select count(*)
from pedidos;

--  Calcular o valor total de todos os pedidos
SELECT sum(quantidade * preco)
from pedidos as pe 
join produtos as pr on pr.id = pe.produto_id;

--  Calcular a média de preço dos produtos
select avg(preco)
from produtos;

--  Listar todos os clientes e seus pedidos
select *
from clientes as cl 
join pedidos as pe on cliente_id = pe.id;

--  Listar todos os pedidos e seus produtos, incluindo pedidos sem produtos
select * 
from pedidos as pe 
left join produtos as pr on pe.produto_id = pr.id

--  Listar os produtos mais caros primeiro


--  Listar os produtos com menor estoque

--  Contar quantos pedidos foram feitos por cliente

--  Contar quantos produtos diferentes foram vendidos

--  Mostrar os clientes que não realizaram pedidos

--  Mostrar os produtos que nunca foram vendidos

--  Contar o número de pedidos feitos por dia
