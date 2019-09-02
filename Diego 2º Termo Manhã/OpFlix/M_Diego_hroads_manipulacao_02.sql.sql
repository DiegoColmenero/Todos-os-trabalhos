USE M_Hroads

INSERT INTO TiposHabilidade (TipoHabilidade)
	VALUES ('Ataque'),('Defesa'),('Cura'),('Magia')

INSERT INTO Habilidades (Habilidade, IdTipoHabilidade)
	VALUES ('Lança Motal',1),('Escudo Supremo',2),('Recuperar Vida',3)

INSERT INTO Habilidades (Habilidade, IdTipoHabilidade)
	VALUES ('O Feitiço do Vazio',4)
	      ,('Manter a união',2)

INSERT INTO Habilidades (Habilidade, IdTipoHabilidade)
	VALUES ('Explosão Cósmica',4)

	

INSERT INTO Classes (Classe)
	VALUES ('Bárbaro'),('Cruzado'),('Caçadora de Demônios'),('Monge'),('Necromante'),('Feiticeito'),('Arcanista')

INSERT INTO Poderes (IdClasse, IdHabilidade)
	VALUES (1,1),(1,2),(2,2),(3,1),(4,3),(6,3)

INSERT INTO Poderes (IdClasse)
	VALUES (5),(7)

INSERT INTO Poderes (IdClasse, IdHabilidade)
	VALUES (4,5)

INSERT INTO Personagens (Nome, CapacidadeVida, CapacidadeMana, DataCriacao, DataAtualizacao, IdClasse)
	VALUES ('Aatrox',100,100,'2016-03-17T22:50:00',GETDATE(),3)

INSERT INTO Personagens (Nome, CapacidadeVida, CapacidadeMana, DataCriacao, DataAtualizacao, IdClasse)
	VALUES ('Karma',90,100,'2016-03-17T22:50:00',GETDATE(),2)
		  ,('Yoric',210,40,'2016-03-17T22:50:00',GETDATE(),5)
		

INSERT INTO Personagens (Nome, CapacidadeVida, CapacidadeMana, DataCriacao, DataAtualizacao, IdClasse)
	VALUES ('Shen',430,150,'2016-03-17T22:50:00',GETDATE(),4)
		   ,('Lulu',50,100,'2016-03-17T22:50:00',GETDATE(),6)
		   ,('Lux',65,170,'2016-03-17T22:50:00',GETDATE(),7)

INSERT INTO Personagens (Nome, CapacidadeVida, CapacidadeMana, DataCriacao, DataAtualizacao, IdClasse)
	VALUES ('BitBug',70,100,'2016-03-17T22:50:00',GETDATE(),4)
		  ,('Fer8',75,60,'2018-03-18T22:50:00',GETDATE(),7)

UPDATE Personagens
	SET Nome = 'Fer7'
	WHERE Nome = 'Fer8'

UPDATE Classes
	SET Classe = 'Necromancer'
	WHERE Classe = 'Necromante'

UPDATE Poderes
	SET IdHabilidade = 4
	WHERE IdClasse = 7




