CREATE DATABASE M_Hroads

USE M_Hroads

CREATE TABLE Classes (
IdClasse	INT PRIMARY KEY IDENTITY
,Classe		VARCHAR(200)NOT NULL
);

CREATE TABLE TiposHabilidade (
IdTipoHabilidade	INT PRIMARY KEY IDENTITY
,TipoHabilidade		VARCHAR(200)NOT NULL
);

CREATE TABLE Habilidades (
IdHabilidade		INT PRIMARY KEY IDENTITY
,Habilidade			VARCHAR(200)NOT NULL
,IdTipoHabilidade	INT FOREIGN KEY REFERENCES TiposHabilidade (IdTipoHabilidade)
);

CREATE TABLE Poderes (
IdClasse			INT FOREIGN KEY REFERENCES Classes (IdClasse)
,IdHabilidade		INT FOREIGN KEY REFERENCES Habilidades (IdHabilidade)
);

CREATE TABLE Personagens (
IdPersonagem		INT PRIMARY KEY IDENTITY
,Nome				VARCHAR(200)UNIQUE NOT NULL
,CapacidadeVida		INT NOT NULL
,CapacidadeMana		INT NOT NULL
,DataCriacao		DATETIME 
,DataAtualizacao	DATETIME
,IdClasse			INT FOREIGN KEY REFERENCES Classes (IdClasse)
);

SELECT *
	FROM Personagens
SELECT *
	FROM Poderes
SELECT *
	FROM Classes
SELECT *
	FROM Habilidades
SELECT *
	FROM TiposHabilidade