USE M_SSolve



SELECT Atendimentos.IdAtendimento, FORMAT( Atendimentos.DataInicio, 'dd/MM/yyyy', 'pt-BR' ) AS 'DataInicio', FORMAT( Atendimentos.DataFim, 'dd/MM/yyyy', 'pt-BR' ) AS 'DataFim' ,   Clientes.NomeFantasia, Clientes.CNPJ, Clientes.RazaoSocial, Clientes.Endereco, Servicos.Servico, Servicos.Descricao, Locais.Local, Funcionarios.Nome, Encarregados.IdFuncionario
	FROM Atendimentos
	JOIN Clientes
	ON Atendimentos.IdCliente = Clientes.IdCliente
	JOIN Servicos
	ON Atendimentos.IdServico = Servicos.IdServico
	JOIN Locais
	ON Atendimentos.IdLocal = Locais.IdLocal
	JOIN Encarregados
	ON Atendimentos.IdAtendimento = Encarregados.IdAtendimento
	JOIN Funcionarios 
	ON Funcionarios.IdFuncionario = Encarregados.IdFuncionario
	 





SELECT Funcionarios.Nome, Encarregados.*
	FROM Encarregados
	JOIN Funcionarios
	ON Encarregados.IdFuncionario = Funcionarios.IdFuncionario


       

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
