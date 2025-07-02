SELECT*
FROM pedidos;

SELECT* 
FROM produtos;

SELECT* 
FROM clientes;

SELECT*
FROM lojas;


SELECT
    lojas.Loja
    ID_Loja,
    ID_Cliente,
	AVG(pedidos.Receita_Venda) OVER(PARTITION BY lojas.Loja) as Media_por_Loja
FROM pedidos
JOIN lojas	
	ON pedidos.ID_Loja = lojas.ID_Loja;






    
    















