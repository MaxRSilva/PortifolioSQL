SELECT* FROM pedidos;
SELECT* FROM lojas; 

SELECT 
	pedidos.*,
    lojas.Loja,
    lojas.Gerente,
    lojas.Num_Funcionarios
FROM pedidos
INNER JOIN lojas
	ON pedidos.ID_Loja = lojas.ID_Loja
ORDER BY Gerente ASC;

SELECT * FROM produtos; SELECT * FROM lojas;

SELECT
	pedidos.*,
    Produtos.Nome_Produto,
    Produtos.Marca_produto
FROM pedidos 
INNER JOIN produtos 
	ON pedidos.ID_Produto = produtos.ID_Produto;
    
    
    
    SELECT* FROM clientes; SELECT* FROM pedidos;
    
    
SELECT
	 clientes.Sexo,
     COUNT(DISTINCT pedidos.ID_Cliente) AS Qtd_Clientes
	FROM pedidos
INNER JOIN clientes
	ON pedidos.ID_Cliente = clientes.ID_Cliente
INNER JOIN produtos 
	ON Pedidos.ID_Produto = produtos.ID_Produto
WHERE produtos.Nome_Produto = "Nome do produto"
group by clientes.sexo;



        
    
    
    






    
    