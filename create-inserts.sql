-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.

CREATE TABLE Plano (
nome_plano VARCHAR(50),
descricao VARSCHAR(255),
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

INSERT INTO Plano(nome_plano,descricao,valor)VALUES 
('plano Basico','plano basico onde o cliente tem direito a dez horas mensais',20.80),
('plano Medio','plano Medio onde o cliente tem direito a quinze horas mensais',32.50),
('plano Full','plano Full onde o cliente tem direito a quarenta horas mensais',40.80),
('plano Pos','plano Pos onde o cliente pode alugar um bicicleta e no final do mes é gerado uma fatura',NULL),
('plano Pre','plano Pre onde o cliente paga na hora aquilo que for usar',NULL);
COMMIT;

INSERT INTO Base
	(endereco)

VALUES
	('Rua Fernando de Sá, Maruipe,Vitória,27151444'),
	('Rua alveres gonzaga,Camburi,Vitória,27151624'),
	('Avenida Beira-Mar,Horto,Vitoria,27148554'),
	('Avenida Vitoria,Centro,Vitoria,27155263');

COMMIT;

INSERT INTO Funcionario
(nome,cpf,identidade,num_carteira_trab,data_nascimento,endereco)
VALUES
('Ana','14425632798','9998664','858696654','08/08/1995','Rua albertido da gloria,04,Nova Carapina,Serra'),
('Jose','15122366588','5458774','454775823','15/04/1988','Avenida Beira-Mar,245,Horto,Vitoria'),
('Maria','22655877459','6585474','455877463','25/06/1987','Rua geronimo monteira,145,Itaparica,Vila Velha'),
('Kaike','74458999854','1512245','744856998','30/01/1994','Rua Santana,15,Campo Grande,Cariacica');

COMMIT;

INSERT INTO Usuario(data_nascimento,endereco,num_tel,nome,sexo,idade,estado_civil,num_cartao,cpf,id_plano)
VALUES
('04/04/1995','Rua Santa lucia,04,Alto Lage,Cariacica','27998588098','Lucas','M','22','solteiro','4280675854148874','14960175796',3),
('08/05/1996','Rua Jose Sette,15,Ilha do Principe,Vitoria','2733666587','Maria','M','30','solteiro',NULL,'15122688745',2);
;

COMMIT;

INSERT INTO Bicicleta (data_manuntencao,num_gps,local_atual)
VALUES
(NULL,'15544788',1),
(NULL,'66555874','circulando'),
(NULL,'55654745','circulando'),
(NULL,'98986554',1),
(NULL,'54541120',1),
(NULL,'01212125',1),
(NULL,'66955475',1),
(NULL,'21121336',1),
(NULL,'95595959',1),
(NULL,'22121212',1),
(NULL,'78784452',1),
(NULL,'02212233',1),
(NULL,'14411553',1),
(NULL,'22121214','circulando'),
(NULL,'33366977','circulando'),
(NULL,'14411523',2),
(NULL,'14411524',2),
(NULL,'14411525',2),
(NULL,'14411526',2),
(NULL,'14411511',2),
(NULL,'14411512',2),
(NULL,'14411513',2),
(NULL,'14411514',2),
(NULL,'14411515',2),
(NULL,'14411516',2),
(NULL,'88889965',3),
(NULL,'88889966',3),
(NULL,'88889967',3),
(NULL,'88889968',3),
(NULL,'88889969',3),
(NULL,'88889960',3),
(NULL,'88889970',3),
(NULL,'88889977',3);
COMMIT;
