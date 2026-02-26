--clientes mais antigos tem mais frequancia de transação?

SELECT  t1.idCliente,
        julianday('now') - julianday(substr(t1.DtCriacao, 1, 19)) AS idadeBase,
        count(t2.IdTransacao) AS qtTranscoes

FROM clientes as t1

LEFT JOIN transacoes AS t2
ON t1.idCliente = t2.idCliente

GROUP BY t1.idCliente, idadeBase
