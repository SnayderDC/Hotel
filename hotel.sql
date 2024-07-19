-- Crear la base de datos
DROP DATABASE gestion_hotel;
CREATE DATABASE gestion_hotel;

-- Usar la base de datos
USE gestion_hotel;

-- Crear la tabla personas
CREATE TABLE personas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_completo VARCHAR(100),
    email VARCHAR(100),
    telefono VARCHAR(9),
    fechaE DATE,
    fechaS DATE,
    tipo_de_habitacion VARCHAR(50),
    numero_de_habitacion VARCHAR(100),
    numero_de_personas VARCHAR(100),
    peticiones_especiales VARCHAR(100),
    metodo_de_pago VARCHAR(50),
    estado CHAR(1) DEFAULT 'A' NOT NULL,
    CONSTRAINT chk_estado CHECK (estado IN ('A', 'R'))
);

-- Insertar registros
INSERT INTO personas (nombre_completo, email, telefono, fechaE, fechaS, tipo_de_habitacion, numero_de_habitacion, numero_de_personas, peticiones_especiales, metodo_de_pago)
VALUES
('Juan Pérez', 'juan.perez@example.com', '1234567890', '2024-07-01', '2024-07-07', 'Doble', '101', '2', 'Vista al mar', 'Tarjeta de crédito'),
('Ana García', 'ana.garcia@example.com', '0987654321', '2024-07-02', '2024-07-08', 'Individual', '102', '1', 'Cama extra', 'Efectivo'),
('Carlos López', 'carlos.lopez@example.com', '1122334455', '2024-07-03', '2024-07-09', 'Suite', '103', '4', 'Desayuno incluido', 'Transferencia bancaria');

select * from personas;
UPDATE personas SET estado = 'A' WHERE id =5;
