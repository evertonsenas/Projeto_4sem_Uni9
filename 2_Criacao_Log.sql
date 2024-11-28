-- Criando tabela de triggers para registro dos eventos ocorridos dentro do banco    
CREATE TABLE LOG (
	ID INT AUTO_INCREMENT PRIMARY KEY,
	NOME_TABELA VARCHAR(50) NOT NULL,
    COLUNA VARCHAR(500) NOT NULL,
	OPERACAO VARCHAR(10) NOT NULL,
    VALOR_ATUAL VARCHAR(500) NOT NULL,
	VALOR_NOVO VARCHAR(500) NOT NULL
);

-- Adicionando as opções de registros para o tipo de operação realizada no banco
ALTER TABLE LOG	
	ADD CONSTRAINT Registros CHECK (OPERACAO IN ('INSERT','UPDATE','DELETE'));
