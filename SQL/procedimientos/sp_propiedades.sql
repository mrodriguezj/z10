DELIMITER $$

CREATE PROCEDURE insertar_propiedad (
    IN p_dimensiones DECIMAL(8,2),
    IN p_precio DECIMAL(10,2),
    IN p_tipo ENUM('Premium', 'Regular', 'Comercial'),
    IN p_disponibilidad ENUM('Disponible', 'Vendido', 'Reservado'),
    IN p_desarrollo VARCHAR(50),
    IN p_etapa TINYINT UNSIGNED,
    IN p_calle ENUM('Calle Colibri', 'Calle Quetzal', 'Calle Aguila', 'Calle Paloma', 'Avenida Ramal Norte'),
    IN p_observaciones TEXT
)
BEGIN
    -- Insertar nueva propiedad
    INSERT INTO propiedades (
        dimensiones, precio, tipo, disponibilidad,
        desarrollo, etapa, calle, observaciones
    ) VALUES (
        p_dimensiones, p_precio, p_tipo, p_disponibilidad,
        p_desarrollo, p_etapa, p_calle, p_observaciones
    );

    -- Retornar mensaje de éxito con el ID generado
    SELECT CONCAT('Propiedad insertada correctamente con ID: ', LAST_INSERT_ID()) AS resultado;
END$$

DELIMITER ;

DELIMITER $$


--INSERTAR 200 PROPIEDADES


CREATE PROCEDURE insertar_propiedades_masivas(IN cantidad INT)
BEGIN
    DECLARE contador INT DEFAULT 0;

    WHILE contador < cantidad DO
        INSERT INTO propiedades (
            dimensiones, precio, tipo, disponibilidad, desarrollo, etapa, calle, observaciones
        ) VALUES (
            100, 100, 'Premium', 'Disponible', 'Bonaterra', 1, 'Calle Aguila', ''
        );

        SET contador = contador + 1;
    END WHILE;
END$$

DELIMITER ;

CALL insertar_propiedades_masivas(200);


--


DELIMITER $$

CREATE PROCEDURE consultar_propiedad_por_id (
    IN p_id_lote INT UNSIGNED
)
BEGIN
    -- Verificar si el lote existe
    IF EXISTS (SELECT 1 FROM propiedades WHERE id_lote = p_id_lote) THEN
        -- Devolver todos los datos asociados al id_lote
        SELECT * FROM propiedades WHERE id_lote = p_id_lote;
    ELSE
        -- Si no existe, devolver un mensaje informativo
        SELECT CONCAT('No se encontró ninguna propiedad con ID: ', p_id_lote) AS mensaje;
    END IF;
END$$

DELIMITER ;

CALL consultar_propiedad_por_id(5);
