CREATE DATABASE CLINICA_VETERINARIA;
GO

USE CLINICA_VETERINARIA;
GO

CREATE TABLE EMPRESA(
	idEmpresa SMALLINT PRIMARY KEY IDENTITY(1,1),
	nomeEmpresa VARCHAR(20) NOT NULL,
	endereco VARCHAR(150)
);
GO

CREATE TABLE TIPO_PET(
	idTipoPet TINYINT PRIMARY KEY IDENTITY(1,1),
	nomeTipo VARCHAR(20) NOT NULL,
);
GO

CREATE TABLE DONO(
	idDono SMALLINT PRIMARY KEY IDENTITY(1,1),
	nomeDono VARCHAR(15),
	telefone CHAR(11)
);
GO

CREATE TABLE RACA(
	idRaca SMALLINT PRIMARY KEY IDENTITY(1,1),
	nomeRaca VARCHAR(20) NOT NULL,
	idTipoPet TINYINT FOREIGN KEY REFERENCES TIPO_PET(idTipoPet)
);
GO

CREATE TABLE PET(
	idPet SMALLINT PRIMARY KEY IDENTITY(1,1),
	nomePet VARCHAR(15) NOT NULL,
	dataNasc DATE,
	idRaca SMALLINT FOREIGN KEY REFERENCES RACA(idRaca),
	idDono SMALLINT FOREIGN KEY REFERENCES DONO(idDono)
);
GO

CREATE TABLE VETERINARIO(
	idVeterinario SMALLINT PRIMARY KEY IDENTITY(1,1),
	nomeVeterinario VARCHAR(15),
	idEmpresa SMALLINT FOREIGN KEY REFERENCES EMPRESA(idEmpresa)
);
GO

CREATE TABLE ATENDIMENTO(
	idAtendimento SMALLINT PRIMARY KEY IDENTITY(1,1),
	idPet SMALLINT FOREIGN KEY REFERENCES PET(idPet),
	idVeterinario SMALLINT FOREIGN KEY REFERENCES VETERINARIO(idVeterinario),
	dataAtend DATE,
	horario TIME
);
GO