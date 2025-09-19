CREATE DATABASE escola;

USE escola;

CREATE TABLE aluno (
    id_aluno INT NOT NULL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    sexo TINYINT(1) NOT NULL,
    data_nascimento DATE NOT NULL,
    UNIQUE (nome, sexo),
    email VARCHAR(100) NOT NULL
);

CREATE TABLE professor (
    id_professor INT NOT NULL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    sexo TINYINT(1) NOT NULL,
    UNIQUE (nome, sexo),
    rg VARCHAR(12) NOT NULL,
    data_nascimento DATE NOT NULL,
    endereco VARCHAR(100) NOT NULL,
    telefone VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    titulacao VARCHAR(100) NOT NULL
);

CREATE TABLE turma (
    id_turma INT NOT NULL PRIMARY KEY,
    id_professor INT NOT NULL,
    inicio DATETIME NOT NULL,
    fim DATETIME NOT NULL,
    duracao INT NOT NULL,
    quantidade_alunos INT NOT NULL,
    horario_aulas DATETIME NOT NULL,
    atividade VARCHAR(100) NOT NULL,
    observacao VARCHAR(255),
    FOREIGN KEY (id_professor)
        REFERENCES professor(id_professor)
        ON DELETE CASCADE
);

CREATE TABLE aluno_turma (
    id_aluno INT NOT NULL
        REFERENCES aluno(id_aluno)
        ON DELETE CASCADE,
    id_turma INT NOT NULL
        REFERENCES turma(id_turma)
        ON DELETE CASCADE,
    PRIMARY KEY (id_aluno, id_turma)
);
