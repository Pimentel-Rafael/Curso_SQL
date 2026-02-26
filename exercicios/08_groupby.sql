-- qual o produto mais pontos transacionado?

SELECT  IdProduto,
        sum(vlProduto * QtdeProduto) AS totaPontos,
        sum(QtdeProduto) AS qtdeVenda

FROM transacao_produto

GROUP BY IdProduto
ORDER BY sum(vlProduto) DESC

LIMIT 1