CREATE DATABASE SENAI_HROADS_MANHA;
GO

USE SENAI_HROADS_MANHA;
GO

CREATE TABLE TIPOHABILIDADE(
		idTipoHabilidade TINYINT PRIMARY KEY IDENTITY(1,1),
		nomeTH VARCHAR(20) NOT NULL UNIQUE
);
GO

CREATE TABLE CLASSE(
		idClasse TINYINT PRIMARY KEY IDENTITY(1,1),
		nomeC VARCHAR(20) NOT NULL UNIQUE
);
GO

CREATE TABLE PERSONAGEM(
		IdPersonagem TINYINT PRIMARY KEY IDENTITY(1,1),
		idClasse TINYINT FOREIGN KEY REFERENCES CLASSE(idClasse),
		nomeP VARCHAR(20) NOT NULL UNIQUE,
		vidaMaxima TINYINT,
		manaMaxima TINYINT,
		dataAtuailizacao DATE,
		dataCriacao DATE
);
GO	

CREATE TABLE HABILIDADE(
		idHabilidade TINYINT PRIMARY KEY IDENTITY(1,1),
		idTipoHabilidade TINYINT FOREIGN KEY REFERENCES TIPOHABILIDADE(idTipoHabilidade),
		nomeH VARCHAR(20) NOT NULL UNIQUE
);
GO

CREATE TABLE CLASSEHABILIDADE(
		idClasseHabilidade TINYINT PRIMARY KEY IDENTITY(1,1),
		idHabilidade TINYINT FOREIGN KEY REFERENCES HABILIDADE(IdHabilidade),
		idClasse TINYINT FOREIGN KEY REFERENCES CLASSE(idClasse)
);
GO
