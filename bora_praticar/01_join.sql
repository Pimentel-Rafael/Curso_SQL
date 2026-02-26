--Qual categoria tem mais produtos vendidos?

SELECT  
        t2.DescCategoriaProduto,
--contando pelo idtransacao quantop transações tem
        count(DISTINCT t1.IdTransacao)

FROM transacao_produto AS t1

LEFT JOIN produtos as t2
ON t1.IdProduto = t2.IdProduto

--agrupando por categoria esse select
GROUP BY t2.DescCategoriaProduto
--ordenando por ordem decrescente 
ORDER BY count(DISTINCT t1.IdTransacao) DESC
