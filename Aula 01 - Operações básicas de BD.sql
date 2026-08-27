-- Criação da tabela
CREATE TABLE client (
	id INT IDENTITY(1,1),
	name VARCHAR(50) NOT NULL,
	document VARCHAR(11) NOT NULL,
	gender CHAR(1) NOT NULL,
	email VARCHAR(80) NOT NULL,
	phone VARCHAR(11) NULL,
	createdAt DATE DEFAULT GETDATE()
);

-- Adição de uma nova coluna com verificação de valores por meio da constraint CHECK
ALTER TABLE client ADD status CHAR(1);

ALTER TABLE client ADD CONSTRAINT  ck_client_status
CHECK (UPPER(status) IN ('A','I','B'));

-- Alteração de uma coluna existente
ALTER TABLE client 
ALTER COLUMN name VARCHAR(100) NOT NULL;

-- Validação da alteração na tabela
SELECT COLUMN_NAME, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH 
FROM INFORMATION_SCHEMA.COLUMNS 
WHERE TABLE_NAME = 'client' AND COLUMN_NAME = 'name';

-- Adição de constraint PRIMARY KEY
ALTER TABLE client
ADD CONSTRAINT pk_client PRIMARY KEY ( id );

-- Adicionar CHECK constraint
ALTER TABLE client
ADD CONSTRAINT ck_client_email CHECK (email LIKE '%@%.%');

-- Adicionar UNIQUE constraint
 ALTER TABLE client ADD CONSTRAINT un_document UNIQUE (document);

-- Consuta de dados da tabela
SELECT * FROM client WITH(NOLOCK);

-- Apagar todos os dados da tabela
TRUNCATE TABLE client;

-- Exclusão da tabela
DROP TABLE IF EXISTS client;
