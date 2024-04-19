CREATE DATABASE FORTES;
USE FORTES;

CREATE TABLE IF NOT EXISTS PERFIS(
ID_PERFIL INT PRIMARY KEY,
IMAGEM INT,
COMENTARIOS VARCHAR(500),
USUARIOS_EMAIL INT NOT NULL,
USUARIOS_ID_USUARIOS VARCHAR(45) NOT NULL,
CONSTRAINT PERFIS_USUARIOS FOREIGN KEY (USUARIOS_EMAIL, USUARIOS_ID_USUARIO) REFERENCES USUARIOS(EMAIL, ID_USUARIO));

CREATE TABLE IF NOT EXISTS INSTITUICAO(
ID_INSTITUICAO INT PRIMARY KEY,
CNPJ CHAR(14) PRIMARY KEY,
NOME VARCHAR(45) NOT NULL,
RUA VARCHAR(45) NOT NULL,
BAIRRO VARCHAR(45) NOT NULL,
CIDADE VARCHAR(45) NOT NULL);

CREATE TABLE IF NOT EXISTS FUNCIONARIOS(
CPF CHAR(15) PRIMARY KEY,
ID_FUNCIONARIO VARCHAR(45),
DATA_NASCIMENTO INT NOT NULL,
NOME VARCHAR(45));

CREATE TABLE IF NOT EXISTS ARQUIVOS(
ID_ARQUIVOS INT PRIMARY KEY,
TAMANHO VARCHAR(10) NOT NULL,
NOME VARCHAR(45) NOT NULL,
PROJETOS VARCHAR(45),
CONSTRAINT INSTI_ARQ FOREIGN KEY (INSTITUICAO_ID_INSTITUICAO, INSTIUICAO_CNPJ) REFERENCES INSTIUICAO (ID_INSTITUICAO,CNPJ));






