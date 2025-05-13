SELECT 
    p.nome AS nome_participante,
    e.nome_evento,
    CASE 
        WHEN (i.status_pagamento) = 'pago' THEN 'Pago'
        WHEN (i.status_pagamento) = 'pendente' THEN 'Pendente'
        WHEN (i.status_pagamento) = 'cancelado' THEN 'Cancelado'
        ELSE 'Desconhecido'
    END AS status_descricao
FROM Inscricoes i
JOIN Participantes p ON i.id_participante = p.id
JOIN Eventos e ON i.id_evento = e.id;


SELECT 
    nome_evento,
    data_inicio,
    data_fim,
    CASE 
        WHEN DATEDIFF(data_fim, data_inicio) = 0 THEN 'Evento de 1 dia'
        WHEN DATEDIFF(data_fim, data_inicio) <= 2 THEN 'Evento de Curta Duração'
        ELSE 'Evento de Longa Duração'
    END AS classificacao_evento
FROM Eventos;


SELECT 
    nome,
    data_inscricao,
    CASE 
        WHEN YEAR(data_inscricao) < 2024 THEN 'Veterano'
        ELSE 'Novo'
    END AS tipo_participante
FROM Participantes;


select 
nome,
cargo,
case 
when cargo = 'diretor' then 'Gestor Principal'
when cargo = 'Coordenador' then 'Coordenacao'
when cargo = 'Supervisor' then 'Coordenacao'
else 'apoio' 
end as funcao
from organizadores;


select 
telefone,
email,
CASE 
        WHEN telefone IS NOT NULL THEN 'WhatsApp'
        WHEN telefone IS NULL AND email IS NOT NULL THEN 'E-mail'
        ELSE 'Sem contato disponível'
    END AS prioridade_contato
FROM Participantes;


select 
nome_evento,
tipo_evento,
case
when tipo_evento = 'Campeonato' then 'Competicao'
when tipo_evento = 'Corrida' then 'Competicao'
when tipo_evento = 'Torneio' then 'Competicao'
when tipo_evento = 'Oficina' then 'Formartivo'
when tipo_evento = 'Curso' then 'Formativo'
when tipo_evento = 'Palestra' then 'Formativo'
else 'Outro'
end as classificacao_tipo
from 
eventos;








