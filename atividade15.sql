use `LojaOnline`;

-- 15. Exibir a soma do valor total de pedidos por mês
SELECT DATE_FORMAT(`data_pedido`, '%Y-%m') AS `mes`, SUM(`valor_total`) AS `valor_total_pedidos` FROM `pedidos` GROUP BY `mes` ORDER BY `mes`;