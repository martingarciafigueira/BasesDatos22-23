--Actualizar los datos de un jugador, si el jugador ya existe, o insertarlo si es un jugador nuevo.
MERGE INTO Futbolistas f
USING FutbolistasNuevos fn
ON (f.Codigo = fn.CodigoFutbolista)
WHEN MATCHED THEN
UPDATE SET f.Nombre = fn.Nombre
WHEN NOT MATCHED THEN
INSERT (Codigo, Nombre)
VALUES (fn.CodigoFutbolista, fn.Nombre);

--Actualizar los datos de un equipo, si el equipo ya existe, o insertarlo si es un equipo nuevo.
MERGE INTO Equipos e
USING EquiposNuevos en
ON (e.Codigo = en.Codigo)
WHEN MATCHED THEN
UPDATE SET e.Nombre = en.Nombre
WHEN NOT MATCHED THEN
INSERT (Codigo, Nombre)
VALUES (en.Codigo, en.Nombre);
--Actualizar los datos de un defensa, si el defensa ya existe, o insertarlo si es un defensa nuevo.

--Borrar los datos de un equipo, si el equipo ya existe, o insertarlo si es un equipo nuevo.
MERGE INTO Equipos e
USING EquiposNuevos en
ON (e.Codigo = en.Codigo)
WHEN MATCHED THEN
DELETE 
WHEN NOT MATCHED THEN
INSERT (Codigo, Nombre)
VALUES (en.Codigo, en.Nombre);
