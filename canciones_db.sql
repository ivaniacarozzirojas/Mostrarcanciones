SELECT * FROM artistas;
SELECT id, titulo, artista_id
FROM canciones;
UPDATE canciones
SET artista_id = 2
WHERE titulo = 'Despacito';
UPDATE canciones
SET artista_id = 2
WHERE id = 2;
UPDATE canciones
SET artista_id = 3
WHERE id = 3;
UPDATE canciones
SET artista_id = 3
WHERE id = 4;
SELECT id, titulo, artista_id
FROM canciones;