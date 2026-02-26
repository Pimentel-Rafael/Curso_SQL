SELECT  t1.*,
        t2.DescDescricaoProduto 

FROM transacao_produto t1

LEFT JOIN produtos AS t2
ON t1.IdProduto = t2.IdProduto

LIMIT 10