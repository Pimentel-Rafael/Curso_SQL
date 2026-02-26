--avg calcula  amedia das linhas
SELECT  avg(qtdePontos) as media,
        sum(qtdePontos) / count(idCliente) AS mediaroots,
        min(qtdePontos) AS menorpontuacao,
        max(qtdePontos) as maiorpontuacao,
        sum(flTwitch) AS qtpessoatwit,
        sum(flEmail) as qtpessoastwit

FROM clientes