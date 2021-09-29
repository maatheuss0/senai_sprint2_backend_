CREATE DATABASE LOCADORA;
GO

USE LOCADORA;
GO

CREATE TABLE EMPRESA(
	idEmpresa TINYINT PRIMARY KEY IDENTITY(1,1),
	endereco VARCHAR(100)
);
GO



CREATE TABLE MARCA (
	idMarca TINYINT PRIMARY KEY IDENTITY(1,1),
	nomeMarca VARCHAR(100)
);
GO


CREATE TABLE MODELO (
	idModelo TINYINT PRIMARY KEY IDENTITY(1,1),
	idMarca TINYINT FOREIGN KEY REFERENCES MARCA(idMarca),
	nomeModelo VARCHAR(100) NOT NULL
);
GO

CREATE TABLE VEICULO (
	idCarro INT PRIMARY KEY IDENTITY(1,1),
	idModelo TINYINT FOREIGN KEY REFERENCES MODELO(idModelo),
	idEmpresa TINYINT FOREIGN KEY REFERENCES EMPRESA(idEmpresa),
	placa VARCHAR(15) NOT NULL
);
GO


CREATE TABLE CLIENTE(
	idCliente TINYINT PRIMARY KEY IDENTITY(1,1),
	nome VARCHAR(15) NOT NULL,
	RG VARCHAR(12) NOT NULL
);
GO


CREATE TABLE ALUGUEL(
	idAluguel INT PRIMARY KEY IDENTITY(1,1),
	idCliente TINYINT FOREIGN KEY REFERENCES CLIENTE(idCliente),
	idCarro INT FOREIGN KEY REFERENCES VEICULO(idCarro),
	preco SMALLMONEY NOT NULL,
	Adata DATE 
);
GO

