--Quantidade de usuarios cadastrados (absoluto e acumulado) ao longo do tempo?

WITH 

tb_dia_cliente AS (

    SELECT  substr(DtCriacao,1,10) AS dtDia,
            count(DISTINCT idCliente) AS qtCliente

    FROM clientes

    GROUP BY dtDia

),

tb_acum AS (

    SELECT  *,
            sum(qtCliente) OVER (ORDER BY dtDia) AS atClienteAcum

    FROM tb_dia_cliente

)

SELECT *

FROM tb_acum

ORDER BY dtDia

