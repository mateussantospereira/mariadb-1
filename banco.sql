CREATE DATABASE banco;

USE banco;

CREATE TABLE departamento (
    id_departamento INT NOT NULL PRIMARY KEY,
    descricao VARCHAR(100) NOT NULL,
    telefone VARCHAR(15) NOT NULL
);

CREATE TABLE funcionario (
    id_funcionario INT NOT NULL PRIMARY KEY,
    nome VARCHAR(100) NNOT NULL,
    id_departamento INT NOT NULL
        REFERENCES departamento(id_departamento),
    id_chefe REFERENCES funcionario(id_funcionario)
);

CREATE TABLE agencia (
    id_agencia INT NOT NULL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    endereco VARCHAR(100) NOT NULL,
    data_cadastro DATE NOT NULL AUTO_INCREMENT,
    id_funcionario INT NOT NULL
        REFERENCES funcionario(id_funcionario),
    status VARCHAR(100)
);

CREATE TABLE banco (
    id_banco INT NOT NULL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    endereco VARCHAR(100) NOT NULL
);

CREATE TABLE cliente (
    id_cliente INT NOT NULL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(20) NOT NULL,
    rg VARCHAR(12) NOT NULL,
    data_nascimento DATE NOT NULL,
    data_cadastro DATE NOT NULL AUTO_INCREMENT,
    endereco VARCHAR(100) NOT NULL,
    telefone VARCHAR(15) NOT NULL,
    status VARCHAR(100)
);

CREATE TABLE socio (
    id_socio INT NOT NULL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    data_cadastro DATE NOT NULL AUTO_INCREMENT
);

CREATE TABLE dependente (
    id_socio INT NOT NULL
    REFERENCES socio(id_socio),
    sequencia INT NOT NULL,
    PRIMARY KEY (id_socio, sequencia),
    nome VARCHAR(100) NOT NULL,
    data_cadastro DATE NOT NULL AUTO_INCREMENT
);

CREATE TABLE conta (
    id_conta INT NOT NULL PRIMARY KEY,
    id_agencia INT NOT NULL
    REFERENCES agencia(id_agencia),
    id_cliente INT NOT NULL
    REFERENCES cliente(id_cliente),
    id_banco INT NOT NULL
    REFERENCES banco(id_banco),
    id_funcionario INT NOT NULL
    REFERENCES funcionario(id_funcionario),
    numero VARCHAR(11) UNIQUE,
    saldo DECIMAL(14,2) NOT NULL,
    limite DECIMAL(14, 2) NOT NULL

);


