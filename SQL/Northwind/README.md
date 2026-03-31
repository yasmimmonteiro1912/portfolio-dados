# Northwind - Análise Comercial com SQL 📊

## 📌 Sobre o Projeto
Este projeto apresenta uma análise exploratória e estratégica do banco de dados **Northwind**, um cenário clássico de ERP que simula as operações de uma empresa de exportação e importação de alimentos. O objetivo foi extrair métricas fundamentais para o acompanhamento de performance comercial e gestão de estoque.

## 🛠️ Tecnologias e Conceitos Aplicados
* **Linguagem:** SQL (MySQL/SQLite)
* **Principais Comandos:** `SELECT`, `JOIN`, `GROUP BY`, `ORDER BY`, `LIMIT`.
* **Conceitos Avançados:** Funções de Agregação (`SUM`, `AVG`, `COUNT`), Cálculos com Descontos, Subqueries e Análise de Ticket Médio.

## 📊 Indicadores Extraídos (KPIs)

Abaixo estão as principais análises realizadas no script `queries_analiticas.sql`:

1.  **Monitoramento de Inventário Crítico:** Identificação de produtos de alto valor unitário (> 50) com baixo nível de estoque (< 10 unidades).
2.  **Performance por Categoria:** Agrupamento de produtos por categoria para análise de preço médio e volume de itens.
3.  **Análise de Receita Real:** Cálculo do faturamento total considerando a fórmula: `Preço Unitário * Quantidade * (1 - Desconto)`.
4.  **Market Share Interno:** Ranking das categorias de produtos que mais geram receita para a companhia.
5.  **Top 5 Best Sellers:** Identificação dos produtos com maior volume de saída.
6.  **Ticket Médio por Pedido:** Utilização de subquery para calcular o valor médio gasto por cada ordem de venda.

## 📁 Estrutura dos Arquivos
* `queries_analiticas.sql`: Script contendo todas as consultas desenvolvidas.
* `README.md`: Documentação técnica e de negócio.

---
*Projeto desenvolvido como parte do meu portfólio de análise de dados.*
