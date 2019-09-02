CREATE DATABASE M_Moda
USE M_Moda

CREATE TABLE Marcas(
IdMarca			INT PRIMARY KEY IDENTITY
,Marca			VARCHAR(200)UNIQUE NOT NULL
);

CREATE TABLE Cores(
IdCor		INT PRIMARY KEY IDENTITY
,Cor		VARCHAR(200)UNIQUE NOT NULL
);

CREATE TABLE Tamanhos(
IdTamanho		INT PRIMARY KEY IDENTITY
,Tamanho		VARCHAR(200)UNIQUE NOT NULL
);

CREATE TABLE Modelos(
IdModelo		INT PRIMARY KEY IDENTITY
,Modelo			VARCHAR(200)UNIQUE NOT NULL
);

CREATE TABLE Camisas(
IdCamisa			INT PRIMARY KEY IDENTITY
,IdMarca			INT FOREIGN KEY REFERENCES Marcas	(IdMarca)
,IdModelo			INT FOREIGN KEY REFERENCES Modelos	(IdModelo)
);

CREATE TABLE Camisas_Cores(
IdCamisa		INT FOREIGN KEY REFERENCES Camisas	(IdCamisa)
,IdCor			INT FOREIGN KEY REFERENCES Cores	(IdCor)
);

CREATE TABLE Camisas_Tamanhos(
IdCamisa		INT FOREIGN KEY REFERENCES Camisas	(IdCamisa)
,IdTamanho		INT FOREIGN KEY REFERENCES Tamanhos	(IdTamanho)
);

SELECT *
	FROM Marcas
SELECT *
	FROM Modelos
SELECT *
	FROM Tamanhos
SELECT *
	FROM Cores
SELECT *
	FROM Camisas
SELECT *
	FROM Camisas_Cores
SELECT *
	FROM Camisas_Tamanhos

INSERT INTO Marcas (Marca)
	VALUES('Addidas'),('Calvin Klein'),('Kappa'),('Lupo')

INSERT INTO Modelos (Modelo)
	VALUES('Regata'),('Manga cumprida'),('Social'),('Descontraída')

INSERT INTO Cores (Cor)
	VALUES('Anarelo'),('Azul'),('Roxo'),('Verde'),('Vermelho'),('Marrom'),('Preto'),('Branco')

INSERT INTO Tamanhos(Tamanho)
	VALUES('P'),('M'),('G'),('GG')

INSERT INTO Camisas	(IdMarca,IdModelo)
	VALUES(4,3),(4,2),(2,1),(3,2),(3,2),(1,4)

INSERT INTO Camisas_Cores(IdCamisa,IdCor)
	VALUES(1,7),(1,8),(2,5),(3,3),(4,3),(4,8),(5,2),(6,1),(6,7),(6,8),(6,2)

INSERT INTO Camisas_Tamanhos(IdCamisa,IdTamanho)
	VALUES(1,1),(2,1),(2,2),(3,1),(3,2),(3,2),(3,4),(4,4),(5,3),(5,4),(6,2)

SELECT Camisas.*, Modelos.Modelo, Marcas.Marca, Cores.Cor, Tamanhos.Tamanho
FROM Camisas
LEFT JOIN Modelos
ON Camisas.IdModelo = Modelos.IdModelo
LEFT JOIN Marcas
ON Camisas.IdMarca = Marcas.IdMarca
FULL JOIN Camisas_Cores
ON Camisas.IdCamisa = Camisas_Cores.IdCamisa
FULL JOIN Cores
ON Camisas_Cores.IdCor = Cores.IdCor
JOIN Camisas_Tamanhos 
ON Camisas.IdCamisa = Camisas_Tamanhos.IdCamisa
JOIN Tamanhos
ON Camisas_Tamanhos.IdTamanho = Tamanhos.IdTamanho


SELECT *
	FROM Camisas_Cores
SELECT *
	FROM Camisas_Tamanhos

UPDATE Camisas
	SET	IdMarca = 1 
	WHERE IdCamisa = 5;
UPDATE Camisas
	SET	IdMarca = 1 
	WHERE IdCamisa = 1;

DELETE Camisas
	WHERE IdCamisa = 6

UPDATE Cores
	SET Cor = 'Amarelo'
	WHERE IdCor = 1;





