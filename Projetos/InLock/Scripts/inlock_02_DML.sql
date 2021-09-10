USE INLOCK_GAMES_MAN;
GO

--Estudios 
INSERT INTO Estudios (nomeEstudio)
VALUES ('Blizzard'),
	   ('Rockstar Studios'), 
	   ('Square Enix')
GO

--Jogos
INSERT INTO Jogos (idEstudio, nomeJogos, dataLancamento, descricaoJogo, valor)
VALUES ('1', 'Diablo 3', '2012-05-15', 'É um jogo que contém bastante ação e é viciante, seja você um novato ou um fã', '99.00'),
	   ('2', 'Red Dead Redemption II', '2018-10-26', 'jogo eletrônico de ação-aventura western', '120.00')
GO

--Tipo Usuario
INSERT INTO TipoUsuario (Titulo)
VALUES ('Admin'),
	   ('Cliente')
GO

--Usuario
INSERT INTO Usuario (idTipoUsuario, nomeUsuario, emailUsuario, senhaUsuario)
VALUES  ('1', 'Astolfo', 'admin@admin.com', 'admin'),
     	('2', 'Marilda', 'cliente@cliente.com', 'cliente')
GO