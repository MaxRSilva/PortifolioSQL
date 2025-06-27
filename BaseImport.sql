SELECT*
FROM pedidos;

SELECT* 
FROM produtos;

SELECT* 
FROM clientes;

SELECT*
FROM pedidos
JOIN (SELECT* FROM produtos WHERE Nome_Produto LIKE "%Kit%") as Vendas_De_Kit
	ON pedidos.ID_Produto = Vendas_De_Kit.ID_Produto;
    



















