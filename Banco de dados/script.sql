CREATE DATABASE keyboard_store;
use keyboard_store;

CREATE TABLE endereco(
    idEndereco INT NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (idEndereco),
    descricao VARCHAR(60) NOT NULL,
    cidade VARCHAR(60) NOT NULL,
    logradouro VARCHAR(60) NOT NULL,
    numero INT NOT NULL,
    bairro VARCHAR(60) NOT NULL,
    estado CHAR(2) NOT NULL,
    CEP int NOT NULL
);

CREATE TABLE sexo(
    idSexo INT NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (idSexo),
    descricao VARCHAR(60)
);

CREATE TABLE Usuario(
    idUsuario INT NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (idCliente),

    nome VARCHAR(50),
    CPF_CNPJ VARCHAR(14) UNIQUE,

    fk_idSexo INT NOT NULL,
    FOREIGN KEY (fk_idSexo) REFERENCES sexo(idSexo),

    data_nasc DATE,

    fk_idEndereco INT NOT NULL,
    FOREIGN KEY(fk_idEndereco) REFERENCES endereco(idEndereco),

    ddd VARCHAR(3),
    telefone VARCHAR(9)
);