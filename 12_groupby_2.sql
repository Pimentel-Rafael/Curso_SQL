--sumarise os clientes informando o tatl de pontos que ele tem e 
--quantas transações ele fez, tudo isso no mês de julho
SELECT  idCliente,
        sum(qtdePontos),
        count(IdTransacao)

FROM transacoes

WHERE DtCriacao >= '2025-07-01'
AND DtCriacao < '2025-08-01'

GROUP BY idCliente
--depois que eu agrupeitu tudo , eu filtro o having, filtro do filtro
HAVING sum(qtdePontos) >= 4000

ORDER BY sum(qtdePontos) DESC

--fazendo um top 10 usando LIMIT
LIMIT 10