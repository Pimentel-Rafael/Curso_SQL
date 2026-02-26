-- qual o dia com maior engajamento de cada aluno que iniciou o curso dia 01?

WITH 

aluno_dia01 AS (
    SELECT DISTINCT idCliente

    FROM transacoes

    WHERE substr(DtCriacao,1,10) = '2025-08-25'
),

tb_dia_cliente AS (
    SELECT t1.idCliente,
            substr(t2.DtCriacao,1,10) AS dtdia,
            count(*) AS qtinteracoes

    FROM aluno_dia01 AS t1

    LEFT JOIN transacoes AS t2
    ON t1.idCliente = t2.idCliente
    AND t2.DtCriacao >= '2025-08-25'
    AND t2.DtCriacao < '2025-08-30'

    GROUP BY t1.idCliente, dtdia
    ORDER BY t1.idCliente, dtdia
),

max_inter AS (
    SELECT  idCliente,
            max(qtinteracoes) as maxinter

    FROM tb_dia_cliente
    GROUP BY idCliente
)