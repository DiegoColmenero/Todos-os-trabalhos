USE M_SStop
INSERT INTO EstilosMusicais(Nome)
	VALUES('pop')

INSERT INTO EstilosMusicais(Nome)
	VALUES('Metal'),('Sertanejo'), ('Samba'), ('Trap'), ('Mpb') ,('Indie')

INSERT INTO Artistas(Nome)
	VALUES('Coldplay')

UPDATE EstilosMusicais
	SET Nome = 'Pop'
	WHERE IdEstilosMusicais = 1;

INSERT INTO Artistas(Nome,IdEstilosMusicais)
	VALUES('AC/DC', 2)
	
SELECT *
	FROM Artistas

SELECT *
	FROM EstilosMusicais
	WHERE IdEstilosMusicais = 4;

INSERT INTO Artistas(Nome,IdEstilosMusicais)
	VALUES('Legião Urbanizada', 2), ('Metallica', 3)

UPDATE Artistas
	SET IdEstilosMusicais = 1
	WHERE IdArtistas = 1002;

DELETE FROM Artistas
	WHERE IdEstilosMusicais = 3;

SELECT *
	FROM EstilosMusicais
	WHERE Nome = 'Pop';

SELECT *
	FROM EstilosMusicais
	WHERE Nome LIKE 'S%';

SELECT *
	FROM EstilosMusicais
	WHERE Nome LIKE '%L';

SELECT *
	FROM EstilosMusicais
	WHERE Nome LIKE '%P%';

SELECT Artistas.*, EstilosMusicais.Nome
	FROM Artistas
	FULL JOIN EstilosMusicais
	ON Artistas.IdEstilosMusicais = EstilosMusicais.IdEstilosMusicais;




	
