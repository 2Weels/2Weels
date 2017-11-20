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
FROM Usuario
	WHERE ESTADO_CIVIL = 'casado'
	AND ID_PLANO = 4