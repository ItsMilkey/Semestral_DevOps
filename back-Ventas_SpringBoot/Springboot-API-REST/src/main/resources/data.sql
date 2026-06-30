-- Poblado inicial para la tabla venta
INSERT IGNORE INTO venta (id_venta, direccion_compra, valor_compra, fecha_compra, despacho_generado) 
VALUES (1, 'Av. Providencia 1234, Santiago', 45000, '2023-11-20', false);

INSERT IGNORE INTO venta (id_venta, direccion_compra, valor_compra, fecha_compra, despacho_generado) 
VALUES (2, 'Calle Falsa 123, Valparaíso', 15500, '2023-11-21', true);
