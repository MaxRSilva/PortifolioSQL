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


#SUBCONSULTA 

SELECT
	Empregados_Letra_A.Nome,
    Empregados_Letra_A.Escolaridade,
    Pedidos.ID_Produto,
    Nome_Produto
FROM pedidos 
JOIN(SELECT * FROM clientes WHERE Nome LIKE "A%") as Empregados_Letra_A
	ON pedidos.ID_Cliente = Empregados_Letra_A.ID_Cliente
JOIN produtos
	ON pedidos.ID_Produto =  produtos.ID_Produto;
    
    
SELECT*
FROM pedidos
JOIN (SELECT* FROM produtos WHERE Nome_Produto LIKE "%Kit%") as Vendas_De_Kit
	ON pedidos.ID_Produto = Vendas_De_Kit.ID_Produto;
    
    
CREATE TABLE Vendas_Analise AS

WITH
produtos_Com_M AS (Select* FROM produtos WHERE Nome_Produto LIKE "M%"),
produtos_Webcam AS (Select* FROM produtos WHERE Nome_Produto LIKE "Webcam%")

SELECT*
FROM produtos_Com_M

UNION ALL 

SELECT*
FROM produtos_Webcam;


SELECT*
FROM Vendas_Analise;


SELECT*
FROM pedidos	
 JOIN Vendas_Analise 
	ON Pedidos.ID_Produto = Vendas_Analise.ID_Produto;
    
SELECT*
FROM pedidos 
JOIN produtos
	ON pedidos.ID_Produto =  produtos.ID_Produto;
    
    
SELECT
	Marca_Produto,
	COUNT(pedidos.Qtd_Vendida) as "Quantidade_Por_Marca"
FROM pedidos
JOIN produtos
	ON pedidos.ID_Produto = produtos.ID_Produto
GROUP BY Marca_Produto;











