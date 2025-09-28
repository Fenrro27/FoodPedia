-- Crear tablas
CREATE TABLE IF NOT EXISTS recetas (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    descripcion TEXT,
    foto_url TEXT
);

CREATE TABLE IF NOT EXISTS ingredientes (
    id SERIAL PRIMARY KEY,
    receta_id INT REFERENCES recetas(id) ON DELETE CASCADE,
    nombre VARCHAR(255),
    cantidad VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS usuarios (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    email VARCHAR(150) UNIQUE,
    password VARCHAR(255)
);

-- Datos de ejemplo
INSERT INTO recetas (titulo, descripcion, foto_url) VALUES
('Pollo Asado', 'Receta clásica', '/uploads/pollo_asado.jpg');
