CREATE TABLE clientes (
    id_cliente INT UNSIGNED AUTO_INCREMENT PRIMARY KEY COMMENT 'Identificador único del cliente',
    nombres VARCHAR(50) NOT NULL COMMENT 'Nombre(s) del cliente',
    apellido_paterno VARCHAR(50) NOT NULL COMMENT 'Apellido paterno del cliente',
    apellido_materno VARCHAR(50) COMMENT 'Apellido materno del cliente',
    correo_electronico VARCHAR(100) NOT NULL UNIQUE COMMENT 'Correo electrónico único',
    telefono CHAR(10) NOT NULL COMMENT 'Teléfono a 10 dígitos',
    curp CHAR(18) NOT NULL UNIQUE COMMENT 'CURP del cliente',
    rfc CHAR(13) NOT NULL UNIQUE COMMENT 'RFC del cliente',
    ine CHAR(18) NOT NULL UNIQUE COMMENT 'Número de identificación oficial (INE)',
    direccion VARCHAR(100) COMMENT 'Dirección completa en una sola línea',
    estatus ENUM('Activo', 'Inactivo') DEFAULT 'Activo' COMMENT 'Estado del cliente'
);
