USE M_Hroads


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

SELECT Personagens.Nome, Personagens.CapacidadeVida, Personagens.CapacidadeMana, 
FORMAT( Personagens.DataCriacao, 'dd/MM/yyyy', 'pt-BR' ) AS 'DataCriacao',
FORMAT( Personagens.DataAtualizacao, 'dd/MM/yyyy', 'pt-BR' ) AS 'DataAtualizacao' ,	
Classes.Classe, Poderes.IdHabilidade , Habilidades.Habilidade, TiposHabilidade.TipoHabilidade
	FROM Personagens
	FULL JOIN Classes
	ON Personagens.IdClasse = Classes.IdClasse
	FULL JOIN Poderes
	ON Poderes.IdClasse = Classes.IdClasse
	FULL JOIN Habilidades
	ON Poderes.IdHabilidade = Habilidades.IdHabilidade
	FULL JOIN TiposHabilidade
	ON Habilidades.IdTipoHabilidade = TiposHabilidade.IdTipoHabilidade

SELECT Classe
	FROM Classes

SELECT Habilidades.Habilidade, TiposHabilidade.TipoHabilidade
	FROM Habilidades
	JOIN TiposHabilidade
	ON Habilidades.IdTipoHabilidade = TiposHabilidade.IdTipoHabilidade

SELECT Personagens.Nome, Classes.Classe
	FROM Personagens
	FULL JOIN Classes
	ON Personagens.IdClasse = Classes.IdClasse


	
