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

CREATE TABLE Funcionários (
IdFuncionário		INT PRIMARY KEY IDENTITY
,Nome				VARCHAR(200) UNIQUE NOT NULL
,IdDepartamento		INT FOREIGN KEY REFERENCES Departamentos (IdDepartamento)
);

CREATE TABLE Funcionários_Habilidades (
IdFuncionário		INT FOREIGN KEY REFERENCES Funcionários (IdFuncionário)
,IdHabilidade		INT FOREIGN KEY REFERENCES Habilidades	(IdHabilidade)
);

ALTER TABLE Funcionários
	ADD Salário INT

ALTER TABLE Funcionários
	ADD Função VARCHAR(200)

ALTER TABLE Habilidades
	ADD Descrição VARCHAR(200)

SELECT *
	FROM Departamentos
SELECT *
	FROM Habilidades
SELECT *
	FROM Funcionários
SELECT *
	FROM Funcionários_Habilidades

INSERT INTO Departamentos(Departamento)
	VALUES('Limpeza'),('Segurança'),('Manutenção')

INSERT INTO Habilidades(Habilidade)
	VALUES('Liderança'),('Trabalho em grupo'),('Atencioso'),('Ágil'),('Perceptivo'),('Proativo')

INSERT INTO Funcionários(Nome, IdDepartamento)
	VALUES('Lucas',3),('Beatriz',1),('Caio',3),('Joana',1),('Vanessa',1),('Julio',3),('Bárbara',3),('Daniel',2)

INSERT INTO Funcionários_Habilidades(IdFuncionário, IdHabilidade)
	VALUES(1,2),(1,4),(2,4),(3,2),(3,6),(4,4),(5,5),(5,6),(6,2),(6,3),(7,2),(8,1)

UPDATE Funcionários
	SET Salário = 2430
	WHERE IdFuncionário = 8;

UPDATE Funcionários
	SET Função = 'Proteger a todos'
	WHERE IdFuncionário = 8;

UPDATE Habilidades
	SET Descrição = 'Facilidade em tomar a frente em situações diversas'
	WHERE IdHabilidade = 6;

	
SELECT Funcionários.*, Departamentos.Departamento, Habilidades.*
	FROM Funcionários
	FULL JOIN Departamentos
	ON Funcionários.IdDepartamento = Departamentos.IdDepartamento
	FULL JOIN Funcionários_Habilidades
	ON Funcionários.IdFuncionário = Funcionários_Habilidades.IdFuncionário
	FULL JOIN Habilidades
	ON Funcionários_Habilidades.IdHabilidade = Habilidades.IdHabilidade

SELECT Funcionários.*, Departamentos.Departamento, Habilidades.*
	FROM Funcionários
	FULL JOIN Departamentos
	ON Funcionários.IdDepartamento = Departamentos.IdDepartamento
	FULL JOIN Funcionários_Habilidades
	ON Funcionários.IdFuncionário = Funcionários_Habilidades.IdFuncionário
	FULL JOIN Habilidades
	ON Funcionários_Habilidades.IdHabilidade = Habilidades.IdHabilidade
	WHERE Funcionários.IdFuncionário = 1
	
	
 