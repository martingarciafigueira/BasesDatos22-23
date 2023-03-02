--Insertar un equipo de tu elecci�n con valores espec�ficos
INSERT INTO Equipos 
VALUES ('#CES', 'CE Sabadell', 'Espa�a', 22, 10, '6 (fase grupos)', 2,2,2,'Nova Creu Alta', 'Sabadell')

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

--Insertar un equipo en una tabla utilizando la cl�usula �DEFAULT VALUES�
INSERT INTO Equipos
VALUES ('#MCST', DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT)

