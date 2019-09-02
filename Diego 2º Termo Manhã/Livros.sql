CREATE DATABASE M_Livros
 
USE M_Livros

CREATE TABLE Gêneros(
IdGêneros		INT PRIMARY KEY IDENTITY
,Gênero			VARCHAR(200)UNIQUE NOT NULL
);

CREATE TABLE Autores(
IdAutores		INT PRIMARY KEY IDENTITY
,Autor			VARCHAR(200)UNIQUE NOT NULL
);

CREATE TABLE Livros(
IdLivros	INT PRIMARY KEY IDENTITY
,Livro		VARCHAR(200)UNIQUE NOT NULL
,IdAutores	INT FOREIGN KEY REFERENCES Autores (IdAutores)
,IdGêneros	INT FOREIGN KEY REFERENCES Gêneros (IdGêneros)
);

INSERT INTO Gêneros (Gênero)
	VALUES('Terror'),('Suspense'),('Aventura'),('Romance')

INSERT INTO Autores(Autor)
	VALUES('Edgar Allan Poe'),('Stephen King'),('Agatha Christie'),('JK Rowling'), ('Mark Twain'), ('Machado de Assis'), ('Mário de Andrade')

INSERT INTO Livros(Livro)
	VALUES('Harry Potter'),('O Corvo'),('Assasinato no Expresso Oriente'),('As Aventuras de Tom Sawyer'),('It a Coisa'),('Macunaíma'),('Dom Casmurro')

INSERT INTO Livros (Livro, IdAutores, IdGêneros, Sinópse, Lançamento)
	VALUES('Animais Fantásticos', 4, 3, 'Os animais do mundo da magia descobrem o mundo dos torouxas, caosando caos e destruição', '10.10.2010')

UPDATE Livros
	SET IdAutores = 6
	WHERE IdLivros = 7;

UPDATE Livros
	SET IdGêneros = 4
	WHERE IdLivros = 7;


SELECT *
	FROM Gêneros
SELECT *
	FROM Autores
SELECT *
	FROM Livros

SELECT Livros.*, Autores.Autor, Gêneros.Gênero
FROM Livros
LEFT JOIN Autores
ON Livros.IdAutores = Autores.IdAutores
LEFT JOIN Gêneros
ON Livros.IdGêneros = Gêneros.IdGêneros


ALTER TABLE Livros
  ADD Sinópse VARCHAR(200);

UPDATE Livros
	SET	Sinópse = 'Harry vai para hogwarts e enfrenta aventuras mágicas (literalmente)'
	WHERE IdLivros = 1;
UPDATE Livros
	SET	Sinópse = 'Um corvo doidasso mata um monte de maluco'
	WHERE IdLivros = 2;
UPDATE Livros
	SET	Sinópse = 'Lá na china o trem atropela geral'
	WHERE IdLivros = 3;
UPDATE Livros
	SET	Sinópse = 'Tom Sawyer vai pro triângulo das bermudas e fica doidasso'
	WHERE IdLivros = 4;
UPDATE Livros
	SET	Sinópse = 'oS paAlHAçOs VAo aO AtAquE TA eM sHoQQ??'
	WHERE IdLivros = 5;
UPDATE Livros
	SET	Sinópse = 'Romance chato sem emoção'
	WHERE IdLivros = 6;
UPDATE Livros
	SET	Sinópse = 'Dom Casmurro é um safadinho que vai pra gandaia'
	WHERE IdLivros = 7;

ALTER TABLE Livros
  ADD Lançamento datetime

UPDATE Livros
  SET Lançamento = CONVERT (datetime,'10.10.2010')
  WHERE IdLivros = 7;







