-- Julio Antonio Ramos Gago
-- Consultas de la Base de Datos Pedidos V2

-- Precio del producto más caro
-- (Probar MAX)
SELECT nombre, MAX(precioActual)
	FROM articulo

-- Precio del producto más barato 
-- (Probar MIN)
SELECT nombre, MIN(precioActual) 
	FROM articulo

-- Precio medio de todos los artículos
-- (Probar AVG)
SELECT AVG(precioActual)
	FROM articulo

-- Cuantos productos hay disponible para vender
-- (Probar COUNT)
SELECT COUNT(*)
	FROM articulo

-- Cambiar precio del primer producto
-- (Probar UPDATE para cambiar el valor del producto, sin porcentaje)
UPDATE articulo
	SET precioActual = 100
	WHERE referencia = 1

-- Aplicar un descuento del 20% al producto actualizado en la tabla anterior
-- (Probar UPDATE para aplicar un descuento con porcentaje)
UPDATE articulo
	SET precioActual = precioActual * 0.80
    WHERE referencia = 1

-- Aumentar el precio del producto con referencia 2 en un 40%
-- (Probar UPDATE para aplicar una subida con porcentaje )
UPDATE articulo
	SET precioActual = precioActual * 1.40
	WHERE referencia = 2

-- Sacar el nombre del cliente, dni, fechaHora del pedido, unidades, precioVenta y el nombre del articulo
-- (Probar INNER JOIN)
SELECT cliente.nombre, dni, fechaHora, unidades, precioVenta,articulo.nombre
	FROM cliente
    	INNER JOIN pedido ON cliente.idCliente = pedido.idCliente
        INNER JOIN lineapedido ON pedido.numPedido = lineapedido.numPedido
        INNER JOIN articulo ON lineapedido.referenciaArticulo = articulo.referencia

-- Sacar cuantas personas han comprado las "Zapatillas Nike"
-- (Probar COUNT, INNER JOIN, WHERE)
SELECT COUNT(cliente.idCliente)
	FROM cliente
    	INNER JOIN pedido ON cliente.idCliente = pedido.idCliente
        INNER JOIN lineapedido ON pedido.numPedido = lineapedido.numPedido
        INNER JOIN articulo ON lineapedido.referenciaArticulo = articulo.referencia
    WHERE articulo.nombre = "Zapatillas Nike"

-- Sacar cuanto se ha gastado por pedido cada cliente en un producto
-- (Probar alias y multiplicación de campos con formato numérico)
SELECT cliente.nombre, articulo.nombre, unidades, precioVenta, (unidades * precioVenta) as Total
	FROM cliente
    	INNER JOIN pedido ON cliente.idCliente = pedido.idCliente
        INNER JOIN lineapedido ON pedido.numPedido = lineapedido.numPedido
        INNER JOIN articulo ON lineapedido.referenciaArticulo = articulo.referencia
