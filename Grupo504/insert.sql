/*Pessoas -- Utentes*/

/*Com morada*/
INSERT INTO Pessoa(idPessoa, nome, idade, sexo, morada, NIF) VALUES (1, 'Renato Abreu', 19, 'Masculino', 'Esposende', 123456789);
INSERT INTO Pessoa(idPessoa, nome, idade, sexo, morada, NIF) VALUES (2, 'Diogo Duque', 19, 'Masculino', 'Trofa', 234567891);
INSERT INTO Pessoa(idPessoa, nome, idade, sexo, morada, NIF) VALUES (3, 'Jos� Aleixo', 19, 'Masculino', 'Mortosa', 345678912);
INSERT INTO Pessoa(idPessoa, nome, idade, sexo, morada, NIF) VALUES (4, 'Mariana', 25, 'Feminino', 'Esposende', 333222111);
INSERT INTO Pessoa(idPessoa, nome, idade, sexo, morada, NIF) VALUES (5, 'Francisco', 28, 'Masculino', 'Trofa', 444333222);
INSERT INTO Pessoa(idPessoa, nome, idade, sexo, morada, NIF) VALUES (6, 'Olga', 37, 'Feminino', 'Mortosa', 555444333);

/*Sem morada*/
INSERT INTO Pessoa(idPessoa, nome, idade, sexo, NIF) VALUES (7, 'Nuno Vieira', 27, 'Masculino', 456789123);
INSERT INTO Pessoa(idPessoa, nome, idade, sexo, NIF) VALUES (8, 'Pedro Filipe', 57, 'Masculino', 567891234);
INSERT INTO Pessoa(idPessoa, nome, idade, sexo, NIF) VALUES (9, 'Liliana', 27, 'Feminino', 666555444);
INSERT INTO Pessoa(idPessoa, nome, idade, sexo, NIF) VALUES (10, 'Joao', 57, 'Masculino', 777666555);

/*Pessoas -- Funcion�rios*/

INSERT INTO Pessoa(idPessoa, nome, idade, sexo, NIF) VALUES (11, 'Fernando', 27, 'Masculino', 789123456);
INSERT INTO Pessoa(idPessoa, nome, idade, sexo, morada, NIF) VALUES (12, 'Elias', 43, 'Masculino', 'Lisboa', 891234567);
INSERT INTO Pessoa(idPessoa, nome, idade, sexo, NIF) VALUES (13, 'Hugo', 57, 'Masculino', 912345678);
INSERT INTO Pessoa(idPessoa, nome, idade, sexo, morada, NIF) VALUES (14, 'Ines', 28, 'Feminino', 'Porto', 111111111);
INSERT INTO Pessoa(idPessoa, nome, idade, sexo, NIF) VALUES (15, 'Joao', 42, 'Masculino', 222222222);
INSERT INTO Pessoa(idPessoa, nome, idade, sexo, NIF) VALUES (16, 'Liliana', 27, 'Feminino', 333333333);
INSERT INTO Pessoa(idPessoa, nome, idade, sexo, NIF) VALUES (17, 'Manuel', 43, 'Masculino', 444444444);
INSERT INTO Pessoa(idPessoa, nome, idade, sexo, NIF) VALUES (18, 'Nuno', 57, 'Masculino', 555555555);
INSERT INTO Pessoa(idPessoa, nome, idade, sexo, morada, NIF) VALUES (19, 'Otavio', 28, 'Masculino', 'Porto', 666666666);
INSERT INTO Pessoa(idPessoa, nome, idade, sexo, NIF) VALUES (20, 'Paulo', 42, 'Masculino', 777777777);
INSERT INTO Pessoa(idPessoa, nome, idade, sexo, NIF) VALUES (21, 'Tania', 28, 'Feminino', 888888888);
INSERT INTO Pessoa(idPessoa, nome, idade, sexo, morada, NIF) VALUES (22, 'Daniel', 28, 'Masculino', 'Esposende', 999999999);
INSERT INTO Pessoa(idPessoa, nome, idade, sexo, morada, NIF) VALUES (23, 'Daniela Silva', 28, 'Feminino', 'Mortosa', 111222333);
INSERT INTO Pessoa(idPessoa, nome, idade, sexo, morada, NIF) VALUES (24, 'Catarina Peralta', 31, 'Feminino', 'Vila do Conde', 888999111);
INSERT INTO Pessoa(idPessoa, nome, idade, sexo, morada, NIF) VALUES (25, 'Aleixo Correia', 57, 'Masculino', 'Esposende', 999111222);

/*Pessoas -- Funcion�rios -- M�dicos*/

INSERT INTO Pessoa(idPessoa, nome, idade, sexo, NIF) VALUES (26, 'Duque', 42, 'Masculino', 121212121);
INSERT INTO Pessoa(idPessoa, nome, idade, sexo, NIF) VALUES (27, 'F�bio', 28, 'Masculino', 131313131);
INSERT INTO Pessoa(idPessoa, nome, idade, sexo, morada, NIF) VALUES (28, 'Pedro', 28, 'Masculino', 'Algarve', 141414141);
INSERT INTO Pessoa(idPessoa, nome, idade, sexo, morada, NIF) VALUES (29, 'Rafael', 28, 'Masculino', 'Viana', 151515151);
INSERT INTO Pessoa(idPessoa, nome, idade, sexo, morada, NIF) VALUES (30, 'Veronica', 31, 'Feminino', 'F�o', 161616161);
INSERT INTO Pessoa(idPessoa, nome, idade, sexo, morada, NIF) VALUES (31, 'Vera', 57, 'Feminino', 'Braga', 171717171);

/*Utentes*/

INSERT INTO Utente(numeroUtente, idPessoa) VALUES (1000, 1);
INSERT INTO Utente(numeroUtente, idPessoa) VALUES (1001, 2);
INSERT INTO Utente(numeroUtente, idPessoa) VALUES (1002, 3);
INSERT INTO Utente(numeroUtente, idPessoa) VALUES (1003, 4);
INSERT INTO Utente(numeroUtente, idPessoa) VALUES (1004, 5);
INSERT INTO Utente(numeroUtente, idPessoa) VALUES (1005, 6);
INSERT INTO Utente(numeroUtente, idPessoa) VALUES (1006, 7);
INSERT INTO Utente(numeroUtente, idPessoa) VALUES (1007, 8);
INSERT INTO Utente(numeroUtente, idPessoa) VALUES (1008, 9);
INSERT INTO Utente(numeroUtente, idPessoa) VALUES (1009, 10);

/*Funcion�rios*/

INSERT INTO Funcionario(numeroFuncionario, idPessoa, funcao, idEquipa) VALUES (500, 11, 'Enfermeiro', 1);
INSERT INTO Funcionario(numeroFuncionario, idPessoa, funcao, idEquipa) VALUES (501, 12, 'Enfermeiro', 1);
INSERT INTO Funcionario(numeroFuncionario, idPessoa, funcao, idEquipa) VALUES (502, 25, 'Administrativo', 1);
INSERT INTO Funcionario(numeroFuncionario, idPessoa, funcao, idEquipa) VALUES (503, 24, 'Administrativo', 1);
INSERT INTO Funcionario(numeroFuncionario, idPessoa, funcao, idEquipa) VALUES (504, 23, 'Tecnico', 1);
INSERT INTO Funcionario(numeroFuncionario, idPessoa, funcao, idEquipa) VALUES (505, 13, 'Enfermeiro', 2);
INSERT INTO Funcionario(numeroFuncionario, idPessoa, funcao, idEquipa) VALUES (506, 14, 'Enfermeiro', 2);
INSERT INTO Funcionario(numeroFuncionario, idPessoa, funcao, idEquipa) VALUES (507, 15, 'Administrativo', 2);
INSERT INTO Funcionario(numeroFuncionario, idPessoa, funcao, idEquipa) VALUES (508, 22, 'Administrativo', 2);
INSERT INTO Funcionario(numeroFuncionario, idPessoa, funcao, idEquipa) VALUES (509, 21, 'Tecnico', 2);
INSERT INTO Funcionario(numeroFuncionario, idPessoa, funcao, idEquipa) VALUES (510, 16, 'Enfermeiro', 3);
INSERT INTO Funcionario(numeroFuncionario, idPessoa, funcao, idEquipa) VALUES (511, 17, 'Enfermeiro', 3);
INSERT INTO Funcionario(numeroFuncionario, idPessoa, funcao, idEquipa) VALUES (512, 18, 'Administrativo', 3);
INSERT INTO Funcionario(numeroFuncionario, idPessoa, funcao, idEquipa) VALUES (513, 19, 'Administrativo', 3);
INSERT INTO Funcionario(numeroFuncionario, idPessoa, funcao, idEquipa) VALUES (514, 20, 'Tecnico', 3);


/*Funcion�rios -- M�dicos*/
INSERT INTO Funcionario(numeroFuncionario, idPessoa, funcao, idEquipa) VALUES (515, 26, 'Medico', 1);
INSERT INTO Funcionario(numeroFuncionario, idPessoa, funcao, idEquipa) VALUES (516, 27, 'Medico', 1);
INSERT INTO Funcionario(numeroFuncionario, idPessoa, funcao, idEquipa) VALUES (517, 28, 'Medico', 2);
INSERT INTO Funcionario(numeroFuncionario, idPessoa, funcao, idEquipa) VALUES (518, 29, 'Medico', 2);
INSERT INTO Funcionario(numeroFuncionario, idPessoa, funcao, idEquipa) VALUES (519, 30, 'Medico', 3);
INSERT INTO Funcionario(numeroFuncionario, idPessoa, funcao, idEquipa) VALUES (520, 31, 'Medico', 3);


/*M�dicos*/
INSERT INTO Medico(numeroFuncionario, idEspecialidade, areaAcao) VALUES (515, 1, 'Ortopedia');
INSERT INTO Medico(numeroFuncionario, idEspecialidade, areaAcao) VALUES (516, 2, 'Cirurgica');
INSERT INTO Medico(numeroFuncionario, idEspecialidade, areaAcao) VALUES (517, 4, 'ClinicaGeral');
INSERT INTO Medico(numeroFuncionario, idEspecialidade, areaAcao) VALUES (518, 1, 'Ortopedia');
INSERT INTO Medico(numeroFuncionario, idEspecialidade, areaAcao) VALUES (519, 3, 'Cirurgica');
INSERT INTO Medico(numeroFuncionario, idEspecialidade, areaAcao) VALUES (520, 5, 'ClinicaGeral');

/*Alergias e vacinas*/
INSERT INTO Alergia VALUES(1, 'Polen');
INSERT INTO Alergia VALUES(2, 'Acaros');
INSERT INTO Alergia VALUES(3, 'Pelos');
INSERT INTO Alergia VALUES(4, 'Alimentar');
INSERT INTO Alergia VALUES(5, 'Respiratoria');
INSERT INTO Vacina VALUES(1, 'Tetano');
INSERT INTO Vacina VALUES(2, 'Hepatite A');
INSERT INTO Vacina VALUES(3, 'Sarampo');
INSERT INTO Vacina VALUES(4, 'Varicela');
INSERT INTO Vacina VALUES(5, 'Hepatite B');

/*Especialidades*/
INSERT INTO Especialidade VALUES(1, 'Ortopedica');
INSERT INTO Especialidade VALUES(2, 'Neurocirurgiao');
INSERT INTO Especialidade VALUES(3, 'Cardiologia');
INSERT INTO Especialidade VALUES(4, 'Pediatria');
INSERT INTO Especialidade VALUES(5, 'Oncologia');

/*Salas Cirurgicas*/
INSERT INTO SalaCirurgica VALUES(2120,'B', 120);
INSERT INTO SalaCirurgica VALUES(3045,'C', 45);
INSERT INTO SalaCirurgica VALUES(4000,'B', 32);
INSERT INTO SalaCirurgica VALUES(5235,'C', 20);

/*Rela��es entre Utente e Alergia, Utente e Vacina*/
INSERT INTO UtenteAlergia VALUES(1, 1003);
INSERT INTO UtenteAlergia VALUES(2, 1008);
INSERT INTO UtenteAlergia VALUES(3, 1004);
INSERT INTO UtenteAlergia VALUES(2, 1005);
INSERT INTO UtenteAlergia VALUES(5, 1007);
INSERT INTO UtenteVacina VALUES(1, 1004, '1996-07-01');
INSERT INTO UtenteVacina VALUES(1, 1003, '2002-02-28');
INSERT INTO UtenteVacina VALUES(1, 1000, '2001-03-21');
INSERT INTO UtenteVacina VALUES(2, 1003, '2002-02-28');
INSERT INTO UtenteVacina VALUES(2, 1000, '2001-03-21');

/*Equipas de Urg�ncia*/
INSERT INTO EquipaUrgencia VALUES(1, '2016-04-22 15:00', '2016-04-23 12:00', 515);
INSERT INTO EquipaUrgencia VALUES(2, '2016-04-23 20:00', '2016-04-24 15:00', 518);
INSERT INTO EquipaUrgencia VALUES(3, '2016-04-25 10:00', '2016-04-26 19:00', 520);

/*Inscri��es*/
INSERT INTO Inscricao(urgenciaID, numeroUtente, numeroFuncionario, horaEntrada) VALUES(1, 1000, 502, '2016-04-22 17:00');
INSERT INTO Inscricao(urgenciaID, numeroUtente, numeroFuncionario, horaEntrada) VALUES(2, 1001, 503, '2016-04-22 22:00');
INSERT INTO Inscricao(urgenciaID, numeroUtente, numeroFuncionario, horaEntrada) VALUES(3, 1003, 502, '2016-04-23 09:00');
INSERT INTO Inscricao(urgenciaID, numeroUtente, numeroFuncionario, horaEntrada) VALUES(4, 1002, 507, '2016-04-23 21:00');
INSERT INTO Inscricao(urgenciaID, numeroUtente, numeroFuncionario, horaEntrada) VALUES(5, 1005, 508, '2016-04-24 09:00');
INSERT INTO Inscricao(urgenciaID, numeroUtente, numeroFuncionario, horaEntrada) VALUES(6, 1006, 507, '2016-04-24 13:00');
INSERT INTO Inscricao(urgenciaID, numeroUtente, numeroFuncionario, horaEntrada) VALUES(7, 1008, 512, '2016-04-25 12:00');
INSERT INTO Inscricao(urgenciaID, numeroUtente, numeroFuncionario, horaEntrada) VALUES(8, 1009, 512, '2016-04-25 19:00');
INSERT INTO Inscricao(urgenciaID, numeroUtente, numeroFuncionario, horaEntrada) VALUES(9, 1005, 513, '2016-04-26 08:00');
INSERT INTO Inscricao(urgenciaID, numeroUtente, numeroFuncionario, horaEntrada) VALUES(10, 1002, 513, '2016-04-26 17:00');
INSERT INTO Inscricao(urgenciaID, numeroUtente, numeroFuncionario, horaEntrada) VALUES(11, 1004, 502, '2016-04-26 18:21');


/*Triagens*/
INSERT INTO Triagem(urgenciaID, numeroUtente, numeroFuncionario, areaAcao, prioridade) VALUES(1, 1000, 501, 'Medica', 'poucoUrgente');
INSERT INTO Triagem(urgenciaID, numeroUtente, numeroFuncionario, areaAcao, prioridade) VALUES(2, 1001, 500, 'Cirurgica', 'emergente');
INSERT INTO Triagem(urgenciaID, numeroUtente, numeroFuncionario, areaAcao, prioridade) VALUES(3, 1003, 501, 'ClinicaGeral', 'poucoUrgente');
INSERT INTO Triagem(urgenciaID, numeroUtente, numeroFuncionario, areaAcao, prioridade) VALUES(4, 1002, 505, 'Medica', 'muitoUrgente');
INSERT INTO Triagem(urgenciaID, numeroUtente, numeroFuncionario, areaAcao, prioridade) VALUES(5, 1005, 506, 'Ortopedia', 'urgente');
INSERT INTO Triagem(urgenciaID, numeroUtente, numeroFuncionario, areaAcao, prioridade) VALUES(6, 1006, 505, 'Medica', 'poucoUrgente');
INSERT INTO Triagem(urgenciaID, numeroUtente, numeroFuncionario, areaAcao, prioridade) VALUES(7, 1008, 510, 'Cirurgica', 'emergente');
INSERT INTO Triagem(urgenciaID, numeroUtente, numeroFuncionario, areaAcao, prioridade) VALUES(8, 1009, 511, 'ClinicaGeral', 'poucoUrgente');
INSERT INTO Triagem(urgenciaID, numeroUtente, numeroFuncionario, areaAcao, prioridade) VALUES(9, 1005, 510, 'Medica', 'muitoUrgente');
INSERT INTO Triagem(urgenciaID, numeroUtente, numeroFuncionario, areaAcao, prioridade) VALUES(10, 1002, 511, 'Ortopedia', 'urgente');
INSERT INTO Triagem(urgenciaID, numeroUtente, numeroFuncionario, areaAcao, prioridade) VALUES(11, 1004, 502, 'Cirurgica', 'muitoUrgente');


/*Diagnosticos*/
INSERT INTO Diagnostico(urgenciaID, numeroUtente, numeroFuncionario, dataEntrada, dataSaida) VALUES(1, 1000, 501, '2016-04-22 17:23', '2016-04-22 18:23');
INSERT INTO Diagnostico(urgenciaID, numeroUtente, numeroFuncionario, dataEntrada, dataSaida) VALUES(2, 1001, 500, '2016-04-22 22:51', '2016-04-22 23:51');
INSERT INTO Diagnostico(urgenciaID, numeroUtente, numeroFuncionario, dataEntrada, dataSaida) VALUES(3, 1003, 501, '2016-04-23 09:41', '2016-04-23 09:59');
INSERT INTO Diagnostico(urgenciaID, numeroUtente, numeroFuncionario, dataEntrada, dataSaida) VALUES(4, 1002, 505, '2016-04-23 21:46', '2016-04-23 23:46');
INSERT INTO Diagnostico(urgenciaID, numeroUtente, numeroFuncionario, dataEntrada, dataSaida) VALUES(5, 1005, 506, '2016-04-24 09:21', '2016-04-24 09:57');
INSERT INTO Diagnostico(urgenciaID, numeroUtente, numeroFuncionario, dataEntrada, dataSaida) VALUES(6, 1006, 505, '2016-04-24 13:41', '2016-04-24 14:41');
INSERT INTO Diagnostico(urgenciaID, numeroUtente, numeroFuncionario, dataEntrada, dataSaida) VALUES(7, 1008, 510, '2016-04-25 12:45', '2016-04-25 13:45');
INSERT INTO Diagnostico(urgenciaID, numeroUtente, numeroFuncionario, dataEntrada, dataSaida) VALUES(8, 1009, 511, '2016-04-25 19:23', '2016-04-25 19:59');
INSERT INTO Diagnostico(urgenciaID, numeroUtente, numeroFuncionario, dataEntrada, dataSaida) VALUES(9, 1005, 510, '2016-04-26 08:11', '2016-04-26 08:45');
INSERT INTO Diagnostico(urgenciaID, numeroUtente, numeroFuncionario, dataEntrada, dataSaida) VALUES(10, 1002, 511, '2016-04-26 17:09', '2016-04-26 17:36');
INSERT INTO Diagnostico(urgenciaID, numeroUtente, numeroFuncionario, dataEntrada, dataSaida) VALUES(11, 1004, 502, '2016-04-26 18:30', '2016-04-26 19:00');

/*Cirurgias*/
INSERT INTO Cirurgia(urgenciaID, codigo, areaAcao, idSalaCirurgica) VALUES(2, 3, 'Cirurgica', 2120);
INSERT INTO Cirurgia(urgenciaID, codigo, areaAcao, idSalaCirurgica) VALUES(7, 4, 'Cirurgica', 3045);
INSERT INTO Cirurgia(urgenciaID, codigo, areaAcao, idSalaCirurgica) VALUES(9, 5, 'Medica', 5235);
INSERT INTO Cirurgia(urgenciaID, codigo, areaAcao, idSalaCirurgica) VALUES(10, 6, 'Cirurgica', 4000);

/*Prescri��es*/
INSERT INTO Prescricao(referencia, urgenciaID, nome) VALUES(12349, 1, 'Ben-u-ron');
INSERT INTO Prescricao(referencia, urgenciaID, nome) VALUES(13938, 2, 'Brufen');
INSERT INTO Prescricao(referencia, urgenciaID, nome) VALUES(13412, 4, 'Ben-u-ron');
INSERT INTO Prescricao(referencia, urgenciaID, nome) VALUES(13256, 5, 'Brufen');
INSERT INTO Prescricao(referencia, urgenciaID, nome) VALUES(54723, 6, 'Ben-u-ron');
INSERT INTO Prescricao(referencia, urgenciaID, nome) VALUES(32523, 8, 'Brufen');
INSERT INTO Prescricao(referencia, urgenciaID, nome) VALUES(97343, 10, 'Brufen');

/*Checkouts*/
INSERT INTO Checkout(urgenciaID, numeroUtente, numeroFuncionario, dataSaida, taxa) VALUES(1, 1000, 502, '2016-04-22 21:23', 100);
INSERT INTO Checkout(urgenciaID, numeroUtente, numeroFuncionario, dataSaida, taxa) VALUES(2, 1001, 503, '2016-04-23 03:21', 50);
INSERT INTO Checkout(urgenciaID, numeroUtente, numeroFuncionario, dataSaida, taxa) VALUES(3, 1003, 503, '2016-04-23 11:41', 200);
INSERT INTO Checkout(urgenciaID, numeroUtente, numeroFuncionario, dataSaida, taxa) VALUES(4, 1007, 507, '2016-04-24 01:46', 25);
INSERT INTO Checkout(urgenciaID, numeroUtente, numeroFuncionario, dataSaida, taxa) VALUES(5, 1007, 507, '2016-04-24 12:21', 15);
INSERT INTO Checkout(urgenciaID, numeroUtente, numeroFuncionario, dataSaida, taxa) VALUES(6, 1008, 508, '2016-04-24 14:41', 100);
INSERT INTO Checkout(urgenciaID, numeroUtente, numeroFuncionario, dataSaida, taxa) VALUES(7, 1008, 512, '2016-04-25 16:45', 50);
INSERT INTO Checkout(urgenciaID, numeroUtente, numeroFuncionario, dataSaida, taxa) VALUES(8, 1009, 513, '2016-04-25 21:23', 200);
INSERT INTO Checkout(urgenciaID, numeroUtente, numeroFuncionario, dataSaida, taxa) VALUES(9, 1005, 512, '2016-04-26 10:11', 25);
INSERT INTO Checkout(urgenciaID, numeroUtente, numeroFuncionario, dataSaida, taxa) VALUES(10, 1002, 512, '2016-04-26 18:09', 15);
INSERT INTO Checkout(urgenciaID, numeroUtente, numeroFuncionario, dataSaida, taxa) VALUES(11, 1004, 502, '2016-04-29 10:30', 350);

/*Tratamentos*/
INSERT INTO Tratamento(urgenciaID, numeroUtente, numeroFuncionario) VALUES(1, 1000, 515);
INSERT INTO Tratamento(urgenciaID, numeroUtente, numeroFuncionario) VALUES(2, 1001, 516);
INSERT INTO Tratamento(urgenciaID, numeroUtente, numeroFuncionario) VALUES(3, 1003, 515);
INSERT INTO Tratamento(urgenciaID, numeroUtente, numeroFuncionario) VALUES(4, 1002, 517);
INSERT INTO Tratamento(urgenciaID, numeroUtente, numeroFuncionario) VALUES(5, 1005, 518);
INSERT INTO Tratamento(urgenciaID, numeroUtente, numeroFuncionario) VALUES(6, 1006, 517);
INSERT INTO Tratamento(urgenciaID, numeroUtente, numeroFuncionario) VALUES(7, 1008, 519);
INSERT INTO Tratamento(urgenciaID, numeroUtente, numeroFuncionario) VALUES(8, 1009, 520);
INSERT INTO Tratamento(urgenciaID, numeroUtente, numeroFuncionario) VALUES(9, 1005, 519);
INSERT INTO Tratamento(urgenciaID, numeroUtente, numeroFuncionario) VALUES(10, 1002, 520);
INSERT INTO Tratamento(urgenciaID, numeroUtente, numeroFuncionario) VALUES(11, 1004, 520);