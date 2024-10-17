use `LojaOnline`;

-- 13. Mostrar os clientes que fizeram pedidos nos últimos 30 dias
SELECT * FROM `pedidos` WHERE 
DATE(`pedidos`.`data_pedido`) >= DATE(CURRENT_DATE) - INTERVAL 30 DAY AND 
DATE(`pedidos`.`data_pedido`) <= DATE(CURRENT_DATE)
ORDER BY `pedidos`.`data_pedido` DESC;