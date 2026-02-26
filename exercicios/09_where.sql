--listar todas as transações adicionando uma coluna nova sinalizando
--"alto", "medio", "baixo" para o valor dos pontos [<10 ; <500 ; >=500]

SELECT  IdTransacao,
        qtdePontos,
        CASE 
            WHEN qtdePontos < 10 THEN 'Baixo'
            WHEN qtdePontos < 500 THEN 'Médio'
            ELSE 'Alto'
        END AS flQtdePontos

FROM transacoes

ORDER BY qtdePontos DESC