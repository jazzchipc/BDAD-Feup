/*1. Qual é a especialidade do médico chamado "Rafael"? */

.shell echo 1. Qual e a especialidade do medico chamado 'Rafael'?

SELECT designacao
FROM
	(Pessoa 
	INNER JOIN
	Funcionario
	ON Pessoa.idPessoa = Funcionario.idPessoa
	INNER JOIN
	Medico
	ON Funcionario.numeroFuncionario = Medico.numeroFuncionario
	INNER JOIN
	Especialidade
	ON Medico.idEspecialidade = Especialidade.idEspecialidade)
WHERE Pessoa.nome = 'Rafael';

/*2. Qual é o conjunto de IDs dos utentes do sexo masculino com idade inferior 
a 30 anos que foram às urgência entre o dia 22 e 26 de Abril de 2016?*/

.shell echo.
.shell echo 2. Qual e o conjunto de IDs dos utentes do sexo masculino com idade inferior a 30 anos que foram as urgência entre o dia 22 e 26 de Abril de 2016?

SELECT DISTINCT Utente.numeroUtente
FROM
	(Pessoa
	INNER JOIN 
	Utente
	ON Pessoa.idPessoa = Utente.idPessoa
	INNER JOIN
	Inscricao
	ON Utente.numeroUtente = Inscricao.numeroUtente)
WHERE 
((Inscricao.horaEntrada >= '2016-04-22' AND Inscricao.horaEntrada <= '2016-04-26')
AND
(Pessoa.sexo == 'Masculino' AND Pessoa.idade < 30))
ORDER BY Utente.numeroUtente;

/*3. Quais são os números dos utentes que foram atendidos pelo médico
"Duque" ou que têm a vacina contra o "Tetanto"?*/

.shell echo.
.shell echo 3. Quais sao os numeros dos utentes que foram atendidos pelo medico 'Duque' ou que tem a vacina contra o 'Tetanto'?

SELECT DISTINCT Utente.numeroUtente
FROM
	(Pessoa
	INNER JOIN
	Funcionario
	ON Pessoa.idPessoa = Funcionario.idPessoa
	INNER JOIN
	Tratamento
	ON Tratamento.numeroFuncionario = Funcionario.numeroFuncionario
	INNER JOIN
	Utente
	ON Utente.numeroUtente = Tratamento.numeroUtente)
WHERE Pessoa.nome = 'Duque'

UNION

SELECT Utente.numeroUtente
FROM
	(Utente
	INNER JOIN
	UtenteVacina
	ON Utente.numeroUtente = UtenteVacina.numeroUtente
	INNER JOIN
	Vacina
	ON Vacina.idVacina = UtenteVacina.idVacina
	)
WHERE Vacina.nome = 'Tetano';

/*4. Quantas pessoas já tomaram a vacina contra o "Tetano"?*/

.shell echo.
.shell echo 4. Quantas pessoas ja tomaram a vacina contra o "Tetano"?

SELECT COUNT(*) numeroUtente FROM UtenteVacina
INNER JOIN Vacina
ON Vacina.idVacina=UtenteVacina.idVacina
WHERE Vacina.nome='Tetano';


/*5. Quais os IDs dos médicos de área de ação "Cirurgica" que estiveram 
na equipa de urgência ativa no dia 26 de Abril de 2016 às 13:00?*/

.shell echo.
.shell echo 5. Quais os IDs dos medicos de area de acao "Cirurgica" que estiveram na equipa de urgencia ativa no dia 26 de Abril de 2016 as 13:00?

SELECT Medico.numeroFuncionario FROM Medico
INNER JOIN Funcionario
ON(Medico.numeroFuncionario=Funcionario.numeroFuncionario)
INNER JOIN EquipaUrgencia
ON(EquipaUrgencia.dataInicio<='2016-04-26 13:00' AND EquipaUrgencia.dataFim >'2016-04-26 13:00')
WHERE (Medico.areaAcao='Cirurgica' AND Funcionario.idEquipa=EquipaUrgencia.idEquipa);


/*6. Quais os IDs dos utentes cuja triagem resultou num nível de prioridade "emergente" ou "muito urgente"?*/

.shell echo.
.shell echo 6. Quais os IDs dos utentes cuja triagem resultou num nivel de prioridade "emergente" ou "muito urgente"?

SELECT numeroUtente FROM Triagem
WHERE Triagem.prioridade IN('emergente','muitoUrgente');


/*7. Quais os nomes, idades e sexo dos utentes que ficaram mais do que 1 dia nas urgências? E quanto pagaram?*/

.shell echo.
.shell echo 7. Quais os nomes, idades e sexo dos utentes que ficaram mais do que 1 dia nas urgencias? E quanto pagaram?
.shell echo.
.shell echo Nome-Idade-Sexo-Taxa



SELECT DISTINCT nome, idade, sexo, taxa
FROM
	(Pessoa
	INNER JOIN
	Utente
	ON Pessoa.idPessoa = Utente.idPessoa
	INNER JOIN
	Inscricao
	ON Utente.numeroUtente = Inscricao.numeroUtente
	INNER JOIN
	Checkout
	ON Utente.numeroUtente = Checkout.numeroUtente)
GROUP BY Pessoa.nome
HAVING (julianday(Checkout.dataSaida) - julianday(Inscricao.horaEntrada) > 1);


/*8. Quais os numeroFuncionario dos funcionarios que participaram na equipa com urgênciaID=1?*/

.shell echo.
.shell echo 8. Quais os numeroFuncionario dos funcionarios que participaram na equipa com urgenciaID=1?

SELECT Funcionario.funcao, Funcionario.numeroFuncionario
FROM 	
	(Funcionario
	INNER JOIN
	Inscricao
	ON Funcionario.numeroFuncionario = Inscricao.numeroFuncionario )
	 WHERE(Inscricao.urgenciaID = 1)

UNION

SELECT Funcionario.funcao, Funcionario.numeroFuncionario
FROM 	
	(Funcionario
	INNER JOIN
	Checkout
	ON Funcionario.numeroFuncionario = Checkout.numeroFuncionario )
	 WHERE(Checkout.urgenciaID = 1)

UNION

SELECT Funcionario.funcao, Funcionario.numeroFuncionario
FROM 	
	(Funcionario
	INNER JOIN
	Triagem
	ON Funcionario.numeroFuncionario = Triagem.numeroFuncionario )
	 WHERE(Triagem.urgenciaID = 1)

UNION

SELECT Funcionario.funcao, Funcionario.numeroFuncionario
FROM 	
	(Funcionario
	INNER JOIN
	Diagnostico
	ON Funcionario.numeroFuncionario = Diagnostico.numeroFuncionario )
	 WHERE(Diagnostico.urgenciaID = 1)

UNION

SELECT Funcionario.funcao, Funcionario.numeroFuncionario
FROM 	
	(Funcionario
	INNER JOIN
	Tratamento
	ON Funcionario.numeroFuncionario = Tratamento.numeroFuncionario )
	 WHERE(Tratamento.urgenciaID = 1);

/*9. Qual o ID do médico que realizou mais cirurgias? Quantas realizou?*/

.shell echo.
.shell echo 9. Qual o ID do medico que realizou mais cirurgias? Quantas realizou?

SELECT numeroFuncionario, MAX(cirurgias)
FROM(
SELECT Medico.numeroFuncionario, COUNT(*) as cirurgias
FROM
	(Medico
	INNER JOIN
	Tratamento
	ON Medico.numeroFuncionario = Tratamento.numeroFuncionario 
	INNER JOIN
	Cirurgia
	ON Tratamento.urgenciaID = Cirurgia.urgenciaID)
GROUP BY Medico.numeroFuncionario);

/*10. Qual o nome e a idade do 1º e 2º utente mais velhos que foram às urgências e qual o ID dos médicos que os atenderam?*/

.shell echo.
.shell echo 10. Qual o nome e a idade do primeiro e segundo utente mais velhos que foram as urgencias e qual o ID dos medicos que os atenderam?

SELECT Pessoa.nome, MAX(Pessoa.idade), Tratamento.numeroFuncionario
FROM 	
	(Tratamento
	LEFT JOIN
	Utente
	ON Tratamento.numeroUtente = Utente.numeroUtente
	LEFT JOIN
	Pessoa
	ON Pessoa.idPessoa = Utente.idPessoa)

UNION

SELECT Pessoa.nome, MAX(Pessoa.idade), Tratamento.numeroFuncionario
FROM 	
	(Tratamento
	LEFT JOIN
	Utente
	ON Tratamento.numeroUtente = Utente.numeroUtente
	LEFT JOIN
	Pessoa
	ON Pessoa.idPessoa = Utente.idPessoa)
WHERE (Pessoa.idade < 
		(SELECT MAX(Pessoa.idade)
		FROM
			(Tratamento
			LEFT JOIN
			Utente
			ON Tratamento.numeroUtente = Utente.numeroUtente
			LEFT JOIN
			Pessoa
			ON Pessoa.idPessoa = Utente.idPessoa)));
			
/*11. Quantas pessoas registadas no sistema não são médicas?*/

.shell echo.
.shell echo Quantas pessoas registadas no sistema nao sao medicas.

SELECT COUNT(*) idPessoa
FROM
	(Pessoa
	LEFT JOIN
	Funcionario
	ON Pessoa.idPessoa = Funcionario.idPessoa
	LEFT JOIN
	Medico
	ON Funcionario.numeroFuncionario = Medico.numeroFuncionario)
WHERE Medico.numeroFuncionario IS NULL;
	