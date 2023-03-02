--Insertar un equipo de tu elección con valores específicos
INSERT INTO Equipos 
VALUES ('#CES', 'CE Sabadell', 'España', 22, 10, '6 (fase grupos)', 2,2,2,'Nova Creu Alta', 'Sabadell')

--Insertar varios jugadores de ese equipo (en la misma consulta)
INSERT INTO Futbolistas
VALUES ('#CES001', 'Manuel Almunia', '#CES', 'Portero',22,0,2,0,3000,'12 Mill.', 1, 90) ,
('#CES002', 'Juvenal', '#CES', 'Mediocampista',22,0,2,0,3000,'12 Mill.', 8, 90),
('#CES003', 'Nestor Querol', '#CES', 'Defensa',22,0,2,0,3000,'4 Mill.', 4, 87)

--Insertar jugadores en una tabla utilizando una subconsulta
INSERT INTO JugadoresSeleccionables
SELECT Codigo, Nombre, CodigoEquipo
FROM Futbolistas
WHERE CodigoEquipo = '#ATHBIL'

--Insertar un equipo en una tabla utilizando la cláusula ‘DEFAULT VALUES’
INSERT INTO Equipos
VALUES ('#MCST', DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT)

