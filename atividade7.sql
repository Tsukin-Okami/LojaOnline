use `LojaOnline`;

-- 7. Exibir os clientes que fizeram pedidos acima de 250 reais, ordenados pelo nome
SELECT `clientes`.`nome`, `pedidos`.`valor_total` FROM `pedidos` 
INNER JOIN `clientes` ON `pedidos`.`cliente_id` = `clientes`.`id` AND `pedidos`.`valor_total` > 250 
GROUP BY `clientes`.`nome` ORDER BY `pedidos`.`valor_total` ASC;