-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.

DROP TABLE IF EXISTS Aluguel_Aluguel;
DROP TABLE IF EXISTS Devolve_Devolucao;
DROP TABLE IF EXISTS Bicicleta;
DROP TABLE IF EXISTS Usuario;
DROP TABLE IF EXISTS funcionario;
DROP TABLE IF EXISTS Base;
DROP TABLE IF EXISTS Plano;

CREATE TABLE Plano (
nome_plano VARCHAR(50),
descricao VARCHAR(255),
valor NUMERIC
);

CREATE TABLE Base (
endereco VARCHAR(255)
);

CREATE TABLE Funcionario (
nome VARCHAR(50),
cpf VARCHAR(11),
endereco VARCHAR(60),
identidade VARCHAR(10),
num_carteira_trab VARCHAR(16),
data_nascimento DATE
);

CREATE TABLE Usuario (
data_nascimento DATE,
endereco VARCHAR(255),
num_tel VARCHAR(15),
nome VARCHAR(50),
idade INTEGER,
estado_civil VARCHAR(20),
num_cartao VARCHAR(16),
cpf VARCHAR(11),
sexo VARCHAR(1),
id_plano INTEGER
);

CREATE TABLE Bicicleta (
data_manuntencao TIMESTAMP ,
num_gps VARCHAR(20),
local_atual VARCHAR(20)
);

CREATE TABLE Devolve_Devolucao (
id_usuario INTEGER,
data_devolucao TIMESTAMP,
id_bicicleta INTEGER 
);

CREATE TABLE Aluguel_Aluguel (
id_bicicleta INTEGER,
id_usuario INTEGER,
data_aluguel TIMESTAMP ,
horas_alugadas INTEGER NOT NULL
);

ALTER TABLE Plano ADD COLUMN id_plano SERIAL PRIMARY KEY;
ALTER TABLE Base ADD COLUMN id_base SERIAL PRIMARY KEY;
ALTER TABLE Funcionario ADD COLUMN id_funcionario SERIAL PRIMARY KEY;
ALTER TABLE Usuario ADD COLUMN id_usuario SERIAL PRIMARY KEY;
ALTER TABLE Bicicleta ADD COLUMN id_bicicleta SERIAL PRIMARY KEY;
ALTER TABLE Devolve_Devolucao ADD COLUMN codigo SERIAL PRIMARY KEY;
ALTER TABLE Aluguel_Aluguel ADD COLUMN codigo SERIAL PRIMARY KEY;

ALTER TABLE Usuario ADD FOREIGN KEY(id_plano) REFERENCES Plano (id_plano);

ALTER TABLE Devolve_Devolucao ADD FOREIGN KEY(id_usuario) REFERENCES Usuario (id_usuario);
ALTER TABLE Devolve_Devolucao ADD FOREIGN KEY(id_bicicleta) REFERENCES Bicicleta (id_bicicleta);

ALTER TABLE Aluguel_Aluguel ADD FOREIGN KEY(id_bicicleta) REFERENCES Bicicleta (id_bicicleta);
ALTER TABLE Aluguel_Aluguel ADD FOREIGN KEY(id_usuario) REFERENCES Usuario (id_usuario);
