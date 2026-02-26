--somando os ponto negativos e os positivos e separando em colunas em CASE
SELECT 
        sum(qtdePontos),
        sum(CASE
            WHEN qtdePontos > 0 THEN qtdePontos
        END) AS qtdePontosPos,

        sum(CASE
            WHEN qtdePontos < 0 THEN qtdePontos
        END) AS qtdePontosNeg

FROM transacoes

WHERE DtCriacao >= '2025-07-01'
AND DtCriacao < '2025-08-01'
