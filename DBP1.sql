DROP DATABASE sic;
CREATE DATABASE P1;
USE sic;
CREATE TABLE factura
(
	id_factura VARCHAR(5) PRIMARY KEY,
    nombre_cliente VARCHAR(60),
    tipo_factura VARCHAR(1),
    estatus_factura VARCHAR(1),
    FOREIGN KEY (tipo_factura) REFERENCES facturacion(tipo_factura),
    FOREIGN KEY (nombre_cliente) REFERENCES cliente(nombre_cliente)
) ENGINE=INNODB DEFAULT CHARSET=latin1;
CREATE TABLE facturacion
(
	id_facturacion VARCHAR(5) PRIMARY KEY,
    tipo_factura VARCHAR(60),
    clave_credito VARCHAR(1)
) ENGINE=INNODB DEFAULT CHARSET=latin1;
CREATE TABLE cliente
(
	id_cliente VARCHAR(5) PRIMARY KEY,
    nombre_cliente VARCHAR(60),
    telefono_cliente VARCHAR(1),
    direccion_cliente VARCHAR(100)
) ENGINE=INNODB DEFAULT CHARSET=latin1;
CREATE TABLE productos
(
	id_producto VARCHAR(18) PRIMARY KEY,
    nombre_producto VARCHAR(60),
    precio_producto VARCHAR(60),
    existencia_producto FLOAT(10,2),
    estatus_producto VARCHAR(1)
) ENGINE=INNODB DEFAULT CHARSET=latin1;
CREATE TABLE cobradores
(
	id_cobrador VARCHAR(5) PRIMARY KEY,
    nombre_cobrador VARCHAR(18),
    nombre_area VARCHAR(100),
	FOREIGN KEY (nombre_area) REFERENCES areas(nombre_area)
) ENGINE=INNODB DEFAULT CHARSET=latin1;
CREATE TABLE areas
(
	id_area VARCHAR(5) PRIMARY KEY,
    nombre_area VARCHAR(100)
) ENGINE=INNODB DEFAULT CHARSET=latin1;
CREATE TABLE vendedor
(
	id_vendedor VARCHAR(5) PRIMARY KEY,
    nombre_vendedor VARCHAR(60),
    nombre_area VARCHAR(60),
    FOREIGN KEY (nombre_area) REFERENCES areas(nombre_area)
) ENGINE=INNODB DEFAULT CHARSET=latin1;
CREATE TABLE proveedores
(
	id_proveedor VARCHAR(5) PRIMARY KEY,
    nombre_proveedor VARCHAR(60),
    direccion_proveedor VARCHAR(60),
    telefono_proveedor VARCHAR(50)
) ENGINE=INNODB DEFAULT CHARSET=latin1;
CREATE TABLE pedidos
(
	id_pedido VARCHAR(5) PRIMARY KEY,
    id_factura VARCHAR(60),
    id_cliente VARCHAR(60),
    id_producto VARCHAR(50),
    FOREIGN KEY (id_factura) REFERENCES facturacion(id_factura),
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
    FOREIGN KEY (id_producto) REFERENCES producto(id_producto)
) ENGINE=INNODB DEFAULT CHARSET=latin1;
CREATE TABLE ventas
(
	id_venta VARCHAR(5) PRIMARY KEY,
    id_factura VARCHAR(60),
    FOREIGN KEY (id_factura) REFERENCES facturacion(id_factura)
) ENGINE=INNODB DEFAULT CHARSET=latin1;
CREATE TABLE compras
(
	id_compra VARCHAR(5) PRIMARY KEY,
    id_proveedor VARCHAR(60),
    nombre_producto VARCHAR(100),
    FOREIGN KEY (id_proveedor) REFERENCES proveedores(id_proveedor)
) ENGINE=INNODB DEFAULT CHARSET=latin1;
CREATE TABLE cobro
(
	id_cobro VARCHAR(5) PRIMARY KEY,
    id_cliente VARCHAR(1),
    monto_cobro VARCHAR(60),
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
) ENGINE=INNODB DEFAULT CHARSET=latin1;