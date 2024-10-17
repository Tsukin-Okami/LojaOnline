use `LojaOnline`;

-- 6. Exibir os pedidos feitos após '2024-07-01' ordenados pelo valor total de forma decrescente
SELECT * FROM `pedidos` WHERE `data_pedido` > '2024-07-01' ORDER BY `valor_total` DESC;