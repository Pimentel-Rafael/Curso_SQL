--qual o valor medio de pontos positivos por dia? 
SELECT  sum(qtdePontos) As TotalPontos,
        count(DISTINCT substr(DtCriacao, 1, 10)) AS qtdeDiasUnicos,
        sum(qtdePontos) / count(DISTINCT substr(DtCriacao, 1, 10)) AS avgpontosdia

FROM transacoes

WHERE qtdePontos > 0


