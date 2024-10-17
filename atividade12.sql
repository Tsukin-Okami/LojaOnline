use `LojaOnline`;

-- 12. Exibir todos os pedidos feitos no mês de março de 2024
SELECT * FROM `pedidos` WHERE `data_pedido` > '2024-03-01' AND `data_pedido` < '2024-04-01';