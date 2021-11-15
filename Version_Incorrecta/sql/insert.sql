--Julio Antonio Ramos Gago
--Insert Into para la Base de Datos Pedidos V1

use pedidos; --Usar la Base de Datos pedidos

--Tabla Clientes
INSERT INTO Clientes(nombre, dni) VALUES    ('Julio Antonio Ramos Gago', '20965818F'),
                                            ('Ángel Manuel Barragaán Sosa', '02698581T'),
                                            ('Juan Alfredo Rodríguez Carrasco', '08987868G');

--Tabla Productos
INSERT INTO Productos(nombre, descripcion, precio) VALUES   ('Zapatillas Nike', 'Zapatillas para realizar actividad deportiva', 80),
                                                            ('Sudadera Adidas', 'Sudadera para no pasar frio', 60),
                                                            ('Pantalones Puma', 'Pantalones para hacer ejercicio',45);

--Tabla Pedidos
INSERT INTO Pedidos(idCliente) VALUES   (1),
                                        (2),
                                        (3);

--Tabla ProductosPedidos
INSERT INTO ProductosPedidos VALUES (1,1,2),
                                    (1,2,2),
                                    (2,1,1),
                                    (2,2,3)