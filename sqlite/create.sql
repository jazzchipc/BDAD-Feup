/*Pessoa (idPessoa, nome, idade, sexo, morada, NIF)*/
CREATE TABLE Pessoa(
idPessoa INT NOT NULL PRIMARY KEY,
nome CHAR(30) NOT NULL,
idade INT NOT NULL,
sexo CHAR(20) NOT NULL,
morada VARCHAR(50),
NIF INT NOT NULL UNIQUE);

/*EquipaUrgencia(idEquipa, dataInicio, dataFim, idLider)*/
CREATE TABLE EquipaUrgencia(
idEquipa INT NOT NULL PRIMARY KEY, 
dataInicio DATETIME NOT NULL, 
dataFim DATETIME, 
idLider INT NOT NULL, 
FOREIGN KEY (idLider) REFERENCES Medico(idLider)
CHECK (dataFim > dataInicio));

/*Utente(numeroUtente, idPessoa)*/
CREATE TABLE Utente(
numeroUtente INT NOT NULL PRIMARY KEY,
idPessoa INT NOT NULL,
FOREIGN KEY (idPessoa) REFERENCES Pessoa(idPessoa));

/*Funcionario (numeroFuncionario, idPessoa, funcao, idEquipa)*/
CREATE TABLE Funcionario(
numeroFuncionario INT NOT NULL PRIMARY KEY,
idPessoa INT NOT NULL, 
funcao VARCHAR(50) NOT NULL,
idEquipa INT,
FOREIGN KEY (idPessoa) REFERENCES Pessoa(idPessoa),
FOREIGN KEY (idEquipa) REFERENCES EquipaUrgencia(idEquipa));

/*Medico (numeroFuncionario, idEspecialidade, areaAcao)*/
CREATE TABLE Medico(
numeroFuncionario INT NOT NULL PRIMARY KEY,
idEspecialidade INT,
areaAcao VARCHAR(50) NOT NULL,
FOREIGN KEY (numeroFuncionario) REFERENCES Funcionario(numeroFuncionario),
FOREIGN KEY (idEspecialidade) REFERENCES Especialidade(idEspecialidade));

/*Alergia (idAlergia, nome)*/
CREATE TABLE Alergia(
idAlergia INT NOT NULL PRIMARY KEY,
nome VARCHAR(50) NOT NULL);

/*Vacina (idVacina, nome)*/
CREATE TABLE Vacina(
idVacina INT NOT NULL PRIMARY KEY, 
nome VARCHAR(50) NOT NULL);

/*Especialidade (idEspecialidade, designacao)*/
CREATE TABLE Especialidade(
idEspecialidade INT NOT NULL PRIMARY KEY, 
designacao VARCHAR(50));

/*SalaCirurgica (idSalaCirurgica, bloco, numero)*/
CREATE TABLE SalaCirurgica(
idSalaCirurgica INT NOT NULL PRIMARY KEY,
bloco CHAR(20) NOT NULL,
numero INT NOT NULL);

/*UtenteAlergia (idAlergia, numeroUtente)*/
CREATE TABLE UtenteAlergia(
idAlergia INT NOT NULL REFERENCES Alergia(idAlergia),
numeroUtente INT NOT NULL REFERENCES Utente(numeroUtente), 
PRIMARY KEY(idAlergia, numeroUtente));

/*UtenteVacina (idVacina, numeroUtente, dataAplicacao)*/
CREATE TABLE UtenteVacina(
idVacina INT NOT NULL REFERENCES Vacina(idVacina),
numeroUtente INT NOT NULL REFERENCES Utente(numeroUtente),
dataAplicacao DATE,
PRIMARY KEY(idVacina, numeroUtente, dataAplicacao));

/*Inscricao (urgenciaID, numeroUtente, numeroFuncionario, horaEntrada)*/
CREATE TABLE Inscricao
(urgenciaID INT PRIMARY KEY NOT NULL,
numeroUtente INT REFERENCES Utente(numeroUtente) NOT NULL,
numeroFuncionario INT REFERENCES Funcionario(numeroFuncionario) NOT NULL,
horaEntrada DATETIME NOT NULL);

/*Checkout (urgenciaID, numeroUtente, numeroFuncionario, taxa, dataSaida)*/
CREATE TABLE Checkout
(urgenciaID INT PRIMARY KEY NOT NULL,
numeroUtente INT REFERENCES Utente(numeroUtente) NOT NULL,
numeroFuncionario INT REFERENCES Funcionario(numeroFuncionario) NOT NULL,
taxa INT NOT NULL,
dataSaida DATETIME NOT NULL);

/*Triagem (urgenciaID, numeroUtente, numeroFuncionario, areaAcao, prioridade)*/
CREATE TABLE Triagem
(urgenciaID INT PRIMARY KEY NOT NULL,
numeroUtente INT REFERENCES Utente(numeroUtente) NOT NULL,
numeroFuncionario INT REFERENCES Funcionario(numeroFuncionario) NOT NULL,
areaAcao TEXT NOT NULL,
prioridade TEXT NOT NULL);

/*Diagnostico (urgenciaID, numeroUtente, numeroFuncionario, dataEntrada, dataSaida)*/
CREATE TABLE Diagnostico
(urgenciaID INT NOT NULL,
numeroUtente INT REFERENCES Utente(numeroUtente) NOT NULL,
numeroFuncionario INT REFERENCES Funcionario(numeroFuncionario) NOT NULL,
dataEntrada DATETIME NOT NULL,
dataSaida DATETIME,
PRIMARY KEY(urgenciaID, dataEntrada, dataSaida),
CHECK (dataSaida > dataEntrada)); 

/*Tratamento (urgenciaID, numeroUtente, numeroFuncionario)*/ 
CREATE TABLE Tratamento
(urgenciaID INT PRIMARY KEY NOT NULL,
numeroUtente INT REFERENCES Utente(numeroUtente) NOT NULL,
numeroFuncionario INT REFERENCES Funcionario(numeroFuncionario) NOT NULL);

/*Cirurgia (urgenciaID, codigo, areaAcao, idSalaCirurgica)*/
CREATE TABLE Cirurgia(
urgenciaID INT NOT NULL REFERENCES Tratamento(urgenciaID),
codigo INT NOT NULL UNIQUE,
areaAcao TEXT NOT NULL,
idSalaCirurgica INT NOT NULL UNIQUE REFERENCES SalaCirurgica(idSalaCirurgica),
PRIMARY KEY(urgenciaID, codigo));

/*Prescricao (urgenciaID, referencia, nome)*/
CREATE TABLE Prescricao(
urgenciaID INT NOT NULL REFERENCES Tratamento(urgenciaID),
referencia INT NOT NULL,
nome CHAR(20) NOT NULL,
PRIMARY KEY (urgenciaID, referencia));