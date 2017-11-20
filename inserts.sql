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
('08/05/1996','Rua Jose Sette,15,Ilha do Principe,Vitoria','2733666587','Maria','F','30','solteiro',NULL,'15122688745',2),
('16/08/1985','Rua Almeida,01,Manguinhos,Serra','27995744160','Carlos','M','35','casado',NULL,'36525474796',4),
('15/09/1999','Rua Almeida,01,Manguinhos,Serra','27995744159','Ana','F','30','casado',NULL,'36526474796',4),
('14/04/1999','Rua Almeida,01,Manguinhos,Serra','27995744123','Marcos','M','18','solteiro',NULL,'36525554790',4),
('15/04/1999','Rua Almeida,01,Manguinhos,Serra','27995744157','Artur','M','18','solteiro',NULL,'36525554792',4),
('16/04/1999','Rua Almeida,01,Manguinhos,Serra','27995744156','Lucas','M','18','solteiro',NULL,'36525554791',4),
('17/04/1999','Rua Almeida,01,Manguinhos,Serra','27995744151','Ivan','M','18','casado',NULL,'36525554793',4),
('18/04/1999','Rua Almeida,01,Manguinhos,Serra','27995744155','Telbaldo','M','18','casado',NULL,'36525554794',4),
('19/04/1999','Rua Almeida,01,Manguinhos,Serra','27995744149','Bob','M','18','solteiro',NULL,'36525554795',4),
('11/04/1999','Rua Almeida,01,Manguinhos,Serra','27995744148','Bernardo','M','18','casado',NULL,'36525554766',4),
('12/04/1999','Rua Almeida,01,Manguinhos,Serra','27995744147','Cesar','M','18','solteiro',NULL,'36525554767',4),
('13/04/1999','Rua Almeida,01,Manguinhos,Serra','27995744141','Estevan','M','18','casado',NULL,'36525554765',4),
('22/04/1999','Rua Almeida,01,Manguinhos,Serra','27995744142','Gabriel','M','18','solteiro',NULL,'36525554768',4),
('23/04/1999','Rua Almeida,01,Manguinhos,Serra','27995744143','Kayq','M','18','solteiro',NULL,'36525554769',4),
('05/04/1999','Rua Almeida,01,Manguinhos,Serra','27995744144','Kaun','M','18','casado',NULL,'36525554669',4),
('06/04/1999','Rua Almeida,01,Manguinhos,Serra','27995744145','Darius','M','18','solteiro',NULL,'36525554666',4),
('07/04/1999','Rua Almeida,01,Manguinhos,Serra','27995744137','Garen','M','18','solteiro',NULL,'36525554333',4),
('08/04/1999','Rua Almeida,01,Manguinhos,Serra','27995744136','Marcia','F','18','solteiro',NULL,'36525554222',4),
('09/04/1999','Rua Almeida,01,Manguinhos,Serra','27995744135','Mariana','F','18','solteiro',NULL,'36525554111',4),
('14/08/1999','Rua Almeida,01,Manguinhos,Serra','27995744134','Morgana','F','18','casado',NULL,'36525554222',4),
('14/06/1999','Rua Almeida,01,Manguinhos,Serra','27995744133','Morena','F','18','solteiro',NULL,'36525554444',4),
('14/05/1999','Rua Almeida,01,Manguinhos,Serra','27995744122','Macarena','F','18','solteiro',NULL,'36525554555',4),
('14/06/1999','Rua Almeida,01,Manguinhos,Serra','27995744120','Ana','F','18','solteiro',NULL,'36525554777',4),
('14/09/1999','Rua Almeida,01,Manguinhos,Serra','27995744118','Antinia','F','18','solteiro',NULL,'36525558888',4),
('14/10/1999','Rua Almeida,01,Manguinhos,Serra','27995744117','Maria','F','18','casado',NULL,'36525554888',4),
('07/12/1998','Rua Almeida,01,Manguinhos,Serra','27995744115','Marcia','F','18','solteiro',NULL,'36525554766',4),
('14/11/1999','Rua Almeida,01,Manguinhos,Serra','27995744116','Jeovana','F','18','casado',NULL,'36525554989',4),
('14/12/1999','Rua Almeida,01,Manguinhos,Serra','27995744114','Keyla','F','18','solteiro',NULL,'36525554722',4),
('06/07/1999','Rua Almeida,01,Manguinhos,Serra','27995744111','Cassia','F','18','casado',NULL,'36525554726',4),
('04/01/1999','Rua Almeida,01,Manguinhos,Serra','27995744112','Clara','F','18','casado',NULL,'36525554241',4),
('04/01/1999','Rua Almeida,01,Manguinhos,Serra','27995744113','Carla','F','18','solteiro',NULL,'36525554722',4),
('03/01/1999','Rua Almeida,01,Manguinhos,Serra','27995744108','Coraline','F','18','casado',NULL,'36525554778',4),
('02/01/1999','Rua Almeida,01,Manguinhos,Serra','27995744106','Marcia','F','18','solteiro',NULL,'36525554779',4),
('01/02/1999','Rua Almeida,01,Manguinhos,Serra','27995744105','Marcia','F','18','casado',NULL,'36525554772',4),
('19/02/1999','Rua Almeida,01,Manguinhos,Serra','27995744104','Marcia','F','18','casado',NULL,'36525552244',4),
('18/03/1999','Rua Almeida,01,Manguinhos,Serra','27995744103','Marcia','F','18','solteiro',NULL,'36525554433',4),
('17/04/1999','Rua Almeida,01,Manguinhos,Serra','27995744102','Marcia','F','18','casado',NULL,'36525554442',4),
('18/03/1999','Rua Almeida,01,Manguinhos,Serra','27995744101','Marcos','M','16','solteiro',NULL,'36555474796',4);
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
