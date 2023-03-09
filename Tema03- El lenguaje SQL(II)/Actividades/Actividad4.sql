select * from futbolistas
select * from equipos

--Eliminar un jugador de un equipo.
DELETE FROM Futbolistas
WHERE Codigo = 'RB0004'

--Eliminar los equipos italianos.
--1ª forma
DELETE FROM Equipos
WHERE Codigo IN
(SELECT Codigo FROM Equipos
WHERE Pais = 'Italia')
--2ª forma
DELETE FROM Equipos
WHERE Pais = 'Italia'

--Eliminar un equipo de La Liga, y por lo tanto, a todos sus jugadores.
DELETE FROM Equipos
WHERE Codigo = '#SDEIBR'

DELETE FROM Futbolistas
WHERE CodigoEquipo = '#SDEIBR'

--Eliminar a todos los porteros de los equipos.
DELETE FROM Futbolistas
WHERE Posicion = 'Portero'

--Eliminar a todos los canteranos de los equipos (no tienen dorsal entre 1 y 25)
DELETE FROM Futbolistas
WHERE Dorsal NOT BETWEEN 1 AND 25

--Eliminar a aquellos equipos que tengan menos de 20 jugadores (y, por supuesto, a sus jugadores)

DELETE FROM Equipos
WHERE Codigo IN(
SELECT CodigoEquipo
FROM Futbolistas
GROUP BY CodigoEquipo
HAVING COUNT(Codigo) < 20)

DELETE FROM Futbolistas
WHERE CodigoEquipo IN(
SELECT CodigoEquipo
FROM Futbolistas
GROUP BY CodigoEquipo
HAVING COUNT(Codigo) < 20)

--Eliminar a aquellos jugadores que se hayan retirado (o pasen de 40 años)
DELETE FROM Futbolistas
WHERE Edad > 40 OR CodigoEquipo = 'RETIRADO'
