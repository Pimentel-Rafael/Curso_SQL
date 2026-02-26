--isso não modifica nada no banco, é so uma consulta com uma equação
SELECT  idCliente,
        --QtdePontos,
        --QtdePontos + 10 AS QtdePontosPlus10,
        --QtdePontos * 2 AS tdePontosVezes2,
        DtCriacao,
        datetime(substr(DtCriacao, 1, 19)) AS DATA,
        strftime('%w', datetime(substr(DtCriacao, 1, 19))) as diasemana

FROM clientes

LIMIT 5