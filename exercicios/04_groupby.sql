-- quantos produtos são de rpg?

SELECT count(*)as qtRpg
FROM produtos
WHERE DescCategoriaProduto = 'rpg'

--uma melhor forma para não ter retrabalho:

SELECT  DescCategoriaProduto,
        count(*) AS QtProdutosPorCat

FROM produtos

GROUP BY DescCategoriaProduto

