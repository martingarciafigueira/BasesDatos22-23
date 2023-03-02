
--1.Obtener la longitud de los nombres de los futbolistas
SELECT Nombre, LEN(Nombre)
from Futbolistas

--2.Obtener la fecha actual
SELECT DISTINCT CURRENT_TIMESTAMP

--3.Convertir el nombre y apellidos de futbolistas a mayúsculas
SELECT Nombre, UPPER(Nombre)
from Futbolistas

--4.Calcular la suma de goles de un equipo
SELECT CodigoEquipo, COALESCE(SUM(goles), 0)
FROM Futbolistas
GROUP BY CodigoEquipo

--5.Obtener de un equipo la cantidad de goles que mete su minimo goleador y su maximo goleador

SELECT CodigoEquipo, MIN(Goles) AS GolesMinGoleador, MAX(Goles) AS GolesMaxGoleador  
FROM Futbolistas
GROUP BY CodigoEquipo

--5B.Obtener el jugador que menos goles mete y el que más de un equipo


--6.Calcular el promedio de goles de un equipo
SELECT CodigoEquipo, COALESCE(AVG(goles), 0)
FROM Futbolistas
GROUP BY CodigoEquipo

--7.Obtener el número de futbolistas de un equipo
SELECT CodigoEquipo, COUNT(Nombre)
FROM Futbolistas
GROUP BY CodigoEquipo

--8.Obtener la parte entera de un promedio de goles de cada equipo
SELECT CodigoEquipo, ROUND(AVG(goles),0)
FROM Futbolistas
GROUP BY CodigoEquipo

--9.Obtener la parte decimal de un promedio de goles de cada equipo
SELECT CodigoEquipo, ROUND(AVG(goles),2)
FROM Futbolistas
GROUP BY CodigoEquipo



