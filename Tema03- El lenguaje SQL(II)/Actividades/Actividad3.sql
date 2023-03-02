--Actualizar los puntos de un equipo en La Liga.
UPDATE Equipos
SET Puntos = Puntos + 3
WHERE Nombre = 'Atalanta'
--Actualizar el valor del precio de mercado de un jugador en un equipo.
UPDATE Futbolistas
SET PrecioMercado = '150 Mill.'
WHERE Nombre = 'Erling Haaland'
--Actualizar los partidos jugados, ganados, perdidos y empatados por un equipo.
UPDATE Equipos
SET PG = PG + 1, PE = PE + 1, PP = PP + 1
WHERE Codigo = '#CES'
--Realizar el traspaso de un futbolista a otro equipo.
UPDATE Futbolistas
SET CodigoEquipo = '#CES'
WHERE Nombre = 'Erling Haaland'
--Hacer un intercambio de futbolistas, pero manteniendo las estadísticas actuales (Jugador1 va a Equipo2, y Jugador2 va a Equipo1)
UPDATE Futbolistas
SET CodigoEquipo = '#ATMDRD'
WHERE Nombre = 'Lekue'
UPDATE Futbolistas
SET CodigoEquipo = '#ATHBIL'
WHERE Nombre = 'Saúl Ñíguez'
--Retirar a un futbolista (Cambiar su dorsal a 0 y su equipo a ‘RETIRADO’)
UPDATE Futbolistas
SET Dorsal = 0, CodigoEquipo='RETIRADO'
WHERE Codigo = 'RS0002'
--Mudar a un equipo de país, con todos los cambios que eso conlleva (empieza de 0 en partidos, goles, etc.)
UPDATE Equipos
SET Pais = 'Ucrania', Estadio = DEFAULT, Ciudad = DEFAULT, Goles = 0, Puntos = 0, PJ = 0, PG = 0, PE = 0, PP = 0
WHERE Codigo = '#ZENIT'