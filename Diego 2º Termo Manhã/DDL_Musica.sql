CREATE TABLE EstilosMusicais(
IdEstilosMusicais INT PRIMARY KEY IDENTITY
,Nome			VARCHAR(200)UNIQUE NOT NULL
);

CREATE TABLE Artistas(
IdArtistas INT PRIMARY KEY IDENTITY
,Nome			VARCHAR(200)UNIQUE NOT NULL
,IdEstilosMusicais INT FOREIGN KEY REFERENCES EstilosMusicais (IdEstilosMusicais)
);
DROP TABLE Artistas;

/*
	/\   /\
   ( 0 _ 0 )
    (") (")
   