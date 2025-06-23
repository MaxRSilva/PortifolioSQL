SELECT
	sexo, 
    count(ID_CLIENTE) AS "Contagem de Clientes por Sexo"
FROM clientes 
GROUP BY sexo;

SELECT
	Marca_Produto,
    COUNT(Nome_Produto) AS "Venda por Marca"
FROM produtos
GROUP BY Marca_Produto;


SELECT
	ID_Loja, 
    SUM(Custo_Venda) AS "Custo Total",
    SUM(Receita_Venda) As "Receita Total"
FROM pedidos
GROUP BY ID_Loja
ORDER BY ID_Loja ASC;

