USE M_PSales
SELECT *
	FROM Cursos
SELECT *
	FROM Disciplinas

SELECT Disciplinas.*, Cursos.Nome
	FROM Disciplinas
	FULL JOIN Cursos
	ON Disciplinas.IdCurso = Cursos.IdCurso;