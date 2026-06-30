-- Poblado inicial para la tabla despacho
INSERT IGNORE INTO despacho (id_despacho, fecha_despacho, patente_camion, intento, id_compra, direccion_compra, valor_compra, despachado) 
VALUES (1, '2023-11-22', 'AB-CD-12', 1, 2, 'Calle Falsa 123, Valparaíso', 15500, false);
