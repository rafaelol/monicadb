create database tdm;
use tdm;

CREATE TABLE editora (
    id              int(11)         NOT NULL AUTO_INCREMENT,
    nome            varchar(255),
    PRIMARY KEY (id)
);

CREATE TABLE publicacao (
    id              int(11)         NOT NULL AUTO_INCREMENT,
    nome            varchar(255),
    editora         int(11),
    emissao         datetime,
    PRIMARY KEY (id),
    FOREIGN KEY fk_editora (editora) REFERENCES editora(id)
);


CREATE TABLE historia (
    id              int(11)         NOT NULL AUTO_INCREMENT,
    titulo          varchar(255),
    resumo          longtext,
    num_paginas     int(11),
    PRIMARY KEY (id)
);


CREATE TABLE personagem (
    id              int(11)         NOT NULL AUTO_INCREMENT,
    nome            varchar(255),
    descricao       longtext,
    PRIMARY KEY (id)
);


CREATE TABLE funcionario (
    id              int(11)         NOT NULL AUTO_INCREMENT,
    nome            varchar(255),
    cargo           varchar(255),
    admissao        datetime,
    saida           datetime,
    PRIMARY KEY (id)
);

CREATE TABLE historia_funcionario (
    id              int(11)         NOT NULL AUTO_INCREMENT,
    historia        int(11),
    funcionario     int(11),
    PRIMARY KEY (id),
    FOREIGN KEY fk_historia (historia) REFERENCES historia(id),
    FOREIGN KEY fk_funcionario (funcionario) REFERENCES funcionario(id),   
);

CREATE TABLE historia_personagem (
    id              int(11)         NOT NULL AUTO_INCREMENT,
    historia        int(11),
    personagem      int(11),
    PRIMARY KEY (id),
    FOREIGN KEY fk_historia (historia) REFERENCES historia(id),
    FOREIGN KEY fk_personagem (personagem) REFERENCES personagem(id)
);

CREATE TABLE historia_publicacao (
    id              int(11)         NOT NULL AUTO_INCREMENT,
    historia        int(11),
    publicacao      int(11),
    PRIMARY KEY (id),
    FOREIGN KEY fk_historia (historia) REFERENCES historia(id),
    FOREIGN KEY fk_publicacao (publicacao) REFERENCES publicacao(id)    
);

