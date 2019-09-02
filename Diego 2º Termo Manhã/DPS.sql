CREATE DATABASE M_DPS
USE M_DPS

CREATE TABLE Departamentos (
IdDepartamento		INT PRIMARY KEY IDENTITY
,Departamento		VARCHAR(200) UNIQUE NOT NULL
);

CREATE TABLE Habilidades (
IdHabilidade		INT PRIMARY KEY IDENTITY
,Habilidade			VARCHAR(200) UNIQUE NOT NULL
);

CREATE TABLE Funcion�rios (
IdFuncion�rio		INT PRIMARY KEY IDENTITY
,Nome				VARCHAR(200) UNIQUE NOT NULL
,IdDepartamento		INT FOREIGN KEY REFERENCES Departamentos (IdDepartamento)
);

CREATE TABLE Funcion�rios_Habilidades (
IdFuncion�rio		INT FOREIGN KEY REFERENCES Funcion�rios (IdFuncion�rio)
,IdHabilidade		INT FOREIGN KEY REFERENCES Habilidades	(IdHabilidade)
);

ALTER TABLE Funcion�rios
	ADD Sal�rio INT

ALTER TABLE Funcion�rios
	ADD Fun��o VARCHAR(200)

ALTER TABLE Habilidades
	ADD Descri��o VARCHAR(200)

SELECT *
	FROM Departamentos
SELECT *
	FROM Habilidades
SELECT *
	FROM Funcion�rios
SELECT *
	FROM Funcion�rios_Habilidades

INSERT INTO Departamentos(Departamento)
	VALUES('Limpeza'),('Seguran�a'),('Manuten��o')

INSERT INTO Habilidades(Habilidade)
	VALUES('Lideran�a'),('Trabalho em grupo'),('Atencioso'),('�gil'),('Perceptivo'),('Proativo')

INSERT INTO Funcion�rios(Nome, IdDepartamento)
	VALUES('Lucas',3),('Beatriz',1),('Caio',3),('Joana',1),('Vanessa',1),('Julio',3),('B�rbara',3),('Daniel',2)

INSERT INTO Funcion�rios_Habilidades(IdFuncion�rio, IdHabilidade)
	VALUES(1,2),(1,4),(2,4),(3,2),(3,6),(4,4),(5,5),(5,6),(6,2),(6,3),(7,2),(8,1)

UPDATE Funcion�rios
	SET Sal�rio = 2430
	WHERE IdFuncion�rio = 8;

UPDATE Funcion�rios
	SET Fun��o = 'Proteger a todos'
	WHERE IdFuncion�rio = 8;

UPDATE Habilidades
	SET Descri��o = 'Facilidade em tomar a frente em situa��es diversas'
	WHERE IdHabilidade = 6;

	
SELECT Funcion�rios.*, Departamentos.Departamento, Habilidades.*
	FROM Funcion�rios
	FULL JOIN Departamentos
	ON Funcion�rios.IdDepartamento = Departamentos.IdDepartamento
	FULL JOIN Funcion�rios_Habilidades
	ON Funcion�rios.IdFuncion�rio = Funcion�rios_Habilidades.IdFuncion�rio
	FULL JOIN Habilidades
	ON Funcion�rios_Habilidades.IdHabilidade = Habilidades.IdHabilidade

SELECT Funcion�rios.*, Departamentos.Departamento, Habilidades.*
	FROM Funcion�rios
	FULL JOIN Departamentos
	ON Funcion�rios.IdDepartamento = Departamentos.IdDepartamento
	FULL JOIN Funcion�rios_Habilidades
	ON Funcion�rios.IdFuncion�rio = Funcion�rios_Habilidades.IdFuncion�rio
	FULL JOIN Habilidades
	ON Funcion�rios_Habilidades.IdHabilidade = Habilidades.IdHabilidade
	WHERE Funcion�rios.IdFuncion�rio = 1
	
	
 