--quais cliente mais perderam pontos por lover?

SELECT  t1.idCliente,
         sum(t1.qtdePontos) AS totalPontos

FROM transacoes AS t1

LEFT JOIN transacao_produto AS t2
ON t1.IdTransacao = t2.IdTransacao

LEFT JOIN produtos AS t3
ON t2.IdProduto = t3.IdProduto

WHERE t3.DescCategoriaProduto = 'lovers'

GROUP BY t1.IdCliente
ORDER BY totalPontos ASC

LIMIT 5