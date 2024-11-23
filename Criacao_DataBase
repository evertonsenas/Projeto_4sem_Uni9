-- Criação do database
CREATE DATABASE Projeto;

-- Comando para usar o data base criado
USE Projeto;
 
 -- Criação da tabela usuário
 CREATE TABLE Usuario (
    IdUsuario INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(50),
    Cpf VARCHAR(14),
    DtNasc DATE,
    DtAdm DATE,
    Cargo VARCHAR(25),
    Status VARCHAR(1)
);

-- Criação da tabela produto
CREATE TABLE Produto (
    IdProd INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(50),
    Descricao VARCHAR(50),
    Perecivel VARCHAR(1),
    SKU VARCHAR(10),
    Status VARCHAR(1),
    fk_Categoria_IdCateg INT,
    fk_Usuario_IdUsuario INT,
    fk_Fornecedor_IdForne INT,
    fk_Prod_Est_IdProdEst INT
);

-- Criando tabela Armazem
CREATE TABLE Armazem (
    IdArmazen INT AUTO_INCREMENT PRIMARY KEY,
    Rua VARCHAR(10),
    Setor VARCHAR(10),
    Quadra VARCHAR(10),
    PesoMax FLOAT,
    Status VARCHAR(1),
    fk_Prod_Est_IdProdEst INT
);

-- Criando tabela categoria
CREATE TABLE Categoria (
    IdCateg INT AUTO_INCREMENT PRIMARY KEY,
    Tipo VARCHAR(10)
);

-- Criando tabela fornecedor
CREATE TABLE Fornecedor (
    IdForne INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(10),
    CNPJ VARCHAR(18),
    DtEntrega DATE
);

-- Criando tabela Prod_Est com a finalidade de definir as relações de N para N entre as tabelas de Produto e Armazem
CREATE TABLE Prod_Est (
    IdProdEst INT AUTO_INCREMENT PRIMARY KEY,
    DtEntrada DATE,
    DtSaida DATE
);

-- Ativando a relação de FK entre produto e categoria 
ALTER TABLE Produto ADD CONSTRAINT FK_Produto_2
    FOREIGN KEY (fk_Categoria_IdCateg)
    REFERENCES Categoria (IdCateg)
    ON DELETE RESTRICT;

-- Ativando a relação de FK entre produto e usuario 
ALTER TABLE Produto ADD CONSTRAINT FK_Produto_3
    FOREIGN KEY (fk_Usuario_IdUsuario)
    REFERENCES Usuario (IdUsuario)
    ON DELETE RESTRICT;

-- Ativando a relação de FK entre produto e fornecedor 
ALTER TABLE Produto ADD CONSTRAINT FK_Produto_4
    FOREIGN KEY (fk_Fornecedor_IdForne)
    REFERENCES Fornecedor (IdForne)
    ON DELETE RESTRICT;

-- Ativando a relação de FK entre produto e a tabela prod_est 
ALTER TABLE Produto ADD CONSTRAINT FK_Produto_5
    FOREIGN KEY (fk_Prod_Est_IdProdEst)
    REFERENCES Prod_Est (IdProdEst)
    ON DELETE RESTRICT;

-- Ativando a relação de FK entre armazem e prod_est 
ALTER TABLE Armazem ADD CONSTRAINT FK_Armazem_2
    FOREIGN KEY (fk_Prod_Est_IdProdEst)
    REFERENCES Prod_Est (IdProdEst)
    ON DELETE RESTRICT;

-- Adicionando o status de check para definir como 'A' para ativo e 'I' para inativo 
ALTER TABLE Usuario
	ADD CONSTRAINT Status CHECK (Status IN ('A','I'));
 
-- Adicionando a coluna para definir a característica do produto de check para definir como 'S' para sim e 'N' para não 
ALTER TABLE Produto 
	ADD CONSTRAINT Perecivel CHECK (Perecivel IN ('S','N'));

-- Adicionando o status de check para definir como 'D' para disponível e 'I' para indisponível    
ALTER TABLE Armazem
	ADD CONSTRAINT Status_armazem CHECK (Status IN ('D','I'));

INSERT INTO Usuario (Nome, Cpf, DtNasc, DtAdm, Cargo, Status)   
VALUES('Everton','111.222.333.00','1995-03-10','2024-11-22','Administrador','A');

INSERT INTO Categoria (Tipo)
VALUES('Limpeza');

INSERT INTO Fornecedor (Nome,CNPJ,DtEntrega)
VALUES('Empresa 1','11.222.333.0001-44','2024-11-22');

INSERT INTO Prod_Est (DtEntrada,DtSaida)
VALUES('2024-11-22',NULL);

INSERT INTO Armazem (Rua, Setor, Quadra, PesoMax, Status, fk_Prod_Est_IdProdEst)
VALUES('A','B','C',1000,'D',1);

INSERT INTO Produto (Nome, Descricao, Perecivel, SKU, Status, fk_Categoria_IdCateg, fk_Usuario_IdUsuario, fk_Fornecedor_IdForne, fk_Prod_Est_IdProdEst)
VALUES('Detergente','Detergente','N','44H25','A',1,1,1,1);
