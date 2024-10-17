use `LojaOnline`;

-- 8. Contar quantos pedidos foram realizados por cada cliente
SELECT `clientes`.`nome`, COUNT(*) AS `pedidos_totais` FROM `pedidos` 
INNER JOIN `clientes` ON `pedidos`.`cliente_id` = `clientes`.`id` 
GROUP BY `pedidos`.`cliente_id`;