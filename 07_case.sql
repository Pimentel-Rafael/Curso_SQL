--intervalos
--  0 a 500           -> Ponei
--  501 a 1000        -> Ponei Premium
--  1001 a 5000       -> Mago Aprendiz
--  5001 a 10000      -> Mago Mestre
--  +10001            -> Mago Supremo


SELECT  idCliente,
        qtdePontos,
        CASE
            WHEN qtdePontos <= 500 THEN 'Ponei'
            WHEN qtdePontos <=1000 THEN 'Ponei Premium'
            WHEN qtdePontos <= 5000 THEN 'Mago Aprendiz'
            WHEN qtdePontos <= 10000 THEN 'Mago Mestre'
            ELSE 'Mago Supremo'
        END AS NomeGrupo,

        CASE
            WHEN qtdePontos <= 1000 THEN 1
            ELSE 0
        END AS flPonei,

        CASE
            WHEN qtdePontos > 1000 THEN 1
            ELSE 0
        END AS flMago

FROM clientes

ORDER BY qtdePontos DESC


