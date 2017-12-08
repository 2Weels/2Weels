/*INSERT INTO Plano(nome,descricao,valor)VALUES 
('plano Basico','plano basico onde o cliente tem direito a dez horas mensais',20.80),
('plano Medio','plano Medio onde o cliente tem direito a quinze horas mensais',32.50),
('plano Full','plano Full onde o cliente tem direito a quarenta horas mensais',40.80),
('plano Pos','plano Pos onde o cliente pode alugar um bicicleta e no final do mes é gerado uma fatura',0),
('plano Pre','plano Pre onde o cliente paga na hora aquilo que for usar',0);
COMMIT;*/


/*
INSERT INTO pessoa (nome_completo,data_nascimento,CPF,SEXO,estado_civil) VALUES
('Rebeca Borline','17/02/1995','11166677796','F','solteiro'),
('Ana Keren','25/02/1990','11166677096','F','solteiro'),
('Barbara Nike','10/04/1985','11166077796','F','solteiro'),
('Regina Buaque','01/05/1991','11161677796','F','solteiro'),
('Arthur Lesion','02/04/1992','11162677796','M','solteiro'),
('Altero Brito','03/02/1993','11166377796','M','solteiro'),
('Lucas Eduardo','04/03/1985','11164677796','M','solteiro'),
('Lurder Souza','05/03/1974','11166577796','F','solteiro'),
('Laura Martaz','06/04/1965','11166777796','F','solteiro'),
('Queren Batista','07/11/1990','11186677796','F','solteiro'),
('Ronaldo Roz','07/10/1970','11166697796','M','solteiro'),
('Richard Morth','08/09/1980','11160677796','M','solteiro'),
('Paola Braz','09/06/1998','11166677096','F','solteiro'),
('Paula Tejando','10/06/1997','11166607796','F','solteiro'),
('Roberto Soarez','10/05/1988','12166677796','M','solteiro'),
('Camila Sobrancelha','12/05/1990','12166677796','F','solteiro'),
('Janete Portuga','12/01/1992','12266677796','F','solteiro'),
('Camaro Borline','13/01/1991','11266677796','M','solteiro'),
('Lucas Souza','16/08/1990','11333677796','M','solteiro'),
('Matheus luz','16/11/1990','11145677796','M','solteiro'),
('Jesus Louvier','18/11/1999','11266677796','M','solteiro'),
('Raquel koli','19/07/1988','11187677796','F','solteiro'),
('Kayla keila','22/12/1989','11149677796','F','solteiro'),
('Caio Ropou','23/12/1987','11165477796','M','solteiro'),
('Biaca Ana','29/10/1986','11166337796','F','solteiro'),
('Santana Banana','30/05/1965','30166677796','F','solteiro');
COMMIT;



INSERT INTO usuario (num_telefone,horas_usadas,fk_Plano_id_plano,FK_Pessoa_id_pessoa) VALUES
('32265880',2,1,1),
('32265880',0,2,2), 
('32265880',0,3,3), 
('32265880',0,4,4), 
('32265880',0,5,5), 
('32265880',4,5,6), 
('32265880',10,4,7), 
('32265880',2,3,8), 
('32265880',1,2,9), 
('32265880',0,1,10), 
('32265880',0,5,11), 
('32265880',6,5,12), 
('32265880',6,5,13), 
('32265880',7,5,14), 
('32265880',1,5,15), 
('32265880',6,4,16), 
('32265880',8,5,17), 
('32265880',9,2,18), 
('32265880',1,2,19), 
('32265880',0,3,20), 
('32265880',0,5,21), 
('32265880',3,5,22);  


INSERT INTO funcionario (identidade,carteira_trab,fk_pessoa_id_pessoa) VALUES
(2020,101010,23),
(1212,202020,24),
(1515,303030,25),
(1919,303030,26);


INSERT INTO base (nome_base,fk_funcionario_fk_pessoa_id_pessoa) VALUES
('Verao',23),
('Primavera',24),
('Outono',25),
('Inverno',26);



INSERT INTO pais (nome) VALUES ('Brasil');
INSERT INTO estado (nome,FK_pais_id_pais) VALUES ('Espirito Santo',1);
INSERT INTO cidade (nome, FK_Estado_id_estado) VALUES
('Serra',1),
('Vitoria',1),
('Vila Velha',1);
INSERT INTO bairro (nome, FK_cidade_id_cidade) VALUES 
('Serra Leoa',1),
('Manguinhos',1),
('Bairro Vermelho',2),
('Centro',2),
('Praia do Morro',2),
('Praia da Costa',3),
('Praia de Itapua',3);

INSERT INTO endereco (cep,numero,rua,FK_Bairro_id_bairro) VALUES 
(29151270,1,'Rua dama dora',1), 
(29151260,2,'Rua dama ana',2), 
(29151250,3,'Rua dama laura',3), 
(29151660,4,'Rua dama sona',4), 
(29151209,5,'Rua dama miss',5), 
(29151990,6,'Rua dama ahri',6), 
(29151740,7,'Rua dama annie',7), 
(29151360,8,'Rua dama lissandra',1), 
(29154160,9,'Rua dama carta',2), 
(29184260,10,'Rua dama morca',3), 
(29121260,11,'Rua dama lupida',4), 
(29151260,12,'Rua dama kaik',2), 
(28851260,13,'Rua dama laranja',2), 
(29156660,14,'Rua dama vela',3), 
(29157840,15,'Rua dama lacre',3), 
(29115660,16,'Rua dama zoe',6), 
(29152540,17,'Rua dama zyra',7), 
(29151695,18,'Rua dama marta',6), 
(29151220,19,'Rua dama perta',5), 
(29151000,1,'Rua dama pietra',5), 
(29157742,12,'Rua dama arpa',6), 
(29157750,11,'Rua dama liga',2), 
(29151160,13,'Rua dama maria',1), 
(29151260,15,'Rua dama corsa',1), 
(29153366,16,'Rua dama lista',2), 
(29151274,19,'Rua dama ipa',3), 
(29158770,17,'Rua dama cerva',4); 

INSERT INTO reside VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7),
(8,8),
(9,9),
(10,10),
(11,11),
(12,12),
(13,13),
(14,14),
(15,15),
(16,16),
(17,17),
(18,18),
(19,19),
(20,20),
(21,21),
(22,22),
(23,23),
(24,24),
(25,25),
(26,26);


INSERT INTO alocada VALUES 
(1,2),
(2,8),
(3,12),
(4,11);

INSERT INTO bicicleta (num_gps,latitude,local_atual,longitude,fk_base_id_base) VALUES
(101010,12.03,'Verão',12.00,1),
(101011,12.03,'Verão',12.00,1),
(101012,12.03,'Verão',12.00,1),
(101013,12.03,'Verão',12.00,1),
(101019,12.03,'Verão',12.00,1),
(101014,12.49,'Primavera',12.30,2),
(101015,12.49,'Primavera',12.30,2),
(101016,12.49,'Primavera',12.30,2),
(101018,12.49,'Primavera',12.30,2),
(101020,12.49,'Primavera',12.30,2),
(101022,14.03,'Outono',14.00,3),
(101023,14.03,'Outono',14.00,3),
(101024,14.03,'Outono',14.00,3),
(101025,14.03,'Outono',14.00,3),
(101028,14.03,'Outono',14.00,3),
(101029,15.03,'Inverno',13.10,4),
(101041,15.03,'Inverno',13.10,4),
(101042,15.03,'Inverno',13.10,4),
(101043,15.03,'Inverno',13.10,4),
(101049,15.03,'Inverno',13.10,4);


INSERT INTO aluguel (fk_bicicleta_id_bicicleta,fk_pessoa_id_pessoa,horas_alugadas,hora_aluguel,hora_devolucao,data_aluguel,data_devolucao,valor_pago,status) VALUES 
(20,2,3,'18:00','19:00','30/11/2017','30/11/2017',6.00,'concluido'),
(1,20,4,'15:00','19:00','30/11/2017','30/11/2017',8.00,'concluido'),
(3,19,3,'16:00','19:00','30/11/2017','30/11/2017',6.00,'concluido'),
(15,18,1,'18:00','19:00','30/11/2017','30/11/2017',2.00,'concluido'),
(10,19,1,'20:00','21:00','30/11/2017','30/11/2017',2.00,'concluido'),
(9,15,1,'18:00','19:00','30/11/2017','30/11/2017',2.00,'concluido'),
(8,14,1,'18:00','19:00','30/11/2017','30/11/2017',2.00,'concluido'),
(7,10,1,'18:00','19:00','30/11/2017','30/11/2017',2.00,'concluido'),
(6,11,2,'6:00','8:00','01/12/2017','01/12/2017',4.00,'concluido'),
(5,2,3,'8:00','11:00','01/12/2017','01/12/2017',6.00,'concluido'),
(3,2,4,'10:00','14:00','01/12/2017','01/12/2017',8.00,'concluido'),
(2,1,6,'10:00','16:00','01/12/2017','01/12/2017',12.00,'concluido'),
(1,3,8,'8:00','18:00','01/12/2017','01/12/2017',16.00,'concluido'),
(4,20,3,'18:00','21:00','01/12/2017','01/12/2017',6.00,'concluido'),
(13,5,5,'14:00','19:00','01/12/2017','01/12/2017',10.00,'concluido'),
(12,6,1,'18:00','19:00','01/12/2017','01/12/2017',2.00,'concluido'),
(2,7,1,'20:00','21:00','01/12/2017','01/12/2017',2.00,'concluido'),
(10,8,1,'18:00',NULL,'06/12/2017',NULL,2.00,'circulando'),
(14,10,1,'18:00',NULL,'06/12/2017',NULL,2.00,'circulando'),
(20,11,2,'18:00',NULL,'06/12/2017',NULL,4.00,'circulando'),
(20,13,2,'18:00',NULL,'06/12/2017',NULL,4.00,'circulando');

*/
