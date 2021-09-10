CREATE DATABASE INLOCK_GAMES_MAN;
GO

USE INLOCK_GAMES_MAN;
GO

CREATE TABLE Estudios(
idEstudio tinyint PRIMARY KEY IDENTITY(1,1),
nomeEstudio VARCHAR(30) NOT NULL
);
GO

CREATE TABLE Jogos(
idJogo tinyint PRIMARY KEY IDENTITY(1,1),
idEstudio tinyint FOREIGN KEY REFERENCES Estudios(idEstudio)
nomeJogos VARCHAR(100)NOT NULL ,
descricaoJogo VARCHAR(1000),
dataLancamento DATE NOT NULL,
valor MONEY NOT NULL,
);
GO

CREATE TABLE TipoUsuario(
idTipoUsuario tinyint PRIMARY KEY IDENTITY(1,1),
Titulo VARCHAR(50)
);
GO

CREATE TABLE Usuario(
idUsuario tinyint PRIMARY KEY IDENTITY(1,1),
nomeUsuario VARCHAR(30),
emailUsuario VARCHAR(100),
senhaUsuario VARCHAR(30),
idTipoUsuario tinyint FOREIGN KEY REFERENCES TipoUsuario(idTipoUsuario)
);
GO