/* Lógico_2: */

CREATE TABLE Pessoa (
    nome_completo VARCHAR(60),
    data_nascimento Date,
    CPF Integer,
    id_pessoa Serial PRIMARY KEY,
    SEXO VARCHAR(1),
    estado_civil VARCHAR(10)
);

CREATE TABLE Usuario (
    num_telefone INTEGER,
    horas_usadas Integer,
    FK_Pessoa_id_pessoa Serial PRIMARY KEY,
    FK_Plano_id_plano Serial
);

CREATE TABLE Funcionario (
    Identidade Integer,
    carteira_trab Integer,
    FK_Pessoa_id_pessoa Serial PRIMARY KEY
);

CREATE TABLE Plano (
    id_plano Serial PRIMARY KEY,
    valor Numeric,
    Nome VARCHAR(30),
    descricao VARCHAR(100)
);

CREATE TABLE Bicicleta (
    id_bicicleta Serial PRIMARY KEY,
    num_gps integer,
    latitude FLOAT,
    local_atual VARCHAR(30),
    longitude FLOAT,
    FK_Base_id_base SERIAL
);

CREATE TABLE Base (
    id_base SERIAL PRIMARY KEY,
    nome_base VARCHAR(30),
    FK_Funcionario_FK_Pessoa_id_pessoa Serial
);

CREATE TABLE pais (
    id_pais Serial PRIMARY KEY,
    Nome VARCHAR(20)
);

CREATE TABLE Estado (
    id_estado Serial PRIMARY KEY,
    Nome VARCHAR(20),
    FK_pais_id_pais Serial
);

CREATE TABLE cidade (
    Nome VARCHAR(20),
    id_cidade Serial PRIMARY KEY,
    FK_Estado_id_estado Serial
);

CREATE TABLE Endereco (
    CEP integer,
    numero Integer,
    Rua VARCHAR(60),
    id_endereco SERIAL PRIMARY KEY,
    FK_Bairro_id_bairro Serial
);

CREATE TABLE Bairro (
    id_bairro Serial PRIMARY KEY,
    nome VARCHAR(30),
    FK_cidade_id_cidade Serial
);

CREATE TABLE Alugel (
    FK_Bicicleta_id_bicicleta Serial,
    FK_Pessoa_id_pessoa Serial,
    horas_alugadas INTEGER,
    Hora_aluguel time,
    Hora_devolucao time,
    valor_pago Numeric,
    status VARCHAR(15),
    id_aluguel serial PRIMARY KEY,
    data_aluguel date,
    data_devolucao date
);

CREATE TABLE Reside (
    FK_Pessoa_id_pessoa Serial,
    FK_Endereco_id_endereco SERIAL
);

CREATE TABLE Alocada (
    FK_Base_id_base SERIAL,
    FK_Endereco_id_endereco SERIAL
);
 
ALTER TABLE Usuario ADD CONSTRAINT FK_Usuario_1
    FOREIGN KEY (FK_Pessoa_id_pessoa)
    REFERENCES Pessoa (id_pessoa)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE Usuario ADD CONSTRAINT FK_Usuario_2
    FOREIGN KEY (FK_Plano_id_plano)
    REFERENCES Plano (id_plano)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE Funcionario ADD CONSTRAINT FK_Funcionario_1
    FOREIGN KEY (FK_Pessoa_id_pessoa)
    REFERENCES Pessoa (id_pessoa)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE Bicicleta ADD CONSTRAINT FK_Bicicleta_1
    FOREIGN KEY (FK_Base_id_base)
    REFERENCES Base (id_base)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE Base ADD CONSTRAINT FK_Base_1
    FOREIGN KEY (FK_Funcionario_FK_Pessoa_id_pessoa)
    REFERENCES Funcionario (FK_Pessoa_id_pessoa)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE Estado ADD CONSTRAINT FK_Estado_1
    FOREIGN KEY (FK_pais_id_pais)
    REFERENCES pais (id_pais)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE cidade ADD CONSTRAINT FK_cidade_1
    FOREIGN KEY (FK_Estado_id_estado)
    REFERENCES Estado (id_estado)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE Endereco ADD CONSTRAINT FK_Endereco_1
    FOREIGN KEY (FK_Bairro_id_bairro)
    REFERENCES Bairro (id_bairro)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE Bairro ADD CONSTRAINT FK_Bairro_1
    FOREIGN KEY (FK_cidade_id_cidade)
    REFERENCES cidade (id_cidade)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE Alugel ADD CONSTRAINT FK_Alugel_1
    FOREIGN KEY (FK_Bicicleta_id_bicicleta)
    REFERENCES Bicicleta (id_bicicleta)
    ON DELETE SET NULL ON UPDATE CASCADE;
 
ALTER TABLE Alugel ADD CONSTRAINT FK_Alugel_2
    FOREIGN KEY (FK_Pessoa_id_pessoa)
    REFERENCES Pessoa (id_pessoa)
    ON DELETE SET NULL ON UPDATE CASCADE;
 
ALTER TABLE Reside ADD CONSTRAINT FK_Reside_0
    FOREIGN KEY (FK_Pessoa_id_pessoa)
    REFERENCES Pessoa (id_pessoa)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE Reside ADD CONSTRAINT FK_Reside_1
    FOREIGN KEY (FK_Endereco_id_endereco)
    REFERENCES Endereco (id_endereco)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE Alocada ADD CONSTRAINT FK_Alocada_0
    FOREIGN KEY (FK_Base_id_base)
    REFERENCES Base (id_base)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE Alocada ADD CONSTRAINT FK_Alocada_1
    FOREIGN KEY (FK_Endereco_id_endereco)
    REFERENCES Endereco (id_endereco)
    ON DELETE RESTRICT ON UPDATE RESTRICT;