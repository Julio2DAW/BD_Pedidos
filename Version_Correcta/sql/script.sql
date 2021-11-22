--Julio Antonio Ramos Gago
--Script para crear la Base de Datos Pedidos V2

create database pedidosV2; --Crear la Base de Datos

use pedidosV2; --Usar la Base de Datos pedidos

--Crear la Tabla Cliente
create table Cliente(
    idCliente smallint unsigned AUTO_INCREMENT PRIMARY KEY,
    nombre varchar(60) not null,
    dni char(9)
);

--Crear la Tabla Articulo
create table Articulo(
    referencia smallint unsigned AUTO_INCREMENT PRIMARY KEY,
    nombre varchar(40) not null,
    descripcion varchar(250) not null,
    precioActual tinyint not null
);

--Crear la Tabla Pedido
create table Pedido(
    numPedido smallint unsigned AUTO_INCREMENT PRIMARY KEY,
    fechaHora datetime not null,
    iva smallint not null,
    baseImponible smallint,
    idCliente smallint unsigned not null,
    CONSTRAINT FK_Cliente FOREIGN KEY (idCliente) REFERENCES Cliente(idCliente) --Clave Foránea
);

--Crear la Tabla LineaPedido
create table LineaPedido(
    numPedido smallint unsigned,
    referenciaArticulo smallint unsigned,
    unidades smallint not null,
    precioVenta smallint not null,
    PRIMARY KEY(numPedido, referenciaArticulo), --Clave Principal Compuesta
    FOREIGN KEY (numPedido) REFERENCES Pedido(numPedido), --Clave Foránea
    FOREIGN KEY (referenciaArticulo) REFERENCES Articulo(referencia) --Clave Foránea
)