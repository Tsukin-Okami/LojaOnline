use `LojaOnline`;

-- 10. Obter a média do valor dos pedidos realizados
SELECT AVG(`pedidos`.`valor_total`) AS `media_valor_total_pedidos` FROM `pedidos`;