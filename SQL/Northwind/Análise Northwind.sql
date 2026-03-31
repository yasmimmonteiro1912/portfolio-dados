-- 1. Análise de produtos 
SELECT ProductName as Nome_Produto, UnitPrice as Preço, 'NorthWind' as Empresa  FROM Product;

-- 2. Filtros de estoque 

SELECT ProductName as nome_produto, UnitPrice as preco_produto FROM Product 
WHERE UnitPrice > 50 and UnitsInStock < 10
ORDER BY UnitPrice desc;

-- 3. Estatísticas Gerais 
SELECT COUNT(*) as Qtd_produtos, AVG(UnitPrice) as media_preco FROM Product;

-- 4. Receita por categoria 
SELECT c.CategoryName, COUNT(*) as Qtd_produtos, AVG(UnitPrice) as media_preco FROM Product p
JOIN Category c 
ON p.CategoryId = c.Id 
GROUP BY c.CategoryName
ORDER BY media_preco desc;

-- 5. Receita Total
SELECT 
    SUM(UnitPrice * Quantity * (1 - Discount)) AS receita_total
FROM OrderDetail;

-- 6. Receita por categoria
SELECT 
    c.CategoryName,
    SUM(od.UnitPrice * od.Quantity * (1 - od.Discount)) AS receita
FROM OrderDetail od
JOIN Product p ON od.ProductId = p.Id
JOIN Category c ON p.CategoryId = c.Id
GROUP BY c.CategoryName
ORDER BY receita DESC;

-- 7. Top 5 produtos mais vendidos
SELECT 
    p.ProductName,
    SUM(od.Quantity) AS total_vendido
FROM OrderDetail od
JOIN Product p ON od.ProductId = p.Id
GROUP BY p.ProductName
ORDER BY total_vendido DESC
LIMIT 5;

-- 8. Ticket Médio
SELECT 
    AVG(total_pedido) AS ticket_medio
FROM (
    SELECT 
        OrderId,
        SUM(UnitPrice * Quantity * (1 - Discount)) AS total_pedido
    FROM OrderDetail
    GROUP BY OrderId
) t;

