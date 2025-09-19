CREATE TABLE perfil (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    nome_usuario VARCHAR(10) NOT NULL,
    senha VARCHAR(10) NOT NULL,
    email VARCHAR(100) NOT NULL,
    sexo TINYINT(1),
    profissão VARCHAR(255),
    onde_estudou VARCHAR(255),
    hobbies VARCHAR(255),
    gosto_musical VARCHAR(255)
);

CREATE TABLE usuario (
    id INT NOT NULL,
    nome VARCHAR(255) NOT NULL, 
    email VARCHAR(255) NOT NULL, 
    senha VARCHAR(10) NOT NULL
);

CREATE TABLE perfil (
    id_perfil INT NOT NULL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    sexo TINYINT(1),
    profissão VARCHAR(255),
    onde_estudou VARCHAR(255),
    hobbies VARCHAR(255),
    gosto_musical VARCHAR(255),
    FOREIGN KEY(id_perfil) references usuario(id)
);

/* escola */

CREATE TABLE aluno (
    nome VARCHAR(255) NOT NULL,
    sexo VARCHAR(20) NOT NULL,
    UNIQUE INDEX (nome, sexo),
    data_nascimento DATE NOT NULL,
    email VARCHAR(255) NOT NULL
);

CREATE TABLE livro (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    isbn BIGINT(20),
    titulo VARCHAR(255),
    nome_autor VARCHAR(255),
    prevo DOUBLE NOT NULL
);

INSERT INTO livro (titulo, nome_autor, isbn, preco) VALUES 
("Organização Estruturada de Computadores", "Tanenbaum", 123, 310.00),
("O Senhor dos Aneis", "J.R.R Tolkien", 123, 210.00),
("As Aventuras de Sherlock Holmes", "Sr. Arthur Conan Doyle", 123, 90.00),
("A Vida Intelectual", "Pe. Sertillanges", 123, 50.00);


CREATE TABLE usuario (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL, 
    email VARCHAR(255) NOT NULL, 
    senha VARCHAR(10) NOT NULL
);

CREATE TABLE perfil (
    id_perfil INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    sexo TINYINT(1),
    profissão VARCHAR(255),
    onde_estudou VARCHAR(255),
    hobbies VARCHAR(255),
    gosto_musical VARCHAR(255),
    FOREIGN KEY(id_perfil) references usuario(id)
);

INSERT INTO usuario (nome, email, senha) VALUES
("Mateus", "mateus@email.com", "123"),
("Fabiano", "fabiano@email.com", "123"),
("Danilo", "danilo@email.com", "123"),
("Pedro", "pedro@email.com", "123"),
("Lucas", "lucas@email.com", "123")

CREATE TABLE banco (
    id_banco INT NOT NULL PRIMARY KEY,
    nome VARCHAR(255),
    endereco VARCHAR(255)
);

CREATE TABLE conta (
    id_conta INT NOT NULL PRIMARY KEY,
    numero INT NOT NULL UNIQUE,
    saldo DECIMAL(14, 2),
    limite DECIMAL(14, 2),
    banco_id INT NOT NULL,
    FOREIGN KEY (banco_id) REFERENCES banco(id_banco)
);

/* Escola */

CREATE TABLE aluno_turma (
    aluno_id INT NOT NULL REFERENCES aluno(id),
    turma_id INT NOT NULL REFERENCES turma(id),
    PRIMARY KEY (aluno_id, turma_id)
);

/* Banco */

