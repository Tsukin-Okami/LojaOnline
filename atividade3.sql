use `LojaOnline`;

-- 3. Exibir o nome dos clientes e o total de seus pedidos
SELECT `clientes`.`nome`, SUM(`pedidos`.`valor_total`) 
AS `valor_total_pedidos` FROM `pedidos` 
INNER JOIN `clientes` ON `pedidos`.`cliente_id` = `clientes`.`id` 
GROUP BY `clientes`.`nome`;