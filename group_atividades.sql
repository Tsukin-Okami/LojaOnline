use `LojaOnline`;

-- 1. Selecionar todos os clientes cadastrados
SELECT * FROM `Clientes`;

-- 2. Selecionar todos os pedidos feitos
SELECT * FROM `Pedidos`;

-- 3. Exibir o nome dos clientes e o total de seus pedidos
SELECT `clientes`.`nome`, SUM(`pedidos`.`valor_total`) AS `valor_total_pedidos` FROM `pedidos` 
INNER JOIN `clientes` ON `pedidos`.`cliente_id` = `clientes`.`id` 
GROUP BY `clientes`.`nome`;

-- 4. Selecionar os pedidos com valor acima de 300
SELECT * FROM `pedidos` WHERE `valor_total` > 300;

-- 5. Listar os clientes que têm "Silva" no sobrenome
SELECT * FROM `clientes` WHERE `nome` LIKE '%Silva%';

-- 6. Exibir os pedidos feitos após '2024-07-01' ordenados pelo valor total de forma decrescente
SELECT * FROM `pedidos` WHERE DATE(`pedidos`.`data_pedido`) > DATE('2024-07-01') 
ORDER BY `pedidos`.`valor_total` DESC;

-- 7. Exibir os clientes que fizeram pedidos acima de 250 reais, ordenados pelo nome
SELECT `clientes`.`nome`, `pedidos`.`valor_total` FROM `pedidos` 
INNER JOIN `clientes` ON `pedidos`.`cliente_id` = `clientes`.`id` AND `pedidos`.`valor_total` > 250 
GROUP BY `clientes`.`nome` ORDER BY `pedidos`.`valor_total` ASC;

-- 8. Contar quantos pedidos foram realizados por cada cliente
SELECT `clientes`.`nome`, COUNT(*) AS `pedidos_totais` FROM `pedidos` 
INNER JOIN `clientes` ON `pedidos`.`cliente_id` = `clientes`.`id` 
GROUP BY `pedidos`.`cliente_id`;

-- 9. Calcular o valor total gasto por cada cliente em pedidos
SELECT `clientes`.`nome`, SUM(`pedidos`.`valor_total`) AS `valor_total_gasto` FROM `pedidos` 
INNER JOIN `clientes` ON `pedidos`.`cliente_id` = `clientes`.`id` 
GROUP BY `clientes`.`nome`;

-- 10. Obter a média do valor dos pedidos realizados
SELECT AVG(`pedidos`.`valor_total`) AS `media_valor_total_pedidos` FROM `pedidos`;

-- 11. N/A

-- 12. Exibir todos os pedidos feitos no mês de março de 2024
SELECT * FROM `pedidos` WHERE `data_pedido` > '2024-03-01' AND `data_pedido` < '2024-04-01';

-- 13. Mostrar os clientes que fizeram pedidos nos últimos 30 dias
SELECT * FROM `pedidos` WHERE 
DATE(`pedidos`.`data_pedido`) >= DATE(CURRENT_DATE) - INTERVAL 30 DAY AND 
DATE(`pedidos`.`data_pedido`) <= DATE(CURRENT_DATE)
ORDER BY `pedidos`.`data_pedido` DESC;

-- 14. Exibir os clientes que fizeram mais de 5 pedidos
SELECT `pedidos`.`cliente_id` FROM `pedidos` GROUP BY `pedidos`.`cliente_id` HAVING COUNT(*) > 5;

-- 15. Exibir a soma do valor total de pedidos por mês
SELECT DATE_FORMAT(`data_pedido`, '%Y-%m') AS `mes`, SUM(`valor_total`) AS `valor_total_pedidos` FROM `pedidos` GROUP BY `mes` ORDER BY `mes`;

-- fim