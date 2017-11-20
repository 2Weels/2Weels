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