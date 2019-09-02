CREATE DATABASE M_SSolve

USE M_SSolve

CREATE TABLE Clientes (
IdCliente		INT PRIMARY KEY IDENTITY
,NomeFantasia	VARCHAR(200)
,CNPJ			INT 
,RazaoSocial	VARCHAR(200)
,Endereco		VARCHAR(200)
);

CREATE TABLE Locais (
IdLocal			INT PRIMARY KEY IDENTITY
,Local			VARCHAR(200)
);

CREATE TABLE Servicos (
IdServico		INT PRIMARY KEY IDENTITY
,Servico		VARCHAR(200)
,Preco			INT
,Descricao		TEXT
);

CREATE TABLE Funcionarios (
IdFuncionario	INT PRIMARY KEY IDENTITY
,Nome			VARCHAR(200)
);

CREATE TABLE Atendimentos (
IdAtendimento	INT PRIMARY KEY IDENTITY
,DataInicio		DATETIME 
,DataFim		DATETIME
,IdCliente		INT FOREIGN KEY REFERENCES Clientes (IdCliente)
,IdLocal		INT FOREIGN KEY REFERENCES Locais (IdLocal)
,IdServico		INT FOREIGN KEY REFERENCES Servicos (IdServico)
);

CREATE TABLE Encarregados (
IdAtendimento	INT FOREIGN KEY REFERENCES Atendimentos (IdAtendimento)
,IdFuncionario	INT FOREIGN KEY REFERENCES Funcionarios (IdFuncionario)
);



SELECT *
	FROM Clientes
SELECT *
	FROM Funcionarios
SELECT * 
	FROM Servicos
SELECT *
	FROM Locais
SELECT *
	FROM Atendimentos
SELECT *
	FROM Encarregados