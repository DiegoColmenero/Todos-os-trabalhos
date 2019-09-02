USE M_SSolve

INSERT INTO Clientes (NomeFantasia, CNPJ, RazaoSocial, Endereco)
	VALUES ('Starbucks',123456,'Starbucks Corporation','Av Paulista 2026, SP')
		  ,('Cinemark',654321,'Cinemark Holdings','Av Industrial 600, SA')
		  ,('Habib´s',112233,'MS Arabian Food','Av Ipiranga 794, SP')

INSERT INTO Locais (Local)
	VALUES ('Cozinha'),('Banheiro'),('Garagem'),('Sala de estar')

INSERT INTO Funcionarios (Nome)
	VALUES ('Raul'),('Renata'),('Juan'),('Diego')

INSERT INTO Servicos (Servico, Preco, Descricao)
	VALUES ('Manutenção',100,'Manutenção geral do local e derivados')
		  ,('Limpeza',95,'Limpeza geral do local')
		  ,('Troca de equipamentos',150,'Troca de equipamentos quebrados')
		  ,('Instalação de equipamentos',230,'Instalação de novos equipamentos')

INSERT INTO Atendimentos (DataInicio, DataFim, IdCliente, IdLocal, IdServico)
	VALUES ('2019-10-12T17:50:00','2019-10-14T17:50:00',2,1,2)
		  ,('2019-10-15T17:50:00','2019-10-17T17:50:00',2,2,2)
		  ,('2019-10-18T17:50:00','2019-10-20T17:50:00',2,4,1)
		  ,('2019-10-21T17:50:00','2019-10-23T17:50:00',1,3,3)
		  ,('2019-10-24T17:50:00','2019-10-26T17:50:00',3,2,2)
		  ,('2019-10-27T17:50:00','2019-10-29T17:50:00',3,1,4)

INSERT INTO Encarregados (IdAtendimento, IdFuncionario)
	VALUES (1,1),(1,4),(2,3),(2,4),(3,1),(3,2),(3,3),(3,4),(4,1),(5,3),(6,4),(6,2)

SELECT *
	FROM Clientes
SELECT *
	FROM Servicos
SELECT *
	FROM Locais
SELECT *
	FROM Atendimentos
SELECT *
	FROM Encarregados
SELECT *
	FROM Funcionarios