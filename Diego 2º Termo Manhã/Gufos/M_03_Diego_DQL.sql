USE M_Gufos

SELECT *
	FROM Usuarios

SELECT *
	FROM Eventos

SELECT *	
	FROM Categorias ORDER BY IdCategoria ASC

SELECT *
	FROM Presencas

SELECT Eventos.*, Categorias.Nome
	FROM Eventos
	JOIN Categorias
	ON Eventos.IdCategoria = Categorias.IdCategoria;

SELECT Presencas.*, Usuarios.*, Eventos.*, Categorias.Nome
	FROM Presencas
	JOIN Usuarios
	ON Presencas.IdUsuario = Usuarios.IdUsuario
	JOIN Eventos
	ON Presencas.IdEvento = Eventos.IdEvento
	JOIN Categorias
	ON Eventos.IdCategoria = Categorias.IdCategoria




 