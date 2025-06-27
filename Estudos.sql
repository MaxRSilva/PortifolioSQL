SELECT * FROM clientes WHERE Qtd_Filhos = 0 ORDER BY Nome ASC;
SELECT * FROM Lojas WHERE ID_Loja <= 6  ORDER BY NUM_Funcionarios ASC;
SELECT * FROM produtos WHERE Marca_Produto = "DELL" ORDER BY Preco_Unit ASC;
SELECT * FROM locais WHERE Região = "Sudeste" and Estado = "RJ"  ORDER BY Cidade ASC;
SELECT  
	ID_Pedido, 	
	Data_Venda,
    Receita_Venda,
    Custo_Venda
FROM pedidos
WHERE Custo_Venda > '90'
ORDER BY Data_Venda ASC;

SELECT 
	Nome,
    Sobrenome,
    Email,
    Renda_Anual,
    Escolaridade
FROM clientes
WHERE Renda_Anual >= "50000"
ORDER BY Renda_Anual DESC;

SELECT 
	COUNT(Nome)
FROM clientes;



SELECT 
	ID_Cliente,
	SUM(Receita_Venda) as  Total_Receita
FROM pedidos
GROUP BY ID_Cliente
HAVING SUM(Receita_Venda) > 300;



SELECT 
	Marca_Produto,
    SUM(Preco_Unit) as Soma_Valor
FROM produtos 
GROUP BY Marca_Produto
HAVING SUM(Preco_Unit) > 2000;

SELECT 
	ID_Loja,
	SUM(Receita_Venda) as  Soma_Receita
FROM pedidos
GROUP BY ID_Loja
HAVING SUM(Receita_Venda) > 900
ORDER BY ID_Loja ASC; 




SELECT DISTINCT Nome, Qtd_Filhos, Escolaridade  
FROM clientes
WHERE Escolaridade = "Parcial";



SELECT DISTINCT Cidade, Estado, Região
FROM locais
WHERE Região = "Sudeste" AND Estado = "RJ";


SELECT 
	Marca_produto,
	SUM(Preco_Unit) AS "Total" 
FROM produtos
GROUP BY Marca_Produto
HAVING SUM(Preco_Unit) > 100;



SELECT DISTINCT ID_Loja, ID_Cliente, Custo_Venda
FROM pedidos
WHERE Custo_Venda = 129.5;


SELECT
	Nome_Produto,
	SUM(Custo_Unit) as "Soma_Custo_Unit"
FROM produtos
GROUP BY Nome_Produto
HAVING SUM(Custo_Unit) > 0
ORDER BY SUM(Custo_Unit) ASC;

SELECT
	Marca_Produto,
    SUM(pedidos.Receita_Venda) as "Soma Receita Venda"
FROM produtos	
LEFT JOIN pedidos
	ON produtos.ID_Produto = pedidos.ID_Produto
GROUP BY Marca_Produto;







