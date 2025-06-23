# Pedidos 
SELECT *
FROM pedidos
ORDER BY Custo_Unit DESC
Limit 10;

# Clientes 
SELECT *
FROM clientes 
ORDER BY Renda_Anual ASC
Limit 10;


# Selecionar cliente solteiros do sexo feminino 

SELECT *
FROM clientes 
WHERE Estado_Civil = "S" AND Sexo = "M";


SELECT *
FROM lojas
WHERE Loja = "Rio de Janeiro" OR loja = "São Paulo";


SELECT* 
FROM lojas
WHERE Num_Funcionarios < "19";

SELECT* 
FROM Locais 
WHERE Região = "Sudeste" OR Região = "Sul"; 

# Contagens 
SELECT
	COUNT(telefone)
FROM clientes;


SELECT 
	COUNT(distinct Estado)
FROM locais;



SELECT
	SUM(Receita_Venda) AS "Soma da Redceita de Venda" ,
    AVG(Receita_Venda) AS "Média da Receita de Venda",
    MIN(Receita_Venda) AS "Menor Receita de Venda",
    MAX(Receita_Venda) AS "Maior receita de Venda"
FROM pedidos;


Select	
	Pedidos.*,
    lojas.loja,
    lojas.Gerente,
    lojas.Telefone
FROM Pedidos
INNER JOIN lojas 
	ON pedidos.ID_Loja = lojas.ID_Loja;
    
    
    select
	  ID_Cliente,
      Count(*)
    from pedidos
    Group by ID_Cliente;
    
    
    
SELECT 
	pedidos.*,
    lojas.Gerente, 
    lojas.telefone 
FROM pedidos
INNER JOIN lojas
	On pedidos.ID_Loja = lojas.ID_Loja;
    
SELECT*
FROM pedidos
WHERE Preco_Unit <> "600"
ORDER BY ID_Pedido ASC;


SELECT
	ID_Loja,
    COUNT(Qtd_Vendida)
FROM pedidos 
GROUP BY ID_Loja;







	



    

    
    

	




