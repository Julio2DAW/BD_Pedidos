--Julio Antonio Ramos Gago
--Script para crear la Base de Datos Pedidos V1

create database pedidos; --Crear la Base de Datos

use pedidos; --Usar la Base de Datos pedidos

--Crear la Tabla Clientes
create table Clientes(
    idCliente smallint unsigned AUTO_INCREMENT PRIMARY KEY,
    nombre varchar(60) not null,
    dni char(9)
);

--Crear la Tabla Productos
create table Productos(
    idProducto smallint unsigned AUTO_INCREMENT PRIMARY KEY,
    nombre varchar(40) not null,
    descripcion varchar(250) not null,
    precio tinyint not null

);

--Crear la Tabla Pedidos
create table Pedidos(
    idPedido smallint unsigned AUTO_INCREMENT PRIMARY KEY,
    fecha TIMESTAMP DEFAULT NOW(), --Fecha por defecto
    idCliente smallint unsigned not null,
    CONSTRAINT FK_Cliente FOREIGN KEY (idCliente) REFERENCES Clientes(idCliente) --Clave Foránea
);

--Crear la Tabla ProductosPedidos
create table ProductosPedidos(
    idPedido smallint unsigned,
    idProducto smallint unsigned,
    unidades smallint not null,
    PRIMARY KEY(idPedido, idProducto), --Clave Principal Compuesta
    FOREIGN KEY (idPedido) REFERENCES Pedidos(idPedido), --Clave Foránea
    FOREIGN KEY (idProducto) REFERENCES Productos(idProducto) --Clave Foránea
)