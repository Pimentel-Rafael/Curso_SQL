--selecione doas as colunas
SELECT *
--da tabela produtos
FROM produtos
--onde a categoria seja = a 'rpg'
--aspas simples é usado para acessar um valor de um campo
WHERE DescCategoriaProduto = 'rpg'
--limitando a 10 linhas
LIMIT 10
