CREATE TABLE propiedades (
    id_lote INT UNSIGNED AUTO_INCREMENT PRIMARY KEY COMMENT 'Identificador único del lote',
    dimensiones DECIMAL(8,2) NOT NULL COMMENT 'Dimensiones del lote en metros cuadrados',
    precio DECIMAL(10,2) NOT NULL COMMENT 'Precio de la propiedad',
    tipo ENUM('Premium', 'Regular', 'Comercial') NOT NULL COMMENT 'Tipo de lote',
    disponibilidad ENUM('Disponible', 'Vendido', 'Reservado') NOT NULL COMMENT 'Estado de disponibilidad',
    desarrollo VARCHAR(50) NOT NULL COMMENT 'Nombre del desarrollo o fraccionamiento',
    etapa TINYINT UNSIGNED NOT NULL COMMENT 'Número de etapa (entero positivo y pequeño)',
    calle ENUM(
        'Calle Colibri',
        'Calle Quetzal',
        'Calle Aguila',
        'Calle Paloma',
        'Avenida Ramal Norte'
    ) NOT NULL COMMENT 'Calle donde se ubica la propiedad',
    observaciones TEXT COMMENT 'Comentarios adicionales sobre la propiedad'
);
