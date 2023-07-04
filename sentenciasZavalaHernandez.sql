-- Usando la DB del sistema y seleccionando los registros de tabla USER
USE mysql;
SELECT * FROM USER;

-- Creación de usuarios

DROP USER IF EXISTS 'usuarioRO'@'localhost';
DROP USER IF EXISTS 'usuarioRIM'@'localhost';

-- Creación de dos usuarios; uno tendrá permisos de lectura y el segundo de Inserción, Lectura y Modificación

-- Creación del primer usuario "solo lectura"
CREATE USER IF NOT EXISTS 'usuarioRO'@'localhost' IDENTIFIED BY 'usuarioReadOnly';
-- Asignación de permisos o privilegios al usuario "solo lectura"
GRANT SELECT ON supply.* TO 'usuarioRO'@'localhost';
SHOW GRANTS FOR 'usuarioRO'@'localhost';

-- Creación de segundo usuario "lectura, inserción y modificación"
CREATE USER IF NOT EXISTS 'usuarioRIM'@'localhost' IDENTIFIED BY 'usuarioReadInsertMod';
-- Asignación de privilegios a segundo usuario
GRANT SELECT, INSERT, UPDATE ON supply.* TO 'usuarioRIM'@'localhost';
SHOW GRANTS FOR 'usuarioRIM'@'localhost';
