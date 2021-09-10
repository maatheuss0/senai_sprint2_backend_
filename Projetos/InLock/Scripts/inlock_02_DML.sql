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
VALUES ('1', 'Diablo 3', '2012-05-15', '� um jogo que cont�m bastante a��o e � viciante, seja voc� um novato ou um f�', '99.00'),
	   ('2', 'Red Dead Redemption II', '2018-10-26', 'jogo eletr�nico de a��o-aventura western', '120.00')
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