--agrupando pela caracteristica, nesse caso id produto
SELECT IdProduto,
        count(*)

FROM transacao_produto

--agrupar por id produto:
GROUP BY IdProduto