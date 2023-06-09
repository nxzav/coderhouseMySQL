-- Creación de Schema
DROP SCHEMA IF EXISTS SUPPLY;
CREATE SCHEMA IF NOT EXISTS SUPPLY;
USE SUPPLY;

-- Creación de tablas
CREATE TABLE PRODUCTOS (
ID_PRODUCTO INT NOT NULL AUTO_INCREMENT,
NOMBRE VARCHAR(50) NOT NULL,
DESCRIPCION VARCHAR(200) NOT NULL,
PRECIO_UNIDAD INT,
PROVEEDOR VARCHAR(10) NOT NULL,
PRIMARY KEY (ID_PRODUCTO)
);

CREATE TABLE CLIENTES (
ID_CLIENTE INT NOT NULL AUTO_INCREMENT,
NOMBRE VARCHAR(50) NOT NULL,
DIRECCION VARCHAR(50) NOT NULL,
EMAIL VARCHAR(50) NOT NULL,
TELEFONO VARCHAR(10) NOT NULL,
REGDATE DATE,
PRIMARY KEY (ID_CLIENTE)
);

CREATE TABLE TRANSPORTES (
ID_TRANSPORTE INT NOT NULL AUTO_INCREMENT,
TIPO_U VARCHAR(20) NOT NULL,
CAPACIDAD INT,
UBICACION VARCHAR(50) NOT NULL,
ID_CONDUCTOR INT,
PRIMARY KEY (ID_TRANSPORTE)
);

CREATE TABLE ORDENES (
ID_ORDEN INT NOT NULL AUTO_INCREMENT,
ID_PRODUCTO INT,
ID_CLIENTE INT,
ID_TRANSPORTE INT,
CANTIDAD INT,
PRECIO_TOTAL INT,
FECHA DATE,
PRIMARY KEY (ID_ORDEN),
FOREIGN KEY (ID_PRODUCTO) REFERENCES PRODUCTOS(ID_PRODUCTO),
FOREIGN KEY (ID_CLIENTE) REFERENCES CLIENTES(ID_CLIENTE),
FOREIGN KEY (ID_TRANSPORTE) REFERENCES TRANSPORTES(ID_TRANSPORTE)
);

-- Inserción de datos en tablas
INSERT INTO `CLIENTES` (`ID_CLIENTE`,`NOMBRE`,`DIRECCION`,`EMAIL`,`TELEFONO`,`REGDATE`) VALUES (1,'GERARDO MACIAS','SAN MATEO 55, SANTO DOMINGO, 02160','GMACIAS@GMAIL.COM','5512434563','2023-05-30');
INSERT INTO `CLIENTES` (`ID_CLIENTE`,`NOMBRE`,`DIRECCION`,`EMAIL`,`TELEFONO`,`REGDATE`) VALUES (2,'ALEJANDRO ROCHA','FRESNOS 54, VALLE DORADO, 52902','AROCHA@GMAIL.COM','5565781555','2023-05-30');
INSERT INTO `CLIENTES` (`ID_CLIENTE`,`NOMBRE`,`DIRECCION`,`EMAIL`,`TELEFONO`,`REGDATE`) VALUES (3,'HECTOR JUAREZ','SOL 18, GUERRERO, 06300','HJUAREZ@GMAIL.COM','5596215596','2023-05-30');
INSERT INTO `CLIENTES` (`ID_CLIENTE`,`NOMBRE`,`DIRECCION`,`EMAIL`,`TELEFONO`,`REGDATE`) VALUES (4,'ANA OROZCO','SAN ANTONIO 28, DOCTORES, 06720','AOROZCO@GMAIL.COM','5556460926','2023-05-30');
INSERT INTO `CLIENTES` (`ID_CLIENTE`,`NOMBRE`,`DIRECCION`,`EMAIL`,`TELEFONO`,`REGDATE`) VALUES (5,'JAIR FERNANDEZ','JOSE MARIA 91, NAVARTE, 03020','JFERNANDEZ@GMAIL.COM','5519215894','2023-05-30');
INSERT INTO `CLIENTES` (`ID_CLIENTE`,`NOMBRE`,`DIRECCION`,`EMAIL`,`TELEFONO`,`REGDATE`) VALUES (6,'DIEGO HERNANDEZ','PILARES 123, DEL VALLE, 03100','DHERNANDEZ@GMAIL.COM','5520425062','2023-05-30');
INSERT INTO `CLIENTES` (`ID_CLIENTE`,`NOMBRE`,`DIRECCION`,`EMAIL`,`TELEFONO`,`REGDATE`) VALUES (7,'DIANA PEREZ','BERLIN 185, DEL CARMEN,04100','DPEREZ@GMAIL.COM','5548843707','2023-05-30');
INSERT INTO `CLIENTES` (`ID_CLIENTE`,`NOMBRE`,`DIRECCION`,`EMAIL`,`TELEFONO`,`REGDATE`) VALUES (8,'ERNESTO FLORES','LUCAS 11, SANTO TOMAS, 02020','EFLORES@GMAIL.COM','5556672266','2023-05-30');


INSERT INTO `PRODUCTOS` (`ID_PRODUCTO`,`NOMBRE`,`DESCRIPCION`,`PRECIO_UNIDAD`,`PROVEEDOR`) VALUES (1,'Balon Futbol','Rojo Azul',600,'MEXIEMSPOR');
INSERT INTO `PRODUCTOS` (`ID_PRODUCTO`,`NOMBRE`,`DESCRIPCION`,`PRECIO_UNIDAD`,`PROVEEDOR`) VALUES (2,'Pelota tenis','Verde',100,'CHSUNITYDE');
INSERT INTO `PRODUCTOS` (`ID_PRODUCTO`,`NOMBRE`,`DESCRIPCION`,`PRECIO_UNIDAD`,`PROVEEDOR`) VALUES (3,'Balon Basket','Negro Azul',700,'CHSUNITYDE');
INSERT INTO `PRODUCTOS` (`ID_PRODUCTO`,`NOMBRE`,`DESCRIPCION`,`PRECIO_UNIDAD`,`PROVEEDOR`) VALUES (4,'Balon Volley','Blanco',400,'MEXIEMSPOR');
INSERT INTO `PRODUCTOS` (`ID_PRODUCTO`,`NOMBRE`,`DESCRIPCION`,`PRECIO_UNIDAD`,`PROVEEDOR`) VALUES (5,'Balon Basket','Naranja',700,'MEXIEMSPOR');
INSERT INTO `PRODUCTOS` (`ID_PRODUCTO`,`NOMBRE`,`DESCRIPCION`,`PRECIO_UNIDAD`,`PROVEEDOR`) VALUES (6,'Balon Futbol','Blanco Negro',600,'MEXIEMSPOR');
INSERT INTO `PRODUCTOS` (`ID_PRODUCTO`,`NOMBRE`,`DESCRIPCION`,`PRECIO_UNIDAD`,`PROVEEDOR`) VALUES (7,'Balon Futbol','Verde Blanco',600,'MEXIEMSPOR');
INSERT INTO `PRODUCTOS` (`ID_PRODUCTO`,`NOMBRE`,`DESCRIPCION`,`PRECIO_UNIDAD`,`PROVEEDOR`) VALUES (8,'Balon Futbol','Rojo Negro',600,'CHSUNITYDE');
INSERT INTO `PRODUCTOS` (`ID_PRODUCTO`,`NOMBRE`,`DESCRIPCION`,`PRECIO_UNIDAD`,`PROVEEDOR`) VALUES (9,'Balon Futbol','Azul',600,'CHSUNITYDE');
INSERT INTO `PRODUCTOS` (`ID_PRODUCTO`,`NOMBRE`,`DESCRIPCION`,`PRECIO_UNIDAD`,`PROVEEDOR`) VALUES (10,'Guantes Futbol','Naranja',350,'CHSUNITYDE');
INSERT INTO `PRODUCTOS` (`ID_PRODUCTO`,`NOMBRE`,`DESCRIPCION`,`PRECIO_UNIDAD`,`PROVEEDOR`) VALUES (11,'Guantes Futbol','Negro',350,'MEXIEMSPOR');
INSERT INTO `PRODUCTOS` (`ID_PRODUCTO`,`NOMBRE`,`DESCRIPCION`,`PRECIO_UNIDAD`,`PROVEEDOR`) VALUES (12,'Guantes Futbol','Verde',350,'MEXIEMSPOR');
INSERT INTO `PRODUCTOS` (`ID_PRODUCTO`,`NOMBRE`,`DESCRIPCION`,`PRECIO_UNIDAD`,`PROVEEDOR`) VALUES (13,'Gorra Tenis','Azul',250,'MEXIEMSPOR');
INSERT INTO `PRODUCTOS` (`ID_PRODUCTO`,`NOMBRE`,`DESCRIPCION`,`PRECIO_UNIDAD`,`PROVEEDOR`) VALUES (14,'Gorra Tenis','Blanco',250,'CHSUNITYDE');
INSERT INTO `PRODUCTOS` (`ID_PRODUCTO`,`NOMBRE`,`DESCRIPCION`,`PRECIO_UNIDAD`,`PROVEEDOR`) VALUES (15,'Gorra Tenis','Rosa',300,'CHSUNITYDE');

INSERT INTO `TRANSPORTES` (`ID_TRANSPORTE`,`TIPO_U`,`CAPACIDAD`,`UBICACION`,`ID_CONDUCTOR`) VALUES (1,'CAMION',3,'CDX',11);
INSERT INTO `TRANSPORTES` (`ID_TRANSPORTE`,`TIPO_U`,`CAPACIDAD`,`UBICACION`,`ID_CONDUCTOR`) VALUES (2,'FURGONETA',2,'TLZ',14);
INSERT INTO `TRANSPORTES` (`ID_TRANSPORTE`,`TIPO_U`,`CAPACIDAD`,`UBICACION`,`ID_CONDUCTOR`) VALUES (3,'CAMION',5,'TIZ',16);
INSERT INTO `TRANSPORTES` (`ID_TRANSPORTE`,`TIPO_U`,`CAPACIDAD`,`UBICACION`,`ID_CONDUCTOR`) VALUES (4,'CAMION',6,'TLZ',19);
INSERT INTO `TRANSPORTES` (`ID_TRANSPORTE`,`TIPO_U`,`CAPACIDAD`,`UBICACION`,`ID_CONDUCTOR`) VALUES (5,'REMOLQUE',10,'CDX',22);

INSERT INTO `ORDENES` (`ID_ORDEN`,`ID_PRODUCTO`,`ID_CLIENTE`,`ID_TRANSPORTE`,`CANTIDAD`,`PRECIO_TOTAL`,`FECHA`) VALUES (1,4,2,2,3,1200,'2023-06-05');
INSERT INTO `ORDENES` (`ID_ORDEN`,`ID_PRODUCTO`,`ID_CLIENTE`,`ID_TRANSPORTE`,`CANTIDAD`,`PRECIO_TOTAL`,`FECHA`) VALUES (2,6,4,2,1,600,'2023-06-07');
INSERT INTO `ORDENES` (`ID_ORDEN`,`ID_PRODUCTO`,`ID_CLIENTE`,`ID_TRANSPORTE`,`CANTIDAD`,`PRECIO_TOTAL`,`FECHA`) VALUES (3,15,5,5,2,600,'2023-06-09');
INSERT INTO `ORDENES` (`ID_ORDEN`,`ID_PRODUCTO`,`ID_CLIENTE`,`ID_TRANSPORTE`,`CANTIDAD`,`PRECIO_TOTAL`,`FECHA`) VALUES (4,8,7,5,1,600,'2023-06-12');
INSERT INTO `ORDENES` (`ID_ORDEN`,`ID_PRODUCTO`,`ID_CLIENTE`,`ID_TRANSPORTE`,`CANTIDAD`,`PRECIO_TOTAL`,`FECHA`) VALUES (5,5,8,5,2,1400,'2023-06-18');
INSERT INTO `ORDENES` (`ID_ORDEN`,`ID_PRODUCTO`,`ID_CLIENTE`,`ID_TRANSPORTE`,`CANTIDAD`,`PRECIO_TOTAL`,`FECHA`) VALUES (6,3,2,1,1,700,'2023-06-19');

-- Creación de vistas

CREATE VIEW clientes_email AS
SELECT NOMBRE, EMAIL
FROM clientes;

CREATE VIEW productos_precio AS
SELECT NOMBRE, DESCRIPCION, PRECIO_UNIDAD
FROM productos;

CREATE VIEW productos_proveedor AS
SELECT NOMBRE, DESCRIPCION, PROVEEDOR
FROM productos;

CREATE VIEW clientes_direccion AS
SELECT NOMBRE, DIRECCION
FROM clientes;

CREATE VIEW clientes_contacto AS
SELECT NOMBRE, DIRECCION, EMAIL, TELEFONO
FROM clientes;

-- Vista creada con INNER JOIN

CREATE VIEW pedido_cliente AS
SELECT ORDENES.ID_ORDEN, CLIENTES.NOMBRE, ORDENES.FECHA
FROM ORDENES
INNER JOIN CLIENTES ON ORDENES.ID_CLIENTE=CLIENTES.ID_CLIENTE;

SELECT * FROM productos_precio
WHERE PRECIO_UNIDAD >= 400;

SELECT * FROM productos_proveedor
WHERE PROVEEDOR = 'CHSUNITYDE';

SELECT * FROM clientes_direccion
WHERE DIRECCION LIKE '%DEL VALLE%';

SELECT * FROM clientes_contacto
WHERE EMAIL LIKE '%GMAIL%';

SELECT * FROM pedido_cliente;

-- Uso de funciones

SELECT COUNT(NOMBRE) AS n_nombres
FROM CLIENTES;

SELECT LOWER(EMAIL) AS c_email
FROM CLIENTES;

DROP FUNCTION IF EXISTS fn_ver_email;

DELIMITER $$
CREATE FUNCTION fn_ver_email (f_id_cliente INT)

RETURNS VARCHAR(50)
DETERMINISTIC
BEGIN
DECLARE client_mail VARCHAR(50);
SET client_mail =
	(SELECT EMAIL AS CLIENTE_MAIL FROM CLIENTES WHERE ID_CLIENTE = f_id_cliente);
    
    RETURN client_mail;
END $$
DELIMITER ;

SELECT fn_ver_email (5);

-- Uso de Stored Procedures

-- Stored Procedure pide nombre de la tabla y campo como parámetros de entrada para ordenarla ASC o DESC.
DELIMITER //
DROP PROCEDURE IF EXISTS sp_orden_precios;
CREATE PROCEDURE sp_orden_precios(IN nombre_de_tabla CHAR(20), IN campo_de_tabla CHAR(20), IN orden_precios VARCHAR(20))
BEGIN
	SET @consulta = CONCAT('SELECT * FROM ',nombre_de_tabla,' ORDER BY ',campo_de_tabla,' ', orden_precios);
    PREPARE param FROM @consulta;
    EXECUTE param;
    DEALLOCATE PREPARE param;
END //
DELIMITER ;

SET @nombre_de_tabla = 'productos';
SET @campo_de_tabla = 'PRECIO_UNIDAD';
SET @orden_precios = 'DESC';

CALL sp_orden_precios(@nombre_de_tabla, @campo_de_tabla, @orden_precios);

-- Stored Procedure permite añadir nuevos clientes a la tabla "clientes", añadiento los datos de forma manual.

DELIMITER //
DROP PROCEDURE IF EXISTS sp_registrar_cliente;
CREATE PROCEDURE sp_registrar_cliente(
	IN NOMBRE VARCHAR(50),
    IN DIRECCION VARCHAR(50),
    IN EMAIL VARCHAR(50),
    IN TELEFONO VARCHAR(10),
    IN REGDATE DATE
)
BEGIN
	INSERT INTO clientes(NOMBRE, DIRECCION, EMAIL, TELEFONO, REGDATE)
    VALUES (NOMBRE, DIRECCION, EMAIL, TELEFONO, REGDATE);
END //
DELIMITER ;

CALL sp_registrar_cliente('ARMANDO DOMINGUEZ','PLUTARCO ELIAS 89, TEXCOCO, 02940','ADOMINGUEZ@GMAIL.COM','5792091029','2023-06-12');

-- Stored procedure para añadir registros a tabla 'ORDENES'

DELIMITER //
DROP PROCEDURE IF EXISTS sp_registrar_orden;
CREATE PROCEDURE sp_registrar_orden(
	IN PRODUCTO INT,
    IN CLIENTE INT,
    IN TRANSPORTE INT,
    IN CANTIDAD INT,
    IN PRECIO_T INT,
    IN FECHA DATE
)
BEGIN
	INSERT INTO ORDENES(ID_PRODUCTO, ID_CLIENTE, ID_TRANSPORTE, CANTIDAD, PRECIO_TOTAL, FECHA)
    VALUES (PRODUCTO, CLIENTE, TRANSPORTE, CANTIDAD, PRECIO_T, FECHA);
END //
DELIMITER ;

-- Uso de triggers

-- Creación de tabla de registro de cambios 'LOG'

DROP TABLE IF EXISTS LOG_DATA;
CREATE TABLE IF NOT EXISTS LOG_DATA (
	ID_LOG INT AUTO_INCREMENT,
    ACCION VARCHAR(10),
    TABLA_ORIGEN VARCHAR(50),
    MODIFICACION VARCHAR(50),
    USUARIO VARCHAR(50),
    FECHA_UPDT DATETIME,
    PRIMARY KEY (ID_LOG)
);

-- Creación de disparador para auditar nuevos registros en tabla 'ORDENES'

DROP TRIGGER IF EXISTS trg_log_ordenes;
DELIMITER //
CREATE TRIGGER trg_log_ordenes AFTER INSERT ON ORDENES
FOR EACH ROW
BEGIN

INSERT INTO LOG_DATA (ACCION, TABLA_ORIGEN, MODIFICACION, USUARIO, FECHA_UPDT)
VALUES ('INSERT', 'ORDENES', NEW.ID_ORDEN, CURRENT_USER(), NOW());

END //
DELIMITER ;

CALL sp_registrar_orden(7,3,2,1,600,'2023-06-19');
SELECT * FROM LOG_DATA;

-- Disparador before

DROP TRIGGER IF EXISTS trg_upd_ordenes;
DELIMITER //
CREATE TRIGGER trg_upd_ordenes BEFORE UPDATE ON ORDENES
FOR EACH ROW
BEGIN

INSERT INTO LOG_DATA (ACCION, TABLA_ORIGEN, MODIFICACION, USUARIO, FECHA_UPDT)
VALUES ('UPDATE', 'ORDENES', CONCAT(OLD.ID_PRODUCTO, ' - ' , NEW.ID_PRODUCTO), CURRENT_USER(), NOW());

END //
DELIMITER ;

UPDATE ORDENES SET ID_PRODUCTO = 7 WHERE ID_ORDEN = 2;
SELECT * FROM LOG_DATA;

