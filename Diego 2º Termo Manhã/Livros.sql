CREATE DATABASE M_Livros
 
USE M_Livros

CREATE TABLE G�neros(
IdG�neros		INT PRIMARY KEY IDENTITY
,G�nero			VARCHAR(200)UNIQUE NOT NULL
);

CREATE TABLE Autores(
IdAutores		INT PRIMARY KEY IDENTITY
,Autor			VARCHAR(200)UNIQUE NOT NULL
);

CREATE TABLE Livros(
IdLivros	INT PRIMARY KEY IDENTITY
,Livro		VARCHAR(200)UNIQUE NOT NULL
,IdAutores	INT FOREIGN KEY REFERENCES Autores (IdAutores)
,IdG�neros	INT FOREIGN KEY REFERENCES G�neros (IdG�neros)
);

INSERT INTO G�neros (G�nero)
	VALUES('Terror'),('Suspense'),('Aventura'),('Romance')

INSERT INTO Autores(Autor)
	VALUES('Edgar Allan Poe'),('Stephen King'),('Agatha Christie'),('JK Rowling'), ('Mark Twain'), ('Machado de Assis'), ('M�rio de Andrade')

INSERT INTO Livros(Livro)
	VALUES('Harry Potter'),('O Corvo'),('Assasinato no Expresso Oriente'),('As Aventuras de Tom Sawyer'),('It a Coisa'),('Macuna�ma'),('Dom Casmurro')

INSERT INTO Livros (Livro, IdAutores, IdG�neros, Sin�pse, Lan�amento)
	VALUES('Animais Fant�sticos', 4, 3, 'Os animais do mundo da magia descobrem o mundo dos torouxas, caosando caos e destrui��o', '10.10.2010')

UPDATE Livros
	SET IdAutores = 6
	WHERE IdLivros = 7;

UPDATE Livros
	SET IdG�neros = 4
	WHERE IdLivros = 7;


SELECT *
	FROM G�neros
SELECT *
	FROM Autores
SELECT *
	FROM Livros

SELECT Livros.*, Autores.Autor, G�neros.G�nero
FROM Livros
LEFT JOIN Autores
ON Livros.IdAutores = Autores.IdAutores
LEFT JOIN G�neros
ON Livros.IdG�neros = G�neros.IdG�neros


ALTER TABLE Livros
  ADD Sin�pse VARCHAR(200);

UPDATE Livros
	SET	Sin�pse = 'Harry vai para hogwarts e enfrenta aventuras m�gicas (literalmente)'
	WHERE IdLivros = 1;
UPDATE Livros
	SET	Sin�pse = 'Um corvo doidasso mata um monte de maluco'
	WHERE IdLivros = 2;
UPDATE Livros
	SET	Sin�pse = 'L� na china o trem atropela geral'
	WHERE IdLivros = 3;
UPDATE Livros
	SET	Sin�pse = 'Tom Sawyer vai pro tri�ngulo das bermudas e fica doidasso'
	WHERE IdLivros = 4;
UPDATE Livros
	SET	Sin�pse = 'oS paAlHA�Os VAo aO AtAquE TA eM sHoQQ??'
	WHERE IdLivros = 5;
UPDATE Livros
	SET	Sin�pse = 'Romance chato sem emo��o'
	WHERE IdLivros = 6;
UPDATE Livros
	SET	Sin�pse = 'Dom Casmurro � um safadinho que vai pra gandaia'
	WHERE IdLivros = 7;

ALTER TABLE Livros
  ADD Lan�amento datetime

UPDATE Livros
  SET Lan�amento = CONVERT (datetime,'10.10.2010')
  WHERE IdLivros = 7;







