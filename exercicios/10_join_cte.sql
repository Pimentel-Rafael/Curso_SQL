--como foi a curva de churn do curso de sql?

--maneira menos correta
--SELECT 
--        substr(DtCriacao,1,10) as dtdia,
--        count(DISTINCT idCliente) AS qtdecliente

--FROM transacoes

--WHERE DtCriacao >= '2025-08-25'
--AND DtCriacao < '2025-08-30'

--GROUP BY dtdia

--maneira correta
WITH
tb_clientes_d1 AS (

SELECT DISTINCT idCliente

FROM transacoes

WHERE DtCriacao >= '2025-08-25'
AND DtCriacao < '2025-08-26'
),

tb_join AS(
SELECT 
        substr(t2.DtCriacao,1,10) as dtdia,
        count(DISTINCT t1.idCliente) as qtdecliente,
        1.* count(DISTINCT t1.idCliente) / (SELECT count(*) FROM tb_clientes_d1) AS pctredencao

FROM tb_clientes_d1 AS t1

LEFT JOIN transacoes AS t2
ON t1.idCliente = t2.idCliente

WHERE t2.DtCriacao >= '2025-08-25'
AND t2.DtCriacao < '2025-08-30'

GROUP BY dtdia
)

SELECT * 
FROM tb_join