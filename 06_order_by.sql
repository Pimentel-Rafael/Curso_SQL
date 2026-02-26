--selecionando as colunas relevantes
SELECT  idCliente, 
        qtdePontos

--selecionando a tabela
FROM clientes

--ordenando de m decrecente pela coluna qtdePontos
ORDER BY qtdePontos DESC

--ordenando de orde crecente pela coluna qtdePontos
--ORDER BY qtdePontos 

--fazendo um top 10 usando o LIMIT
LIMIT 10
