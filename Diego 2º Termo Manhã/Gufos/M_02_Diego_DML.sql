USE M_Gufos

INSERT INTO Usuarios (Nome, Email, Senha, Permissao)
	VALUES ('Administrador','admin@admin.com','123456','Administrador');
INSERT INTO Usuarios (Nome, Email, Senha, Permissao)
	VALUES ('Kendra','kendra@senai.com','123456','Aluno');

INSERT INTO Categorias (Nome)
	VALUES ('Jogos'),('Meetup'),('Futebol');

INSERT INTO Eventos (Titulo, Descricao, DataEvento, Ativo, Localizacao, IdCategoria)
	VALUES ('Futebol','Vem pro fut vem é só tapa de qualidade monstra',GETDATE(),1,'No sesão',3);

INSERT INTO Presencas (IdUsuario, IdEvento)
	VALUES (1,1),(2,1),(1,2)



