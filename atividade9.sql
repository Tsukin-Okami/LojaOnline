use `LojaOnline`;

-- 9. Calcular o valor total gasto por cada cliente em pedidos
SELECT `clientes`.`nome`, SUM(`pedidos`.`valor_total`) 
AS `valor_total_gasto` FROM `pedidos` 
INNER JOIN `clientes` ON `pedidos`.`cliente_id` = `clientes`.`id` 
GROUP BY `clientes`.`nome`;