# 2 Updates do trabalho
UPDATE Produto
SET Nome = 'Pastel de Covid (Carne de Morceguinho)'
WHERE idProduto = 12;

UPDATE Clientes
SET Telefone = '(48) 99157-0157'
WHERE idClientes = 2;

# 1 Delete 
DELETE FROM Item_Pedido
WHERE id_Item = 5;

# Consultar pedido com nome do Cliente:
SELECT p.idPedido, c.Nome AS Cliente, p.Status
FROM Pedido p
JOIN Clientes c ON p.Clientes_idClientes = c.idClientes;

# Consultar produtos com nome dos restaurantes:
SELECT pr.Nome AS Produto, pr.Preco, r.Nome AS Restaurante
FROM Produto pr
JOIN Restaurantes r ON pr.Restaurantes_idRestaurantes = r.idRestaurantes;

# Total de Itens por pedido:
SELECT Pedido_idPedido, SUM(Quantidade) AS Total_Itens
FROM Item_Pedido
GROUP BY Pedido_idPedido;

# Total em dinheiro por pedido:
SELECT p.idPedido,
       SUM(ip.Quantidade * pr.Preco) AS Total
FROM Pedido p
JOIN Item_Pedido ip ON p.idPedido = ip.Pedido_idPedido
JOIN Produto pr ON ip.Produto_idProduto = pr.idProduto
GROUP BY p.idPedido;


select * from Produto;
