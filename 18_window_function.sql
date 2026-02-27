--Filtra um período
--Agrupa por dia
--Conta transações distintas
--Calcula acumulado diário
--Retorna organizado por data

WITH

tb_sumario_dias AS (

    SELECT  substr(DtCriacao,1,10) AS dtDia,
            count(DISTINCT IdTransacao) AS qtdeTrasacao

    FROM transacoes

    WHERE DtCriacao >= '2025-08-25'
    AND DtCriacao < '2025-08-30'

    GROUP BY dtDia
)

SELECT  *,
        sum(qtdetrasacao) OVER (ORDER BY dtDia) AS qtdetrasacaoAcum

FROM tb_sumario_dias