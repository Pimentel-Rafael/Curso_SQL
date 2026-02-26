--selecione produtos que contem 'churn' no nome

SELECT * 

FROM produtos

--USANDO LIKE--------------------------------------------
--o like é o coringa (pega uma string e compara com o quem vc declara no comando), e o % é qualquer coisa
--PROBLEMA- o like é muito custoso, usa mto processamento

--WHERE DescNomeProduto LIKE 'churn%'

--USANDO IN--------------------------------------------
--WHERE DescNomeProduto in ('Churn_10pp', 'Churn_2pp', 'Churn_5pp')

--MELHOR FORMA--------------------------------------------
--em um abientente organizado, usando a categoria

WHERE DescCategoriaProduto = 'churn_model'


