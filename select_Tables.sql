SELECT 
	id_plano,
	nome_plano,
	descricao,
	valor 
FROM Plano;

SELECT 
	endereco,
	id_base
FROM Base;

SELECT 
	nome,
	cpf,
	endereco,
	id_funcionario, 
	identidade,
	num_carteira_trab,
	data_nascimento
FROM Funcionario;

SELECT 
	data_nascimento,
	endereco,
	num_tel,
	id_usuario, 
	nome,
	sexo,
	idade,
	estado_civil,
	num_cartao,
	cpf,
	id_plano
FROM Usuario;

SELECT 
	data_manuntencao,
	num_gps,
	local_atual,
	id_bicicleta
FROM Bicicleta;

SELECT 
	id_usuario,
	codigo, 
	data_devolucao,
	id_bicicleta
FROM Devolve_Devolucao;

SELECT 
	id_bicicleta,
	id_usuario,
	codigo,
	data_aluguel,
	horas_alugadas
FROM Aluguel_Aluguel;