--Julio Antonio Ramos Gago
--Insert Into para la Base de Datos Pedidos V2

use pedidosV2; --Usar la Base de Datos pedidos

--Tabla Cliente
INSERT INTO Cliente(nombre, dni) VALUES ('Julio Antonio Ramos Gago', '20965818F'),
                                        ('Ángel Manuel Barragaán Sosa', '02698581T'),
                                        ('Juan Alfredo Rodríguez Carrasco', '08987868G');

--Tabla Articulo
INSERT INTO Articulo(nombre, descripcion, precioActual) VALUES  ('Zapatillas Nike', 'Zapatillas para realizar actividad deportiva', 80),
                                                                ('Sudadera Adidas', 'Sudadera para no pasar frio', 60),
                                                                ('Pantalones Puma', 'Pantalones para hacer ejercicio',45);

--Tabla Pedido
INSERT INTO Pedido(fechaHora, iva, idCliente) VALUES    (CURRENT_TIMESTAMP, 1.21, 1),
                                                        (CURRENT_TIMESTAMP, 1.21, 2),
                                                        (CURRENT_TIMESTAMP, 1.21, 3);

--Tabla LineaPedido
INSERT INTO LineaPedido VALUES  (1,1,2,40),
                                (1,2,2,80),
                                (2,1,1,35),
                                (2,2,3,60)