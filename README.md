# 🧠 Estudos SQL – Consultas e Manipulação de Dados

Este repositório contém meus estudos práticos com SQL, utilizando **bases de dados simuladas** para treinar comandos essenciais em **consultas**, **filtros**, **junções** e **funções agregadas**.

---

## 📂 Estrutura do Repositório

## 🛠️ Tópicos Abordados

- `SELECT` simples e com múltiplas condições
- Filtros com `WHERE`, `AND`, `OR`, `IN`, `BETWEEN`
- Ordenações com `ORDER BY ASC/DESC`
- Limitação de resultados com `LIMIT`
- Agrupamentos com `GROUP BY`
- Contagens com `COUNT()`
- Médias com `AVG()`
- Junções entre tabelas com `JOIN` e `LEFT JOIN`

---

## 📘 Exemplos de Consultas

```sql
-- Clientes ordenados pela renda anual (crescente)
SELECT * 
FROM clientes 
ORDER BY Renda_Anual ASC 
LIMIT 10;

-- Clientes solteiros do sexo feminino
SELECT * 
FROM clientes 
WHERE Estado_Civil = 'S' AND Sexo = 'M';

-- Contagem de telefones cadastrados
SELECT COUNT(telefone) 
FROM clientes;


🎯 Objetivo
Este projeto foi criado para fixação de conceitos em SQL, com foco em análise de dados relacionais. As consultas foram elaboradas com bases simuladas, organizadas por temas (clientes, lojas, produtos, pedidos, etc.).

👨‍💻 Autor
Max Ramon da Silva
[🔗 LinkedIn](https://www.linkedin.com/in/max-ramon-a253141a4)  
[🔗 GitHub](https://github.com/MaxRSilva)
