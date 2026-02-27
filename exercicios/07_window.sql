--Qual o dia da semana mais ativo de cada usuário?

WITH 

tb_cliente_semana AS (

SELECT  idCliente,
        strftime('%w', substr(DtCriacao,1,10)) AS dtDiaSemana,
        count(DISTINCT IdTransacao) AS qttransacao

FROM transacoes

GROUP BY idCliente, dtDiaSemana
)

SELECT *

FROM tb_cliente_semana