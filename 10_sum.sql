--somando uma coluna
SELECT sum(qtdePontos)

FROM transacoes

--condoções, quero saber só o quanto ganharam de pontos em julho
--não a transação tem que ser maior que zero
WHERE DtCriacao >= '2025-07-01'
AND DtCriacao < '2025-08-01'
AND qtdePontos > 0
