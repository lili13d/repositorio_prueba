CREATE TABLE CLIENTE (
    numero_factura INTEGER REFERENCES FACTURA(numero_factura),
    id_cliente SERIAL PRIMARY KEY,
    nombres VARCHAR(100) NOT NULL,
    direccion TEXT,
    telefono VARCHAR(20),
    correo VARCHAR(100),
    sexo CHAR(1) CHECK (sexo IN ('F', 'M', 'O')),
    estado_civil VARCHAR(20) CHECK (estado_civil IN ('casado', 'divorciado', 'soltero', 'viudo'))
);
