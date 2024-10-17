use `LojaOnline`;

-- 14. Exibir os clientes que fizeram mais de 5 pedidos
SELECT `pedidos`.`cliente_id` FROM `pedidos` GROUP BY `pedidos`.`cliente_id` HAVING COUNT(*) > 5;