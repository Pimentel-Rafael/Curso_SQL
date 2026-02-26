--selecionando as colunas relevantes
SELECT  idCliente, 
        dtcriacao,
        qtdePontos

--selecionando a tabela
FROM clientes

--selecionando somente quem tem twitch
WHERE flTwitch = 1

--ordenando de ordem decrecente pela menor data e os que tem mais pontos
ORDER BY dtcriacao ASC, qtdePontos DESC

--fazendo um top 10 usando o LIMIT
LIMIT 10
