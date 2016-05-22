/* 1. Trigger que verifica se o l�der de uma equipa de urg�ncia � um m�dico*/

CREATE TRIGGER Lider
         AFTER INSERT
            ON EquipaUrgencia
      FOR EACH ROW
          WHEN (
    SELECT numeroFuncionario
      FROM Funcionario
     WHERE NOT EXISTS (
                   SELECT *
                     FROM Funcionario
                    WHERE numeroFuncionario == NEW.idLider AND 
                          funcao == 'Medico'
               )
	)
BEGIN
    SELECT RAISE(ABORT, 'Lider invalido');
END;

/*TESTE: INSERT INTO EquipaUrgencia VALUES(4, '2016-04-25 10:00', '2016-04-26 19:00', 512);*/


/* 2. Trigger que verifica se n�o h� englobamento de turnos ao inserir equipas de urg�ncia, 
ou seja, que n�o h� um turno dentro do outro.*/

CREATE TRIGGER Turno
         AFTER INSERT
            ON EquipaUrgencia
      FOR EACH ROW
          WHEN (
    SELECT idLider
      FROM EquipaUrgencia
     WHERE EXISTS (
               SELECT *
                 FROM EquipaUrgencia
                WHERE idEquipa != NEW.idEquipa AND (
                      dataInicio > NEW.dataInicio AND 
                      dataFim < NEW.dataFim) OR (
                      dataInicio < NEW.dataInicio AND 
                      dataFim > NEW.dataFim)
           )
)
BEGIN
    SELECT RAISE(ABORT, 'Turno invalido.');
END;

/*TESTE: INSERT INTO EquipaUrgencia VALUES(5, '2016-04-25 09:00', '2016-04-26 20:00', 517);*/



/* 3. Trigger que verifica se a inscri��o � feita por um funcion�rio que esteja na equipa de urg�ncia ativa.*/

CREATE TRIGGER horaEntrada
         AFTER INSERT
            ON Inscricao
      FOR EACH ROW
          WHEN (
    SELECT numeroFuncionario
      FROM Funcionario
     WHERE NOT EXISTS (
                   SELECT *
                     FROM (
                              Funcionario
                              INNER JOIN
                              EquipaUrgencia ON (EquipaUrgencia.idEquipa = Funcionario.idEquipa AND 
                                                 NEW.numeroFuncionario = Funcionario.numeroFuncionario) 
                          )
                    WHERE EquipaUrgencia.dataInicio < NEW.horaEntrada AND 
                          EquipaUrgencia.dataFim > NEW.horaEntrada
               )
)
BEGIN
    SELECT RAISE(ABORT, 'Hora de entrada invalida');
END;

/*TESTE: INSERT INTO Inscricao(urgenciaID, numeroUtente, numeroFuncionario, horaEntrada) VALUES(12, 1007, 507, '2016-04-22 18:21');*/



/* 4. 4. Trigger que, ao apagar uma especialidade da lista do hospital, 
coloca o valor da especialidade dos m�dicos correspondentes a NULL.*/

CREATE TRIGGER EspecialidadeDelete
         AFTER DELETE
            ON Especialidade
      FOR EACH ROW
BEGIN
    UPDATE Medico
       SET idEspecialidade = NULL
     WHERE Medico.idEspecialidade = OLD.idEspecialidade;
END;

/*TESTE: DELETE FROM Especialidade WHERE Especialidade.designacao = 'Cardiologia';*/



/* 5. Trigger que, ao se atualizar o ID de uma sala cir�rgica, atualiza-o tamb�m nas cirurgias que l� foram realizadas.*/

CREATE TRIGGER SalaCirurgicaUpdate
         AFTER UPDATE OF idSalaCirurgica
            ON SalaCirurgica
      FOR EACH ROW
BEGIN
    UPDATE Cirurgia
       SET idSalaCirurgica = NEW.idSalaCirurgica
     WHERE Cirurgia.idSalaCirurgica = OLD.idSalaCirurgica;
END;

/*TESTE: UPDATE SalaCirurgica SET idSalaCirurgica = 500, bloco = 'D' WHERE idSalaCirurgica = 3045;*/
